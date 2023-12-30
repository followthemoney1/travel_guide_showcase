import 'dart:async';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/payment.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/payment_repository.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';
import 'package:in_app_purchase_ios/store_kit_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
part 'payment_cubit.freezed.dart';

part 'payment_state.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  final HiveBoxConfigurator<User> _userHiveRepository;
  final PaymentRepository _paymentRepository;
  late Tour tour;
  String productIdSale = '';

  //bool isFirstBuy = false;
  // bool promoCodeIsValid = false;
  PromoCodeData? promoCodeData;

  PaymentCubit(
    this._userHiveRepository,
    this._paymentRepository,
  ) : super(_Initial());

  Future<void> buy({String? promoCode}) async {
    emit(_Loading());
    var withPromocode = promoCode != null && promoCodeData != null;
    final authorized = await _checkAuthorization();
    if (authorized) {
      var productId = '';
      switch (Platform.operatingSystem) {
        case ios:
          productId = withPromocode ? promoCodeData!.appleProductId : tour.appleProductId;
          break;
        case android:
          productId = withPromocode ? promoCodeData!.googleProductId : tour.googleProductId;
          break;
        default:
          productId = '';
      }
      if (withPromocode) {
        productIdSale = productId;
        var success = await usePromoCode(promoCode!);
        if (success) {
          await FBEvents.instance.logEvent(
            name: 'Purchase with promocode',
            parameters: {
              'tourId': tour.id,
              'tour name': tour.name,
              'productId': productId,
              'promocode': promoCode,
            },
          );
          await locator<AppsflyerSdk>().logEvent('Purchase with promocode', {
            'tourId': tour.id,
            'tour name': tour.name,
            'productId': productId,
            'promocode': promoCode,
          });
          await _paymentRepository.buyTourInAppleOrGoogleConsole(productId: productId);
        } else {
          emit(_Initial());
          emit(_PromoCodeError());
        }
      } else {
        await FBEvents.instance.logEvent(
          name: 'Purchase',
          parameters: {
            'tourId': tour.id,
            'tour name': tour.name,
            'productId': productId,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Purchase', {
          'tourId': tour.id,
          'tour name': tour.name,
          'productId': productId,
        });
        await _paymentRepository.buyTourInAppleOrGoogleConsole(productId: productId);
      }
    } else {
      emit(_NonAuthorized());
    }
  }

  Future<void> getForFree({required Tour tour, required String promoCode}) async {
    emit(_Loading());
    var success = await usePromoCode(promoCode);
    if (success) {
      final authorized = await _checkAuthorization();
      if (authorized /* && (/*isFirstBuy || */ ) */ && promoCodeData!.percentage == 100) {
        final response = await _paymentRepository.getForFree(tour);
        response.fold((err) => emit(_PostPayment(false)), (resp) => emit(_PostPayment(resp)));
        await FBEvents.instance.logEvent(
          name: 'Get the tour for free',
          parameters: {
            'tourId': tour.id,
            'tour name': tour.name,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Get the tour for free', {
          'tourId': tour.id,
          'tour name': tour.name,
        });
      } else {
        emit(_NonAuthorized());
      }
    } else {
      emit(_PromoCodeError());
    }
  }

  Future<void> promocodeChanged(String value) async {
    emit(_PromoCodeChanged(value));
  }

  Future<void> clearTransactionsIos() async {
    if (Platform.isIOS) {
      final transactions = await SKPaymentQueueWrapper().transactions();
      transactions.forEach((transaction) async {
        print('transaction finished ${transaction}');
        await SKPaymentQueueWrapper().finishTransaction(transaction);
      });
    }
  }

  void subscribeToPayments() {
    final purchaseUpdated = InAppPurchase.instance.purchaseStream;
    _subscription = purchaseUpdated.listen((purchases) async {
      var purchasesDetails = purchases;
      var purchaseDetails = purchasesDetails.first;
      if (purchaseDetails.status == PurchaseStatus.purchased) {
        print('PurchaseStatus.purchased');
        print('sendBuyInfoToTheServer');
        var success = await _paymentRepository.sendBuyInfoToTheServer(
          tour,
          productIdSale,
          purchaseDetails.verificationData.serverVerificationData,
        );
        if (success) {
          print('sendBuyInfoToTheServer: success');
          await InAppPurchase.instance.completePurchase(purchaseDetails);
        }
        emit(_PostPayment(success));
      } else if (purchaseDetails.status == PurchaseStatus.pending) {
        print('PurchaseStatus.pending');
        //Do nothing
      } else {
        //Only Error status left
        print('PurchaseStatus.error');
        final googlePlayPurchaseDetails = purchaseDetails as GooglePlayPurchaseDetails;
        if (googlePlayPurchaseDetails.billingClientPurchase.orderId.isNotEmpty) {
          await InAppPurchase.instance.completePurchase(purchaseDetails);
        }
        emit(_PostPayment(false));
      }
    }, onDone: () {
      _subscription.cancel();
    }, onError: (err, stackTrace) {
      emit(_PostPayment(false));
    });
  }

  ///First buy is for free
  Future<void> checkIfItsFirstBuy() async {
    //isFirstBuy = myInfo.fold((err) => false, (resp) => resp.isNextBuy);
    tryAgain();
  }

  Future<void> checkPromoCode(String promoCode) async {
    emit(_PromoCodeChecking());
    final response = await _paymentRepository.checkPromoCode(promoCode, tour.id!);
    await FBEvents.instance.logEvent(
      name: 'Checking promo code',
      parameters: {
        'tourId': tour.id,
        'tour name': tour.name,
        'promocode': promoCode,
      },
    );
    await locator<AppsflyerSdk>().logEvent('Checking promo code', {
      'tourId': tour.id,
      'tour name': tour.name,
      'promocode': promoCode,
    });
    emit(response.fold((err) => _PromoCodeError(), (result) {
      promoCodeData = result;
      return _PromoCodeSuccess();
    }));
  }

  Future<bool> usePromoCode(String promoCode) async {
    final response = await _paymentRepository.usePromoCode(promoCode, tour.id!);
    await FBEvents.instance.logEvent(
      name: 'Using promo code',
      parameters: {
        'tourId': tour.id,
        'tour name': tour.name,
        'promocode': promoCode,
      },
    );
    await locator<AppsflyerSdk>().logEvent('Using promo code', {
      'tourId': tour.id,
      'tour name': tour.name,
      'promocode': promoCode,
    });
    return response.fold((err) => false, (result) => true);
  }

  Future<bool> _checkAuthorization() async {
    final user = _userHiveRepository.get(0);
    return user != null;
  }

  void tryAgain() {
    emit(_Loading());
    emit(_Initial());
  }

  void dispose() {
    _subscription.cancel();
  }
}

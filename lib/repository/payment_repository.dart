import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/payment.dart';
import 'package:mapo_travel_guide/data/network/payment_api_client.dart';
import 'package:mapo_travel_guide/util/const.dart';

@singleton
class PaymentRepository {
  final PaymentApiClient _paymentApiClient;
  final HiveBoxConfigurator<Tour> _tourBoxManager;

  PaymentRepository(this._paymentApiClient, this._tourBoxManager);

  Future<bool> buyTourInAppleOrGoogleConsole({required String productId}) async {
    final available = await InAppPurchase.instance.isAvailable();
    if (!available) {
      // The store cannot be reached or accessed. Update the UI accordingly.
      return false;
    }

    var _kIds = <String>{productId};
    final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    if (response.notFoundIDs.isNotEmpty) {
      return false;
    }

    var products = response.productDetails;
    final purchaseParam = PurchaseParam(productDetails: products[0]);
    await InAppPurchase.instance.buyConsumable(purchaseParam: purchaseParam);
    // From here the purchase flow will be handled by the underlying storefront.
    // Updates will be delivered to the `InAppPurchaseConnection.instance.purchaseUpdatedStream`.
    return true;
  }

  Future<bool> sendBuyInfoToTheServer(
    Tour tour,
    String productIdSale,
    String tokenForVerification,
  ) async {
    if (tokenForVerification != null) {
      var platform = '';
      switch (Platform.operatingSystem) {
        case ios:
          platform = apple;
          break;
        case android:
          platform = google;
          break;
        default:
          platform = '';
      }
      final response = await _paymentApiClient.makePayment(
        paymentToken: tokenForVerification,
        tourId: tour.id.toString(),
        platform: platform,
        //It needs only for google
        productId: productIdSale.isEmpty ? tour.googleProductId : productIdSale,
      );
      return response.fold((err) {
        return false;
      }, (res) async {
        final paidTour = tour.copyWith.call(paid: true);
        await _tourBoxManager.put(tour.id, paidTour);
        return true;
      });
    } else {
      return false;
    }
  }

  Future<Either<ErrorResponse, PromoCodeData>> checkPromoCode(String promoCode, int tourId) {
    return _paymentApiClient.checkPromoCode(promoCode, tourId);
  }

  Future<Either<ErrorResponse, bool>> usePromoCode(String promoCode, int tourId) {
    return _paymentApiClient.usePromoCode(promoCode, tourId);
  }

  Future<Either<ErrorResponse, bool>> getForFree(Tour tour) async {
    final response = await _paymentApiClient.makePayment(
      tourId: tour.id.toString(),
      isFree: true,
    );
    final paidTour = tour.copyWith.call(paid: true);
    await _tourBoxManager.put(tour.id, paidTour);
    return response;
  }
}

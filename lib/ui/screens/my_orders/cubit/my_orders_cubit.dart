import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/my_orders_repository.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/in_app_review_service.dart';
import 'package:mapo_travel_guide/util/currencies.dart';

part 'my_orders_cubit.freezed.dart';
part 'my_orders_state.dart';

@singleton
class MyOrdersCubit extends Cubit<MyOrdersState> {
  final MyOrdersRepository _myOrdersRepository;
  final _inAppReviewService = locator<InAppReviewService>();
  List<Tour> activeTours = [];
  List<Tour> archiveTours = [];
  Map<String, String> prices = {};
  String? _contentLanguage;
  bool wentToAnotherScreen = false;

  MyOrdersCubit(this._myOrdersRepository) : super(_Initial()) {
    getOrdersData();
  }

  void checkLanguageChanging() async {
    var currentLanguage = await MLoc.getAppLanguage();
    if (currentLanguage != _contentLanguage) {
      await getOrdersData();
    }
  }

  Future<void> getOrdersData() async {
    emit(_MyOrdersLoading());
    var activeResponse = await _myOrdersRepository.getActiveOrders();
    var archiveResponse = await _myOrdersRepository.getArchiveOrders();
    if (activeResponse.isRight && archiveResponse.isRight) {
      activeResponse.fold((error) => null, (response) {
        activeTours = response.activeOrdersList;
      });
      archiveResponse.fold((error) => null, (response) {
        archiveTours = response.archiveOrdersList;
      });
      prices = await Currencies.prepareToursPrices(activeTours);
      prices.addAll(await Currencies.prepareToursPrices(archiveTours));

      emit(_Loaded(activeTours, archiveTours));
      await _inAppReviewService.showAppReviewDialog();
    } else {
      if (activeResponse.isLeft) {
        activeResponse.fold((error) => emit(_MyOrdersError(error)), (success) => null);
      } else {
        archiveResponse.fold((error) => emit(_MyOrdersError(error)), (success) => null);
      }
    }
  }
}

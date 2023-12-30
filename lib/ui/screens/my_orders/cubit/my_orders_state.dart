part of 'my_orders_cubit.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  factory MyOrdersState.initial() = _Initial;
  factory MyOrdersState.myOrdersLoading() = _MyOrdersLoading;
  factory MyOrdersState.myOrdersError(ErrorResponse message) = _MyOrdersError;
  factory MyOrdersState.loaded(List<Tour> activeOrdersList, List<Tour> archiveOrdersList) = _Loaded;
}

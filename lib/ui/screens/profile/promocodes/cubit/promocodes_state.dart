part of 'promocodes_cubit.dart';

@freezed
class PromocodesState with _$PromocodesState {
  factory PromocodesState.initial() = _Initial;
  factory PromocodesState.promocodesLoading() = _PromocodesLoading;
  factory PromocodesState.promocodesError(ErrorResponse message) = _PromocodesError;
  factory PromocodesState.promocodesLoaded(List<Tour> promocodes) = _PromocodesLoaded;
}

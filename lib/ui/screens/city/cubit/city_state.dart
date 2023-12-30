part of 'city_cubit.dart';

@freezed
class CityState with _$CityState {
  const factory CityState.initial() = _Initial;
  const factory CityState.loading() = _Loading;
  const factory CityState.error(ErrorResponse error) = _Error;
  const factory CityState.contentLoading() = _ContentLoading;
  const factory CityState.contentLoaded() = _ContentLoaded;
}

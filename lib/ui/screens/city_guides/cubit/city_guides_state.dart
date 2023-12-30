part of 'city_guides_cubit.dart';

@freezed
class CityGuidesState with _$CityGuidesState {
  const factory CityGuidesState.initial(List<Guide> guides) = _Initial;
  const factory CityGuidesState.loading() = _Loading;
  const factory CityGuidesState.error(ErrorResponse message) = _Error;
}

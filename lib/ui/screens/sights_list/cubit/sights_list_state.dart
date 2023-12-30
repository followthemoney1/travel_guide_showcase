part of 'sights_list_cubit.dart';

@freezed
class SightsListState with _$SightsListState {
  factory SightsListState.initial() = _Initial;
  factory SightsListState.loading() = _Loading;
  factory SightsListState.error(ErrorResponse message) = _Error;
  factory SightsListState.loaded(List<Sight> sightsList) = _Loaded;
}

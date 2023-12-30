part of 'sight_cubit.dart';

@freezed
class SightState with _$SightState {
  const factory SightState.loaded() = _Loaded;
  const factory SightState.loading() = _Loading;
  const factory SightState.error(ErrorResponse message) = _Error;
}

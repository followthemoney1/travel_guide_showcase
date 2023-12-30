part of 'main_screen_cubit.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.initial() = _Initial;

  const factory MainScreenState.locationNotDefined() = _LocationNotDefined;

  const factory MainScreenState.locationDeniedForever() = _LocationDeniedForever;

  const factory MainScreenState.locationPermission() = _LocationPermission;

  factory MainScreenState.loading() = _Loading;

  factory MainScreenState.error(ErrorResponse message) = _Error;

  const factory MainScreenState.locationDefined() = _LocationDefined;

  factory MainScreenState.proceedLogout() = _ProceedLogout;
}

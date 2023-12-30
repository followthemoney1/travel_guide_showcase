part of 'splash_screen_cubit.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.inital() = _Initial;
  const factory SplashScreenState.authorized() = _Authorized;
  const factory SplashScreenState.nonAuthorized() = _NonAuthorized;
  const factory SplashScreenState.onboarding() = _Onboarding;
}

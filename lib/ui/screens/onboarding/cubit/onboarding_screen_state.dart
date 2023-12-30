part of 'onboarding_screen_cubit.dart';

@freezed
class OnboardingScreenState with _$OnboardingScreenState {
  const factory OnboardingScreenState.inital() = _Initial;
  const factory OnboardingScreenState.lastTab() = _LastTab;
  const factory OnboardingScreenState.nextTab() = _NextTab;
}

part of 'profile_main_cubit.dart';

@freezed
class ProfileMainState with _$ProfileMainState {
  factory ProfileMainState.initial() = _Initial;
  factory ProfileMainState.loading() = _Loading;
  factory ProfileMainState.error(ErrorResponse err) = _Error;
  factory ProfileMainState.proceedLogout() = _ProceedLogout;
}

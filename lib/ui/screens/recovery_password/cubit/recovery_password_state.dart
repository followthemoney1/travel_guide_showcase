part of 'recovery_password_cubit.dart';

@freezed
class RecoveryPasswordState with _$RecoveryPasswordState {
  const factory RecoveryPasswordState.inital() = _Initial;
  const factory RecoveryPasswordState.loading() = _Loading;
  const factory RecoveryPasswordState.sentSms() = _SentSms;
  const factory RecoveryPasswordState.error(ErrorResponse message) = _Error;
}

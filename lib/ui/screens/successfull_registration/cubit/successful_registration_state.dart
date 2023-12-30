part of 'successful_registration_cubit.dart';

@freezed
class SuccessfulRegistrationState with _$SuccessfulRegistrationState {
  const factory SuccessfulRegistrationState.initial() = _Initial;

  const factory SuccessfulRegistrationState.error(ErrorResponse message) = _Error;

  const factory SuccessfulRegistrationState.success() = _Success;

  const factory SuccessfulRegistrationState.codeResentSuccess() = _CodeResentSuccess;

  const factory SuccessfulRegistrationState.loading() = _Loading;

  const factory SuccessfulRegistrationState.leftUntilResendingCode(Duration duration) = _LeftUntilResendingCode;

  const factory SuccessfulRegistrationState.codeCanResend() = _CodeCanResend;
}

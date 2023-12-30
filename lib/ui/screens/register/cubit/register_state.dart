part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState.initial() = _Initial;
  factory RegisterState.registerProcess() = _RegisterProcess;
  factory RegisterState.registerError(ErrorResponse message) = _RegisterError;
  factory RegisterState.registerSuccess() = _RegisterSuccess;
}

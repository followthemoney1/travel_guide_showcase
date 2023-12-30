part of 'authorization_cubit.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  factory AuthorizationState.initial() = _Initial;
  factory AuthorizationState.authProcess() = _AuthProcess;
  factory AuthorizationState.authError(ErrorResponse message) = _AuthError;
  factory AuthorizationState.authSuccess() = _AuthSuccess;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.freezed.dart';

part 'auth.g.dart';

@freezed
class SignInBody with _$SignInBody {
  factory SignInBody(
    String email,
    String password,
    String language,
  ) = _SignInBody;

  factory SignInBody.fromJson(Map<String, dynamic> json) => _$SignInBodyFromJson(json);
}

@freezed
class SignUpBody with _$SignUpBody {
  factory SignUpBody(
    String name,
    String surname,
    String email,
    String password,
    String role,
    String language,
  ) = _SignUpBody;

  factory SignUpBody.fromJson(Map<String, dynamic> json) => _$SignUpBodyFromJson(json);
}

@freezed
class SignInResponse with _$SignInResponse {
  factory SignInResponse(String accessToken, String refreshToken, String name, String email, [@Default('') String surname]) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);
}

@freezed
class SignUpResponse with _$SignUpResponse {
  factory SignUpResponse(String accessToken, String requestId) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);
}

@freezed
class VerifyAccountBody with _$VerifyAccountBody {
  factory VerifyAccountBody(String requestId, String code) = _VerifyAccountBody;

  factory VerifyAccountBody.fromJson(Map<String, dynamic> json) => _$VerifyAccountBodyFromJson(json);
}

@freezed
class ResendCodeResponse with _$ResendCodeResponse {
  factory ResendCodeResponse(String requestId) = _ResendCodeResponse;

  factory ResendCodeResponse.fromJson(Map<String, dynamic> json) => _$ResendCodeResponseFromJson(json);
}

@freezed
class ResetPasswordBody with _$ResetPasswordBody {
  factory ResetPasswordBody(
    String email,
    String language,
  ) = _ResetPasswordBody;

  factory ResetPasswordBody.fromJson(Map<String, dynamic> json) => _$ResetPasswordBodyFromJson(json);
}

@freezed
class LogoutBody with _$LogoutBody {
  factory LogoutBody(String token) = _LogoutBody;

  factory LogoutBody.fromJson(Map<String, dynamic> json) => _$LogoutBodyFromJson(json);
}

@freezed
class SignInWithAppleBody with _$SignInWithAppleBody {
  factory SignInWithAppleBody(
    String email,
    String name,
    String surname,
    String appleIndentifier,
    String language,
  ) = _SignInWithAppleBody;

  factory SignInWithAppleBody.fromJson(Map<String, dynamic> json) => _$SignInWithAppleBodyFromJson(json);
}

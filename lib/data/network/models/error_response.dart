import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response.freezed.dart';

part 'error_response.g.dart';

@freezed
class ErrorResponse implements _$ErrorResponse {
  const ErrorResponse._();

  const factory ErrorResponse(int code, String message) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

  String localizedMessage(BuildContext context) {
    switch (code) {
      // case 400:
      //   return message;
      //   break;
      // case 101:
      //   return 'User already exist';
      //   break;
      // case 102:
      //   return 'User not exist';
      //   break;
      // case 103:
      //   return 'Wrong credentials provided';
      //   break;
      // case 104:
      //   return 'User is not verified';
      //   break;
      default:
        return message;
    }
  }

  @override
  int get code => throw UnimplementedError();

  @SemanticsHintOverrides()
  $ErrorResponseCopyWith<ErrorResponse> get copyWith => throw UnimplementedError();

  @override
  String get message => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

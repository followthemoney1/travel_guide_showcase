// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
class _$ErrorResponseTearOff {
  const _$ErrorResponseTearOff();

  _ErrorResponse call(int code, String message) {
    return _ErrorResponse(
      code,
      message,
    );
  }

  ErrorResponse fromJson(Map<String, Object> json) {
    return ErrorResponse.fromJson(json);
  }
}

/// @nodoc
const $ErrorResponse = _$ErrorResponseTearOff();

/// @nodoc
mixin _$ErrorResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  final ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$ErrorResponseCopyWith(
          _ErrorResponse value, $Res Function(_ErrorResponse) then) =
      __$ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res>
    implements _$ErrorResponseCopyWith<$Res> {
  __$ErrorResponseCopyWithImpl(
      _ErrorResponse _value, $Res Function(_ErrorResponse) _then)
      : super(_value, (v) => _then(v as _ErrorResponse));

  @override
  _ErrorResponse get _value => super._value as _ErrorResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ErrorResponse(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse extends _ErrorResponse {
  const _$_ErrorResponse(this.code, this.message) : super._();

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorResponse(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith =>
      __$ErrorResponseCopyWithImpl<_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse extends ErrorResponse {
  const factory _ErrorResponse(int code, String message) = _$_ErrorResponse;
  const _ErrorResponse._() : super._();

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

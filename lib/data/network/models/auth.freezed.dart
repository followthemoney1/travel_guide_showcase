// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInBody _$SignInBodyFromJson(Map<String, dynamic> json) {
  return _SignInBody.fromJson(json);
}

/// @nodoc
class _$SignInBodyTearOff {
  const _$SignInBodyTearOff();

  _SignInBody call(String email, String password, String language) {
    return _SignInBody(
      email,
      password,
      language,
    );
  }

  SignInBody fromJson(Map<String, Object> json) {
    return SignInBody.fromJson(json);
  }
}

/// @nodoc
const $SignInBody = _$SignInBodyTearOff();

/// @nodoc
mixin _$SignInBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInBodyCopyWith<SignInBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInBodyCopyWith<$Res> {
  factory $SignInBodyCopyWith(
          SignInBody value, $Res Function(SignInBody) then) =
      _$SignInBodyCopyWithImpl<$Res>;
  $Res call({String email, String password, String language});
}

/// @nodoc
class _$SignInBodyCopyWithImpl<$Res> implements $SignInBodyCopyWith<$Res> {
  _$SignInBodyCopyWithImpl(this._value, this._then);

  final SignInBody _value;
  // ignore: unused_field
  final $Res Function(SignInBody) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInBodyCopyWith<$Res> implements $SignInBodyCopyWith<$Res> {
  factory _$SignInBodyCopyWith(
          _SignInBody value, $Res Function(_SignInBody) then) =
      __$SignInBodyCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String language});
}

/// @nodoc
class __$SignInBodyCopyWithImpl<$Res> extends _$SignInBodyCopyWithImpl<$Res>
    implements _$SignInBodyCopyWith<$Res> {
  __$SignInBodyCopyWithImpl(
      _SignInBody _value, $Res Function(_SignInBody) _then)
      : super(_value, (v) => _then(v as _SignInBody));

  @override
  _SignInBody get _value => super._value as _SignInBody;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? language = freezed,
  }) {
    return _then(_SignInBody(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInBody implements _SignInBody {
  _$_SignInBody(this.email, this.password, this.language);

  factory _$_SignInBody.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInBodyFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String language;

  @override
  String toString() {
    return 'SignInBody(email: $email, password: $password, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$SignInBodyCopyWith<_SignInBody> get copyWith =>
      __$SignInBodyCopyWithImpl<_SignInBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInBodyToJson(this);
  }
}

abstract class _SignInBody implements SignInBody {
  factory _SignInBody(String email, String password, String language) =
      _$_SignInBody;

  factory _SignInBody.fromJson(Map<String, dynamic> json) =
      _$_SignInBody.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInBodyCopyWith<_SignInBody> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpBody _$SignUpBodyFromJson(Map<String, dynamic> json) {
  return _SignUpBody.fromJson(json);
}

/// @nodoc
class _$SignUpBodyTearOff {
  const _$SignUpBodyTearOff();

  _SignUpBody call(String name, String surname, String email, String password,
      String role, String language) {
    return _SignUpBody(
      name,
      surname,
      email,
      password,
      role,
      language,
    );
  }

  SignUpBody fromJson(Map<String, Object> json) {
    return SignUpBody.fromJson(json);
  }
}

/// @nodoc
const $SignUpBody = _$SignUpBodyTearOff();

/// @nodoc
mixin _$SignUpBody {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpBodyCopyWith<SignUpBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpBodyCopyWith<$Res> {
  factory $SignUpBodyCopyWith(
          SignUpBody value, $Res Function(SignUpBody) then) =
      _$SignUpBodyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String surname,
      String email,
      String password,
      String role,
      String language});
}

/// @nodoc
class _$SignUpBodyCopyWithImpl<$Res> implements $SignUpBodyCopyWith<$Res> {
  _$SignUpBodyCopyWithImpl(this._value, this._then);

  final SignUpBody _value;
  // ignore: unused_field
  final $Res Function(SignUpBody) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpBodyCopyWith<$Res> implements $SignUpBodyCopyWith<$Res> {
  factory _$SignUpBodyCopyWith(
          _SignUpBody value, $Res Function(_SignUpBody) then) =
      __$SignUpBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String surname,
      String email,
      String password,
      String role,
      String language});
}

/// @nodoc
class __$SignUpBodyCopyWithImpl<$Res> extends _$SignUpBodyCopyWithImpl<$Res>
    implements _$SignUpBodyCopyWith<$Res> {
  __$SignUpBodyCopyWithImpl(
      _SignUpBody _value, $Res Function(_SignUpBody) _then)
      : super(_value, (v) => _then(v as _SignUpBody));

  @override
  _SignUpBody get _value => super._value as _SignUpBody;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? language = freezed,
  }) {
    return _then(_SignUpBody(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpBody implements _SignUpBody {
  _$_SignUpBody(this.name, this.surname, this.email, this.password, this.role,
      this.language);

  factory _$_SignUpBody.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpBodyFromJson(json);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String email;
  @override
  final String password;
  @override
  final String role;
  @override
  final String language;

  @override
  String toString() {
    return 'SignUpBody(name: $name, surname: $surname, email: $email, password: $password, role: $role, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$SignUpBodyCopyWith<_SignUpBody> get copyWith =>
      __$SignUpBodyCopyWithImpl<_SignUpBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpBodyToJson(this);
  }
}

abstract class _SignUpBody implements SignUpBody {
  factory _SignUpBody(String name, String surname, String email,
      String password, String role, String language) = _$_SignUpBody;

  factory _SignUpBody.fromJson(Map<String, dynamic> json) =
      _$_SignUpBody.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpBodyCopyWith<_SignUpBody> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
class _$SignInResponseTearOff {
  const _$SignInResponseTearOff();

  _SignInResponse call(
      String accessToken, String refreshToken, String name, String email,
      [String surname = '']) {
    return _SignInResponse(
      accessToken,
      refreshToken,
      name,
      email,
      surname,
    );
  }

  SignInResponse fromJson(Map<String, Object> json) {
    return SignInResponse.fromJson(json);
  }
}

/// @nodoc
const $SignInResponse = _$SignInResponseTearOff();

/// @nodoc
mixin _$SignInResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res>;
  $Res call(
      {String accessToken,
      String refreshToken,
      String name,
      String email,
      String surname});
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  final SignInResponse _value;
  // ignore: unused_field
  final $Res Function(SignInResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInResponseCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$SignInResponseCopyWith(
          _SignInResponse value, $Res Function(_SignInResponse) then) =
      __$SignInResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accessToken,
      String refreshToken,
      String name,
      String email,
      String surname});
}

/// @nodoc
class __$SignInResponseCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res>
    implements _$SignInResponseCopyWith<$Res> {
  __$SignInResponseCopyWithImpl(
      _SignInResponse _value, $Res Function(_SignInResponse) _then)
      : super(_value, (v) => _then(v as _SignInResponse));

  @override
  _SignInResponse get _value => super._value as _SignInResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? surname = freezed,
  }) {
    return _then(_SignInResponse(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponse implements _SignInResponse {
  _$_SignInResponse(this.accessToken, this.refreshToken, this.name, this.email,
      [this.surname = '']);

  factory _$_SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String name;
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String surname;

  @override
  String toString() {
    return 'SignInResponse(accessToken: $accessToken, refreshToken: $refreshToken, name: $name, email: $email, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality().equals(other.surname, surname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(surname);

  @JsonKey(ignore: true)
  @override
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      __$SignInResponseCopyWithImpl<_SignInResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseToJson(this);
  }
}

abstract class _SignInResponse implements SignInResponse {
  factory _SignInResponse(
      String accessToken, String refreshToken, String name, String email,
      [String surname]) = _$_SignInResponse;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$_SignInResponse.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
class _$SignUpResponseTearOff {
  const _$SignUpResponseTearOff();

  _SignUpResponse call(String accessToken, String requestId) {
    return _SignUpResponse(
      accessToken,
      requestId,
    );
  }

  SignUpResponse fromJson(Map<String, Object> json) {
    return SignUpResponse.fromJson(json);
  }
}

/// @nodoc
const $SignUpResponse = _$SignUpResponseTearOff();

/// @nodoc
mixin _$SignUpResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res>;
  $Res call({String accessToken, String requestId});
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  final SignUpResponse _value;
  // ignore: unused_field
  final $Res Function(SignUpResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpResponseCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(
          _SignUpResponse value, $Res Function(_SignUpResponse) then) =
      __$SignUpResponseCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String requestId});
}

/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(
      _SignUpResponse _value, $Res Function(_SignUpResponse) _then)
      : super(_value, (v) => _then(v as _SignUpResponse));

  @override
  _SignUpResponse get _value => super._value as _SignUpResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_SignUpResponse(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponse implements _SignUpResponse {
  _$_SignUpResponse(this.accessToken, this.requestId);

  factory _$_SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpResponseFromJson(json);

  @override
  final String accessToken;
  @override
  final String requestId;

  @override
  String toString() {
    return 'SignUpResponse(accessToken: $accessToken, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpResponseToJson(this);
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  factory _SignUpResponse(String accessToken, String requestId) =
      _$_SignUpResponse;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponse.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get requestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyAccountBody _$VerifyAccountBodyFromJson(Map<String, dynamic> json) {
  return _VerifyAccountBody.fromJson(json);
}

/// @nodoc
class _$VerifyAccountBodyTearOff {
  const _$VerifyAccountBodyTearOff();

  _VerifyAccountBody call(String requestId, String code) {
    return _VerifyAccountBody(
      requestId,
      code,
    );
  }

  VerifyAccountBody fromJson(Map<String, Object> json) {
    return VerifyAccountBody.fromJson(json);
  }
}

/// @nodoc
const $VerifyAccountBody = _$VerifyAccountBodyTearOff();

/// @nodoc
mixin _$VerifyAccountBody {
  String get requestId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyAccountBodyCopyWith<VerifyAccountBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountBodyCopyWith<$Res> {
  factory $VerifyAccountBodyCopyWith(
          VerifyAccountBody value, $Res Function(VerifyAccountBody) then) =
      _$VerifyAccountBodyCopyWithImpl<$Res>;
  $Res call({String requestId, String code});
}

/// @nodoc
class _$VerifyAccountBodyCopyWithImpl<$Res>
    implements $VerifyAccountBodyCopyWith<$Res> {
  _$VerifyAccountBodyCopyWithImpl(this._value, this._then);

  final VerifyAccountBody _value;
  // ignore: unused_field
  final $Res Function(VerifyAccountBody) _then;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerifyAccountBodyCopyWith<$Res>
    implements $VerifyAccountBodyCopyWith<$Res> {
  factory _$VerifyAccountBodyCopyWith(
          _VerifyAccountBody value, $Res Function(_VerifyAccountBody) then) =
      __$VerifyAccountBodyCopyWithImpl<$Res>;
  @override
  $Res call({String requestId, String code});
}

/// @nodoc
class __$VerifyAccountBodyCopyWithImpl<$Res>
    extends _$VerifyAccountBodyCopyWithImpl<$Res>
    implements _$VerifyAccountBodyCopyWith<$Res> {
  __$VerifyAccountBodyCopyWithImpl(
      _VerifyAccountBody _value, $Res Function(_VerifyAccountBody) _then)
      : super(_value, (v) => _then(v as _VerifyAccountBody));

  @override
  _VerifyAccountBody get _value => super._value as _VerifyAccountBody;

  @override
  $Res call({
    Object? requestId = freezed,
    Object? code = freezed,
  }) {
    return _then(_VerifyAccountBody(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyAccountBody implements _VerifyAccountBody {
  _$_VerifyAccountBody(this.requestId, this.code);

  factory _$_VerifyAccountBody.fromJson(Map<String, dynamic> json) =>
      _$_$_VerifyAccountBodyFromJson(json);

  @override
  final String requestId;
  @override
  final String code;

  @override
  String toString() {
    return 'VerifyAccountBody(requestId: $requestId, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyAccountBody &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$VerifyAccountBodyCopyWith<_VerifyAccountBody> get copyWith =>
      __$VerifyAccountBodyCopyWithImpl<_VerifyAccountBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VerifyAccountBodyToJson(this);
  }
}

abstract class _VerifyAccountBody implements VerifyAccountBody {
  factory _VerifyAccountBody(String requestId, String code) =
      _$_VerifyAccountBody;

  factory _VerifyAccountBody.fromJson(Map<String, dynamic> json) =
      _$_VerifyAccountBody.fromJson;

  @override
  String get requestId => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyAccountBodyCopyWith<_VerifyAccountBody> get copyWith =>
      throw _privateConstructorUsedError;
}

ResendCodeResponse _$ResendCodeResponseFromJson(Map<String, dynamic> json) {
  return _ResendCodeResponse.fromJson(json);
}

/// @nodoc
class _$ResendCodeResponseTearOff {
  const _$ResendCodeResponseTearOff();

  _ResendCodeResponse call(String requestId) {
    return _ResendCodeResponse(
      requestId,
    );
  }

  ResendCodeResponse fromJson(Map<String, Object> json) {
    return ResendCodeResponse.fromJson(json);
  }
}

/// @nodoc
const $ResendCodeResponse = _$ResendCodeResponseTearOff();

/// @nodoc
mixin _$ResendCodeResponse {
  String get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendCodeResponseCopyWith<ResendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendCodeResponseCopyWith<$Res> {
  factory $ResendCodeResponseCopyWith(
          ResendCodeResponse value, $Res Function(ResendCodeResponse) then) =
      _$ResendCodeResponseCopyWithImpl<$Res>;
  $Res call({String requestId});
}

/// @nodoc
class _$ResendCodeResponseCopyWithImpl<$Res>
    implements $ResendCodeResponseCopyWith<$Res> {
  _$ResendCodeResponseCopyWithImpl(this._value, this._then);

  final ResendCodeResponse _value;
  // ignore: unused_field
  final $Res Function(ResendCodeResponse) _then;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResendCodeResponseCopyWith<$Res>
    implements $ResendCodeResponseCopyWith<$Res> {
  factory _$ResendCodeResponseCopyWith(
          _ResendCodeResponse value, $Res Function(_ResendCodeResponse) then) =
      __$ResendCodeResponseCopyWithImpl<$Res>;
  @override
  $Res call({String requestId});
}

/// @nodoc
class __$ResendCodeResponseCopyWithImpl<$Res>
    extends _$ResendCodeResponseCopyWithImpl<$Res>
    implements _$ResendCodeResponseCopyWith<$Res> {
  __$ResendCodeResponseCopyWithImpl(
      _ResendCodeResponse _value, $Res Function(_ResendCodeResponse) _then)
      : super(_value, (v) => _then(v as _ResendCodeResponse));

  @override
  _ResendCodeResponse get _value => super._value as _ResendCodeResponse;

  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_ResendCodeResponse(
      requestId == freezed
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResendCodeResponse implements _ResendCodeResponse {
  _$_ResendCodeResponse(this.requestId);

  factory _$_ResendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ResendCodeResponseFromJson(json);

  @override
  final String requestId;

  @override
  String toString() {
    return 'ResendCodeResponse(requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResendCodeResponse &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestId);

  @JsonKey(ignore: true)
  @override
  _$ResendCodeResponseCopyWith<_ResendCodeResponse> get copyWith =>
      __$ResendCodeResponseCopyWithImpl<_ResendCodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResendCodeResponseToJson(this);
  }
}

abstract class _ResendCodeResponse implements ResendCodeResponse {
  factory _ResendCodeResponse(String requestId) = _$_ResendCodeResponse;

  factory _ResendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_ResendCodeResponse.fromJson;

  @override
  String get requestId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResendCodeResponseCopyWith<_ResendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ResetPasswordBody _$ResetPasswordBodyFromJson(Map<String, dynamic> json) {
  return _ResetPasswordBody.fromJson(json);
}

/// @nodoc
class _$ResetPasswordBodyTearOff {
  const _$ResetPasswordBodyTearOff();

  _ResetPasswordBody call(String email, String language) {
    return _ResetPasswordBody(
      email,
      language,
    );
  }

  ResetPasswordBody fromJson(Map<String, Object> json) {
    return ResetPasswordBody.fromJson(json);
  }
}

/// @nodoc
const $ResetPasswordBody = _$ResetPasswordBodyTearOff();

/// @nodoc
mixin _$ResetPasswordBody {
  String get email => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordBodyCopyWith<ResetPasswordBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordBodyCopyWith<$Res> {
  factory $ResetPasswordBodyCopyWith(
          ResetPasswordBody value, $Res Function(ResetPasswordBody) then) =
      _$ResetPasswordBodyCopyWithImpl<$Res>;
  $Res call({String email, String language});
}

/// @nodoc
class _$ResetPasswordBodyCopyWithImpl<$Res>
    implements $ResetPasswordBodyCopyWith<$Res> {
  _$ResetPasswordBodyCopyWithImpl(this._value, this._then);

  final ResetPasswordBody _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordBody) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordBodyCopyWith<$Res>
    implements $ResetPasswordBodyCopyWith<$Res> {
  factory _$ResetPasswordBodyCopyWith(
          _ResetPasswordBody value, $Res Function(_ResetPasswordBody) then) =
      __$ResetPasswordBodyCopyWithImpl<$Res>;
  @override
  $Res call({String email, String language});
}

/// @nodoc
class __$ResetPasswordBodyCopyWithImpl<$Res>
    extends _$ResetPasswordBodyCopyWithImpl<$Res>
    implements _$ResetPasswordBodyCopyWith<$Res> {
  __$ResetPasswordBodyCopyWithImpl(
      _ResetPasswordBody _value, $Res Function(_ResetPasswordBody) _then)
      : super(_value, (v) => _then(v as _ResetPasswordBody));

  @override
  _ResetPasswordBody get _value => super._value as _ResetPasswordBody;

  @override
  $Res call({
    Object? email = freezed,
    Object? language = freezed,
  }) {
    return _then(_ResetPasswordBody(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPasswordBody implements _ResetPasswordBody {
  _$_ResetPasswordBody(this.email, this.language);

  factory _$_ResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$_$_ResetPasswordBodyFromJson(json);

  @override
  final String email;
  @override
  final String language;

  @override
  String toString() {
    return 'ResetPasswordBody(email: $email, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordBodyCopyWith<_ResetPasswordBody> get copyWith =>
      __$ResetPasswordBodyCopyWithImpl<_ResetPasswordBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResetPasswordBodyToJson(this);
  }
}

abstract class _ResetPasswordBody implements ResetPasswordBody {
  factory _ResetPasswordBody(String email, String language) =
      _$_ResetPasswordBody;

  factory _ResetPasswordBody.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordBody.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordBodyCopyWith<_ResetPasswordBody> get copyWith =>
      throw _privateConstructorUsedError;
}

LogoutBody _$LogoutBodyFromJson(Map<String, dynamic> json) {
  return _LogoutBody.fromJson(json);
}

/// @nodoc
class _$LogoutBodyTearOff {
  const _$LogoutBodyTearOff();

  _LogoutBody call(String token) {
    return _LogoutBody(
      token,
    );
  }

  LogoutBody fromJson(Map<String, Object> json) {
    return LogoutBody.fromJson(json);
  }
}

/// @nodoc
const $LogoutBody = _$LogoutBodyTearOff();

/// @nodoc
mixin _$LogoutBody {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutBodyCopyWith<LogoutBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutBodyCopyWith<$Res> {
  factory $LogoutBodyCopyWith(
          LogoutBody value, $Res Function(LogoutBody) then) =
      _$LogoutBodyCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$LogoutBodyCopyWithImpl<$Res> implements $LogoutBodyCopyWith<$Res> {
  _$LogoutBodyCopyWithImpl(this._value, this._then);

  final LogoutBody _value;
  // ignore: unused_field
  final $Res Function(LogoutBody) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LogoutBodyCopyWith<$Res> implements $LogoutBodyCopyWith<$Res> {
  factory _$LogoutBodyCopyWith(
          _LogoutBody value, $Res Function(_LogoutBody) then) =
      __$LogoutBodyCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$LogoutBodyCopyWithImpl<$Res> extends _$LogoutBodyCopyWithImpl<$Res>
    implements _$LogoutBodyCopyWith<$Res> {
  __$LogoutBodyCopyWithImpl(
      _LogoutBody _value, $Res Function(_LogoutBody) _then)
      : super(_value, (v) => _then(v as _LogoutBody));

  @override
  _LogoutBody get _value => super._value as _LogoutBody;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_LogoutBody(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogoutBody implements _LogoutBody {
  _$_LogoutBody(this.token);

  factory _$_LogoutBody.fromJson(Map<String, dynamic> json) =>
      _$_$_LogoutBodyFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'LogoutBody(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogoutBody &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$LogoutBodyCopyWith<_LogoutBody> get copyWith =>
      __$LogoutBodyCopyWithImpl<_LogoutBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogoutBodyToJson(this);
  }
}

abstract class _LogoutBody implements LogoutBody {
  factory _LogoutBody(String token) = _$_LogoutBody;

  factory _LogoutBody.fromJson(Map<String, dynamic> json) =
      _$_LogoutBody.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogoutBodyCopyWith<_LogoutBody> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInWithAppleBody _$SignInWithAppleBodyFromJson(Map<String, dynamic> json) {
  return _SignInWithAppleBody.fromJson(json);
}

/// @nodoc
class _$SignInWithAppleBodyTearOff {
  const _$SignInWithAppleBodyTearOff();

  _SignInWithAppleBody call(String email, String name, String surname,
      String appleIndentifier, String language) {
    return _SignInWithAppleBody(
      email,
      name,
      surname,
      appleIndentifier,
      language,
    );
  }

  SignInWithAppleBody fromJson(Map<String, Object> json) {
    return SignInWithAppleBody.fromJson(json);
  }
}

/// @nodoc
const $SignInWithAppleBody = _$SignInWithAppleBodyTearOff();

/// @nodoc
mixin _$SignInWithAppleBody {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get appleIndentifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithAppleBodyCopyWith<SignInWithAppleBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithAppleBodyCopyWith<$Res> {
  factory $SignInWithAppleBodyCopyWith(
          SignInWithAppleBody value, $Res Function(SignInWithAppleBody) then) =
      _$SignInWithAppleBodyCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String name,
      String surname,
      String appleIndentifier,
      String language});
}

/// @nodoc
class _$SignInWithAppleBodyCopyWithImpl<$Res>
    implements $SignInWithAppleBodyCopyWith<$Res> {
  _$SignInWithAppleBodyCopyWithImpl(this._value, this._then);

  final SignInWithAppleBody _value;
  // ignore: unused_field
  final $Res Function(SignInWithAppleBody) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? appleIndentifier = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      appleIndentifier: appleIndentifier == freezed
          ? _value.appleIndentifier
          : appleIndentifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInWithAppleBodyCopyWith<$Res>
    implements $SignInWithAppleBodyCopyWith<$Res> {
  factory _$SignInWithAppleBodyCopyWith(_SignInWithAppleBody value,
          $Res Function(_SignInWithAppleBody) then) =
      __$SignInWithAppleBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String name,
      String surname,
      String appleIndentifier,
      String language});
}

/// @nodoc
class __$SignInWithAppleBodyCopyWithImpl<$Res>
    extends _$SignInWithAppleBodyCopyWithImpl<$Res>
    implements _$SignInWithAppleBodyCopyWith<$Res> {
  __$SignInWithAppleBodyCopyWithImpl(
      _SignInWithAppleBody _value, $Res Function(_SignInWithAppleBody) _then)
      : super(_value, (v) => _then(v as _SignInWithAppleBody));

  @override
  _SignInWithAppleBody get _value => super._value as _SignInWithAppleBody;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? appleIndentifier = freezed,
    Object? language = freezed,
  }) {
    return _then(_SignInWithAppleBody(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      appleIndentifier == freezed
          ? _value.appleIndentifier
          : appleIndentifier // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInWithAppleBody implements _SignInWithAppleBody {
  _$_SignInWithAppleBody(this.email, this.name, this.surname,
      this.appleIndentifier, this.language);

  factory _$_SignInWithAppleBody.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInWithAppleBodyFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String appleIndentifier;
  @override
  final String language;

  @override
  String toString() {
    return 'SignInWithAppleBody(email: $email, name: $name, surname: $surname, appleIndentifier: $appleIndentifier, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithAppleBody &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.appleIndentifier, appleIndentifier) ||
                const DeepCollectionEquality()
                    .equals(other.appleIndentifier, appleIndentifier)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(appleIndentifier) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$SignInWithAppleBodyCopyWith<_SignInWithAppleBody> get copyWith =>
      __$SignInWithAppleBodyCopyWithImpl<_SignInWithAppleBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInWithAppleBodyToJson(this);
  }
}

abstract class _SignInWithAppleBody implements SignInWithAppleBody {
  factory _SignInWithAppleBody(String email, String name, String surname,
      String appleIndentifier, String language) = _$_SignInWithAppleBody;

  factory _SignInWithAppleBody.fromJson(Map<String, dynamic> json) =
      _$_SignInWithAppleBody.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get appleIndentifier => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInWithAppleBodyCopyWith<_SignInWithAppleBody> get copyWith =>
      throw _privateConstructorUsedError;
}

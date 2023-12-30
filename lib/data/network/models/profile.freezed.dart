// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritesResponse _$FavoritesResponseFromJson(Map<String, dynamic> json) {
  return _FavoritesResponse.fromJson(json);
}

/// @nodoc
class _$FavoritesResponseTearOff {
  const _$FavoritesResponseTearOff();

  _FavoritesResponse call({@HiveField(0) List<Tour> favoriteTours = const []}) {
    return _FavoritesResponse(
      favoriteTours: favoriteTours,
    );
  }

  FavoritesResponse fromJson(Map<String, Object> json) {
    return FavoritesResponse.fromJson(json);
  }
}

/// @nodoc
const $FavoritesResponse = _$FavoritesResponseTearOff();

/// @nodoc
mixin _$FavoritesResponse {
  @HiveField(0)
  List<Tour> get favoriteTours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesResponseCopyWith<FavoritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesResponseCopyWith<$Res> {
  factory $FavoritesResponseCopyWith(
          FavoritesResponse value, $Res Function(FavoritesResponse) then) =
      _$FavoritesResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tour> favoriteTours});
}

/// @nodoc
class _$FavoritesResponseCopyWithImpl<$Res>
    implements $FavoritesResponseCopyWith<$Res> {
  _$FavoritesResponseCopyWithImpl(this._value, this._then);

  final FavoritesResponse _value;
  // ignore: unused_field
  final $Res Function(FavoritesResponse) _then;

  @override
  $Res call({
    Object? favoriteTours = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteTours: favoriteTours == freezed
          ? _value.favoriteTours
          : favoriteTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$FavoritesResponseCopyWith<$Res>
    implements $FavoritesResponseCopyWith<$Res> {
  factory _$FavoritesResponseCopyWith(
          _FavoritesResponse value, $Res Function(_FavoritesResponse) then) =
      __$FavoritesResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tour> favoriteTours});
}

/// @nodoc
class __$FavoritesResponseCopyWithImpl<$Res>
    extends _$FavoritesResponseCopyWithImpl<$Res>
    implements _$FavoritesResponseCopyWith<$Res> {
  __$FavoritesResponseCopyWithImpl(
      _FavoritesResponse _value, $Res Function(_FavoritesResponse) _then)
      : super(_value, (v) => _then(v as _FavoritesResponse));

  @override
  _FavoritesResponse get _value => super._value as _FavoritesResponse;

  @override
  $Res call({
    Object? favoriteTours = freezed,
  }) {
    return _then(_FavoritesResponse(
      favoriteTours: favoriteTours == freezed
          ? _value.favoriteTours
          : favoriteTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.favorites)
class _$_FavoritesResponse implements _FavoritesResponse {
  _$_FavoritesResponse({@HiveField(0) this.favoriteTours = const []});

  factory _$_FavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FavoritesResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Tour> favoriteTours;

  @override
  String toString() {
    return 'FavoritesResponse(favoriteTours: $favoriteTours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritesResponse &&
            (identical(other.favoriteTours, favoriteTours) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteTours, favoriteTours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favoriteTours);

  @JsonKey(ignore: true)
  @override
  _$FavoritesResponseCopyWith<_FavoritesResponse> get copyWith =>
      __$FavoritesResponseCopyWithImpl<_FavoritesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavoritesResponseToJson(this);
  }
}

abstract class _FavoritesResponse implements FavoritesResponse {
  factory _FavoritesResponse({@HiveField(0) List<Tour> favoriteTours}) =
      _$_FavoritesResponse;

  factory _FavoritesResponse.fromJson(Map<String, dynamic> json) =
      _$_FavoritesResponse.fromJson;

  @override
  @HiveField(0)
  List<Tour> get favoriteTours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoritesResponseCopyWith<_FavoritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPromocodesResponse _$UserPromocodesResponseFromJson(
    Map<String, dynamic> json) {
  return _UserPromocodesResponse.fromJson(json);
}

/// @nodoc
class _$UserPromocodesResponseTearOff {
  const _$UserPromocodesResponseTearOff();

  _UserPromocodesResponse call(
      {@HiveField(0) List<Tour> promoTours = const []}) {
    return _UserPromocodesResponse(
      promoTours: promoTours,
    );
  }

  UserPromocodesResponse fromJson(Map<String, Object> json) {
    return UserPromocodesResponse.fromJson(json);
  }
}

/// @nodoc
const $UserPromocodesResponse = _$UserPromocodesResponseTearOff();

/// @nodoc
mixin _$UserPromocodesResponse {
  @HiveField(0)
  List<Tour> get promoTours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPromocodesResponseCopyWith<UserPromocodesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPromocodesResponseCopyWith<$Res> {
  factory $UserPromocodesResponseCopyWith(UserPromocodesResponse value,
          $Res Function(UserPromocodesResponse) then) =
      _$UserPromocodesResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tour> promoTours});
}

/// @nodoc
class _$UserPromocodesResponseCopyWithImpl<$Res>
    implements $UserPromocodesResponseCopyWith<$Res> {
  _$UserPromocodesResponseCopyWithImpl(this._value, this._then);

  final UserPromocodesResponse _value;
  // ignore: unused_field
  final $Res Function(UserPromocodesResponse) _then;

  @override
  $Res call({
    Object? promoTours = freezed,
  }) {
    return _then(_value.copyWith(
      promoTours: promoTours == freezed
          ? _value.promoTours
          : promoTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$UserPromocodesResponseCopyWith<$Res>
    implements $UserPromocodesResponseCopyWith<$Res> {
  factory _$UserPromocodesResponseCopyWith(_UserPromocodesResponse value,
          $Res Function(_UserPromocodesResponse) then) =
      __$UserPromocodesResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tour> promoTours});
}

/// @nodoc
class __$UserPromocodesResponseCopyWithImpl<$Res>
    extends _$UserPromocodesResponseCopyWithImpl<$Res>
    implements _$UserPromocodesResponseCopyWith<$Res> {
  __$UserPromocodesResponseCopyWithImpl(_UserPromocodesResponse _value,
      $Res Function(_UserPromocodesResponse) _then)
      : super(_value, (v) => _then(v as _UserPromocodesResponse));

  @override
  _UserPromocodesResponse get _value => super._value as _UserPromocodesResponse;

  @override
  $Res call({
    Object? promoTours = freezed,
  }) {
    return _then(_UserPromocodesResponse(
      promoTours: promoTours == freezed
          ? _value.promoTours
          : promoTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.userPromocodes)
class _$_UserPromocodesResponse implements _UserPromocodesResponse {
  _$_UserPromocodesResponse({@HiveField(0) this.promoTours = const []});

  factory _$_UserPromocodesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserPromocodesResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Tour> promoTours;

  @override
  String toString() {
    return 'UserPromocodesResponse(promoTours: $promoTours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPromocodesResponse &&
            (identical(other.promoTours, promoTours) ||
                const DeepCollectionEquality()
                    .equals(other.promoTours, promoTours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(promoTours);

  @JsonKey(ignore: true)
  @override
  _$UserPromocodesResponseCopyWith<_UserPromocodesResponse> get copyWith =>
      __$UserPromocodesResponseCopyWithImpl<_UserPromocodesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserPromocodesResponseToJson(this);
  }
}

abstract class _UserPromocodesResponse implements UserPromocodesResponse {
  factory _UserPromocodesResponse({@HiveField(0) List<Tour> promoTours}) =
      _$_UserPromocodesResponse;

  factory _UserPromocodesResponse.fromJson(Map<String, dynamic> json) =
      _$_UserPromocodesResponse.fromJson;

  @override
  @HiveField(0)
  List<Tour> get promoTours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserPromocodesResponseCopyWith<_UserPromocodesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

EditProfileBody _$EditProfileBodyFromJson(Map<String, dynamic> json) {
  return _EditProfileBody.fromJson(json);
}

/// @nodoc
class _$EditProfileBodyTearOff {
  const _$EditProfileBodyTearOff();

  _EditProfileBody call(
      {String name = '',
      String surname = '',
      String email = '',
      String language = '',
      String hash = '',
      String oldPassword = '',
      String confirmedPassword = ''}) {
    return _EditProfileBody(
      name: name,
      surname: surname,
      email: email,
      language: language,
      hash: hash,
      oldPassword: oldPassword,
      confirmedPassword: confirmedPassword,
    );
  }

  EditProfileBody fromJson(Map<String, Object> json) {
    return EditProfileBody.fromJson(json);
  }
}

/// @nodoc
const $EditProfileBody = _$EditProfileBodyTearOff();

/// @nodoc
mixin _$EditProfileBody {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get confirmedPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileBodyCopyWith<EditProfileBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileBodyCopyWith<$Res> {
  factory $EditProfileBodyCopyWith(
          EditProfileBody value, $Res Function(EditProfileBody) then) =
      _$EditProfileBodyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String surname,
      String email,
      String language,
      String hash,
      String oldPassword,
      String confirmedPassword});
}

/// @nodoc
class _$EditProfileBodyCopyWithImpl<$Res>
    implements $EditProfileBodyCopyWith<$Res> {
  _$EditProfileBodyCopyWithImpl(this._value, this._then);

  final EditProfileBody _value;
  // ignore: unused_field
  final $Res Function(EditProfileBody) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? language = freezed,
    Object? hash = freezed,
    Object? oldPassword = freezed,
    Object? confirmedPassword = freezed,
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileBodyCopyWith<$Res>
    implements $EditProfileBodyCopyWith<$Res> {
  factory _$EditProfileBodyCopyWith(
          _EditProfileBody value, $Res Function(_EditProfileBody) then) =
      __$EditProfileBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String surname,
      String email,
      String language,
      String hash,
      String oldPassword,
      String confirmedPassword});
}

/// @nodoc
class __$EditProfileBodyCopyWithImpl<$Res>
    extends _$EditProfileBodyCopyWithImpl<$Res>
    implements _$EditProfileBodyCopyWith<$Res> {
  __$EditProfileBodyCopyWithImpl(
      _EditProfileBody _value, $Res Function(_EditProfileBody) _then)
      : super(_value, (v) => _then(v as _EditProfileBody));

  @override
  _EditProfileBody get _value => super._value as _EditProfileBody;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? language = freezed,
    Object? hash = freezed,
    Object? oldPassword = freezed,
    Object? confirmedPassword = freezed,
  }) {
    return _then(_EditProfileBody(
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
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmedPassword: confirmedPassword == freezed
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileBody implements _EditProfileBody {
  _$_EditProfileBody(
      {this.name = '',
      this.surname = '',
      this.email = '',
      this.language = '',
      this.hash = '',
      this.oldPassword = '',
      this.confirmedPassword = ''});

  factory _$_EditProfileBody.fromJson(Map<String, dynamic> json) =>
      _$_$_EditProfileBodyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String surname;
  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String language;
  @JsonKey(defaultValue: '')
  @override
  final String hash;
  @JsonKey(defaultValue: '')
  @override
  final String oldPassword;
  @JsonKey(defaultValue: '')
  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'EditProfileBody(name: $name, surname: $surname, email: $email, language: $language, hash: $hash, oldPassword: $oldPassword, confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileBody &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmedPassword, confirmedPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(confirmedPassword);

  @JsonKey(ignore: true)
  @override
  _$EditProfileBodyCopyWith<_EditProfileBody> get copyWith =>
      __$EditProfileBodyCopyWithImpl<_EditProfileBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EditProfileBodyToJson(this);
  }
}

abstract class _EditProfileBody implements EditProfileBody {
  factory _EditProfileBody(
      {String name,
      String surname,
      String email,
      String language,
      String hash,
      String oldPassword,
      String confirmedPassword}) = _$_EditProfileBody;

  factory _EditProfileBody.fromJson(Map<String, dynamic> json) =
      _$_EditProfileBody.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get surname => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  String get oldPassword => throw _privateConstructorUsedError;
  @override
  String get confirmedPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileBodyCopyWith<_EditProfileBody> get copyWith =>
      throw _privateConstructorUsedError;
}

EditProfileResponse _$EditProfileResponseFromJson(Map<String, dynamic> json) {
  return _EditProfileResponse.fromJson(json);
}

/// @nodoc
class _$EditProfileResponseTearOff {
  const _$EditProfileResponseTearOff();

  _EditProfileResponse call({String accessToken = ''}) {
    return _EditProfileResponse(
      accessToken: accessToken,
    );
  }

  EditProfileResponse fromJson(Map<String, Object> json) {
    return EditProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $EditProfileResponse = _$EditProfileResponseTearOff();

/// @nodoc
mixin _$EditProfileResponse {
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileResponseCopyWith<EditProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileResponseCopyWith<$Res> {
  factory $EditProfileResponseCopyWith(
          EditProfileResponse value, $Res Function(EditProfileResponse) then) =
      _$EditProfileResponseCopyWithImpl<$Res>;
  $Res call({String accessToken});
}

/// @nodoc
class _$EditProfileResponseCopyWithImpl<$Res>
    implements $EditProfileResponseCopyWith<$Res> {
  _$EditProfileResponseCopyWithImpl(this._value, this._then);

  final EditProfileResponse _value;
  // ignore: unused_field
  final $Res Function(EditProfileResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileResponseCopyWith<$Res>
    implements $EditProfileResponseCopyWith<$Res> {
  factory _$EditProfileResponseCopyWith(_EditProfileResponse value,
          $Res Function(_EditProfileResponse) then) =
      __$EditProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken});
}

/// @nodoc
class __$EditProfileResponseCopyWithImpl<$Res>
    extends _$EditProfileResponseCopyWithImpl<$Res>
    implements _$EditProfileResponseCopyWith<$Res> {
  __$EditProfileResponseCopyWithImpl(
      _EditProfileResponse _value, $Res Function(_EditProfileResponse) _then)
      : super(_value, (v) => _then(v as _EditProfileResponse));

  @override
  _EditProfileResponse get _value => super._value as _EditProfileResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
  }) {
    return _then(_EditProfileResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileResponse implements _EditProfileResponse {
  _$_EditProfileResponse({this.accessToken = ''});

  factory _$_EditProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EditProfileResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String accessToken;

  @override
  String toString() {
    return 'EditProfileResponse(accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accessToken);

  @JsonKey(ignore: true)
  @override
  _$EditProfileResponseCopyWith<_EditProfileResponse> get copyWith =>
      __$EditProfileResponseCopyWithImpl<_EditProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EditProfileResponseToJson(this);
  }
}

abstract class _EditProfileResponse implements EditProfileResponse {
  factory _EditProfileResponse({String accessToken}) = _$_EditProfileResponse;

  factory _EditProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_EditProfileResponse.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileResponseCopyWith<_EditProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

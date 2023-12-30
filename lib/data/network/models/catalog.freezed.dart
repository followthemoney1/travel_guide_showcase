// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCountriesBody _$GetCountriesBodyFromJson(Map<String, dynamic> json) {
  return _GetCountriesBody.fromJson(json);
}

/// @nodoc
class _$GetCountriesBodyTearOff {
  const _$GetCountriesBodyTearOff();

  _GetCountriesBody call(String language) {
    return _GetCountriesBody(
      language,
    );
  }

  GetCountriesBody fromJson(Map<String, Object> json) {
    return GetCountriesBody.fromJson(json);
  }
}

/// @nodoc
const $GetCountriesBody = _$GetCountriesBodyTearOff();

/// @nodoc
mixin _$GetCountriesBody {
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCountriesBodyCopyWith<GetCountriesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCountriesBodyCopyWith<$Res> {
  factory $GetCountriesBodyCopyWith(
          GetCountriesBody value, $Res Function(GetCountriesBody) then) =
      _$GetCountriesBodyCopyWithImpl<$Res>;
  $Res call({String language});
}

/// @nodoc
class _$GetCountriesBodyCopyWithImpl<$Res>
    implements $GetCountriesBodyCopyWith<$Res> {
  _$GetCountriesBodyCopyWithImpl(this._value, this._then);

  final GetCountriesBody _value;
  // ignore: unused_field
  final $Res Function(GetCountriesBody) _then;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetCountriesBodyCopyWith<$Res>
    implements $GetCountriesBodyCopyWith<$Res> {
  factory _$GetCountriesBodyCopyWith(
          _GetCountriesBody value, $Res Function(_GetCountriesBody) then) =
      __$GetCountriesBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language});
}

/// @nodoc
class __$GetCountriesBodyCopyWithImpl<$Res>
    extends _$GetCountriesBodyCopyWithImpl<$Res>
    implements _$GetCountriesBodyCopyWith<$Res> {
  __$GetCountriesBodyCopyWithImpl(
      _GetCountriesBody _value, $Res Function(_GetCountriesBody) _then)
      : super(_value, (v) => _then(v as _GetCountriesBody));

  @override
  _GetCountriesBody get _value => super._value as _GetCountriesBody;

  @override
  $Res call({
    Object? language = freezed,
  }) {
    return _then(_GetCountriesBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCountriesBody implements _GetCountriesBody {
  _$_GetCountriesBody(this.language);

  factory _$_GetCountriesBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GetCountriesBodyFromJson(json);

  @override
  final String language;

  @override
  String toString() {
    return 'GetCountriesBody(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCountriesBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$GetCountriesBodyCopyWith<_GetCountriesBody> get copyWith =>
      __$GetCountriesBodyCopyWithImpl<_GetCountriesBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetCountriesBodyToJson(this);
  }
}

abstract class _GetCountriesBody implements GetCountriesBody {
  factory _GetCountriesBody(String language) = _$_GetCountriesBody;

  factory _GetCountriesBody.fromJson(Map<String, dynamic> json) =
      _$_GetCountriesBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCountriesBodyCopyWith<_GetCountriesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchCitiesBody _$MatchCitiesBodyFromJson(Map<String, dynamic> json) {
  return _MatchCitiesBody.fromJson(json);
}

/// @nodoc
class _$MatchCitiesBodyTearOff {
  const _$MatchCitiesBodyTearOff();

  _MatchCitiesBody call(String language, String pattern) {
    return _MatchCitiesBody(
      language,
      pattern,
    );
  }

  MatchCitiesBody fromJson(Map<String, Object> json) {
    return MatchCitiesBody.fromJson(json);
  }
}

/// @nodoc
const $MatchCitiesBody = _$MatchCitiesBodyTearOff();

/// @nodoc
mixin _$MatchCitiesBody {
  String get language => throw _privateConstructorUsedError;
  String get pattern => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchCitiesBodyCopyWith<MatchCitiesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCitiesBodyCopyWith<$Res> {
  factory $MatchCitiesBodyCopyWith(
          MatchCitiesBody value, $Res Function(MatchCitiesBody) then) =
      _$MatchCitiesBodyCopyWithImpl<$Res>;
  $Res call({String language, String pattern});
}

/// @nodoc
class _$MatchCitiesBodyCopyWithImpl<$Res>
    implements $MatchCitiesBodyCopyWith<$Res> {
  _$MatchCitiesBodyCopyWithImpl(this._value, this._then);

  final MatchCitiesBody _value;
  // ignore: unused_field
  final $Res Function(MatchCitiesBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? pattern = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MatchCitiesBodyCopyWith<$Res>
    implements $MatchCitiesBodyCopyWith<$Res> {
  factory _$MatchCitiesBodyCopyWith(
          _MatchCitiesBody value, $Res Function(_MatchCitiesBody) then) =
      __$MatchCitiesBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String pattern});
}

/// @nodoc
class __$MatchCitiesBodyCopyWithImpl<$Res>
    extends _$MatchCitiesBodyCopyWithImpl<$Res>
    implements _$MatchCitiesBodyCopyWith<$Res> {
  __$MatchCitiesBodyCopyWithImpl(
      _MatchCitiesBody _value, $Res Function(_MatchCitiesBody) _then)
      : super(_value, (v) => _then(v as _MatchCitiesBody));

  @override
  _MatchCitiesBody get _value => super._value as _MatchCitiesBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? pattern = freezed,
  }) {
    return _then(_MatchCitiesBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchCitiesBody implements _MatchCitiesBody {
  _$_MatchCitiesBody(this.language, this.pattern);

  factory _$_MatchCitiesBody.fromJson(Map<String, dynamic> json) =>
      _$_$_MatchCitiesBodyFromJson(json);

  @override
  final String language;
  @override
  final String pattern;

  @override
  String toString() {
    return 'MatchCitiesBody(language: $language, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MatchCitiesBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.pattern, pattern) ||
                const DeepCollectionEquality().equals(other.pattern, pattern)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(pattern);

  @JsonKey(ignore: true)
  @override
  _$MatchCitiesBodyCopyWith<_MatchCitiesBody> get copyWith =>
      __$MatchCitiesBodyCopyWithImpl<_MatchCitiesBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MatchCitiesBodyToJson(this);
  }
}

abstract class _MatchCitiesBody implements MatchCitiesBody {
  factory _MatchCitiesBody(String language, String pattern) =
      _$_MatchCitiesBody;

  factory _MatchCitiesBody.fromJson(Map<String, dynamic> json) =
      _$_MatchCitiesBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get pattern => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MatchCitiesBodyCopyWith<_MatchCitiesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCountryByCityIdBody _$GetCountryByCityIdBodyFromJson(
    Map<String, dynamic> json) {
  return _GetCountryByCityIdBody.fromJson(json);
}

/// @nodoc
class _$GetCountryByCityIdBodyTearOff {
  const _$GetCountryByCityIdBodyTearOff();

  _GetCountryByCityIdBody call(String language, String cityId) {
    return _GetCountryByCityIdBody(
      language,
      cityId,
    );
  }

  GetCountryByCityIdBody fromJson(Map<String, Object> json) {
    return GetCountryByCityIdBody.fromJson(json);
  }
}

/// @nodoc
const $GetCountryByCityIdBody = _$GetCountryByCityIdBodyTearOff();

/// @nodoc
mixin _$GetCountryByCityIdBody {
  String get language => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCountryByCityIdBodyCopyWith<GetCountryByCityIdBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCountryByCityIdBodyCopyWith<$Res> {
  factory $GetCountryByCityIdBodyCopyWith(GetCountryByCityIdBody value,
          $Res Function(GetCountryByCityIdBody) then) =
      _$GetCountryByCityIdBodyCopyWithImpl<$Res>;
  $Res call({String language, String cityId});
}

/// @nodoc
class _$GetCountryByCityIdBodyCopyWithImpl<$Res>
    implements $GetCountryByCityIdBodyCopyWith<$Res> {
  _$GetCountryByCityIdBodyCopyWithImpl(this._value, this._then);

  final GetCountryByCityIdBody _value;
  // ignore: unused_field
  final $Res Function(GetCountryByCityIdBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetCountryByCityIdBodyCopyWith<$Res>
    implements $GetCountryByCityIdBodyCopyWith<$Res> {
  factory _$GetCountryByCityIdBodyCopyWith(_GetCountryByCityIdBody value,
          $Res Function(_GetCountryByCityIdBody) then) =
      __$GetCountryByCityIdBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String cityId});
}

/// @nodoc
class __$GetCountryByCityIdBodyCopyWithImpl<$Res>
    extends _$GetCountryByCityIdBodyCopyWithImpl<$Res>
    implements _$GetCountryByCityIdBodyCopyWith<$Res> {
  __$GetCountryByCityIdBodyCopyWithImpl(_GetCountryByCityIdBody _value,
      $Res Function(_GetCountryByCityIdBody) _then)
      : super(_value, (v) => _then(v as _GetCountryByCityIdBody));

  @override
  _GetCountryByCityIdBody get _value => super._value as _GetCountryByCityIdBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_GetCountryByCityIdBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCountryByCityIdBody implements _GetCountryByCityIdBody {
  _$_GetCountryByCityIdBody(this.language, this.cityId);

  factory _$_GetCountryByCityIdBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GetCountryByCityIdBodyFromJson(json);

  @override
  final String language;
  @override
  final String cityId;

  @override
  String toString() {
    return 'GetCountryByCityIdBody(language: $language, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCountryByCityIdBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetCountryByCityIdBodyCopyWith<_GetCountryByCityIdBody> get copyWith =>
      __$GetCountryByCityIdBodyCopyWithImpl<_GetCountryByCityIdBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetCountryByCityIdBodyToJson(this);
  }
}

abstract class _GetCountryByCityIdBody implements GetCountryByCityIdBody {
  factory _GetCountryByCityIdBody(String language, String cityId) =
      _$_GetCountryByCityIdBody;

  factory _GetCountryByCityIdBody.fromJson(Map<String, dynamic> json) =
      _$_GetCountryByCityIdBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCountryByCityIdBodyCopyWith<_GetCountryByCityIdBody> get copyWith =>
      throw _privateConstructorUsedError;
}

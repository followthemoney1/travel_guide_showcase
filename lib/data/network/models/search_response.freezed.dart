// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
class _$SearchResponseTearOff {
  const _$SearchResponseTearOff();

  _SearchResponse call(
      {@HiveField(0) City? result = null,
      @HiveField(1) List<City> citiesNearby = const []}) {
    return _SearchResponse(
      result: result,
      citiesNearby: citiesNearby,
    );
  }

  SearchResponse fromJson(Map<String, Object> json) {
    return SearchResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchResponse = _$SearchResponseTearOff();

/// @nodoc
mixin _$SearchResponse {
  @HiveField(0)
  City? get result => throw _privateConstructorUsedError;
  @HiveField(1)
  List<City> get citiesNearby => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) City? result, @HiveField(1) List<City> citiesNearby});

  $CityCopyWith<$Res>? get result;
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  final SearchResponse _value;
  // ignore: unused_field
  final $Res Function(SearchResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? citiesNearby = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as City?,
      citiesNearby: citiesNearby == freezed
          ? _value.citiesNearby
          : citiesNearby // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }

  @override
  $CityCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$SearchResponseCopyWith(
          _SearchResponse value, $Res Function(_SearchResponse) then) =
      __$SearchResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) City? result, @HiveField(1) List<City> citiesNearby});

  @override
  $CityCopyWith<$Res>? get result;
}

/// @nodoc
class __$SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res>
    implements _$SearchResponseCopyWith<$Res> {
  __$SearchResponseCopyWithImpl(
      _SearchResponse _value, $Res Function(_SearchResponse) _then)
      : super(_value, (v) => _then(v as _SearchResponse));

  @override
  _SearchResponse get _value => super._value as _SearchResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? citiesNearby = freezed,
  }) {
    return _then(_SearchResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as City?,
      citiesNearby: citiesNearby == freezed
          ? _value.citiesNearby
          : citiesNearby // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.searchResponse)
class _$_SearchResponse implements _SearchResponse {
  _$_SearchResponse(
      {@HiveField(0) this.result = null,
      @HiveField(1) this.citiesNearby = const []});

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResponseFromJson(json);

  @JsonKey(defaultValue: null)
  @override
  @HiveField(0)
  final City? result;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(1)
  final List<City> citiesNearby;

  @override
  String toString() {
    return 'SearchResponse(result: $result, citiesNearby: $citiesNearby)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.citiesNearby, citiesNearby) ||
                const DeepCollectionEquality()
                    .equals(other.citiesNearby, citiesNearby)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(citiesNearby);

  @JsonKey(ignore: true)
  @override
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      __$SearchResponseCopyWithImpl<_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResponseToJson(this);
  }
}

abstract class _SearchResponse implements SearchResponse {
  factory _SearchResponse(
      {@HiveField(0) City? result,
      @HiveField(1) List<City> citiesNearby}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  @HiveField(0)
  City? get result => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  List<City> get citiesNearby => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResponseCopyWith<_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPopularPlacesBody _$GetPopularPlacesBodyFromJson(Map<String, dynamic> json) {
  return _GetPopularPlacesBody.fromJson(json);
}

/// @nodoc
class _$GetPopularPlacesBodyTearOff {
  const _$GetPopularPlacesBodyTearOff();

  _GetPopularPlacesBody call(String lang) {
    return _GetPopularPlacesBody(
      lang,
    );
  }

  GetPopularPlacesBody fromJson(Map<String, Object> json) {
    return GetPopularPlacesBody.fromJson(json);
  }
}

/// @nodoc
const $GetPopularPlacesBody = _$GetPopularPlacesBodyTearOff();

/// @nodoc
mixin _$GetPopularPlacesBody {
  String get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPopularPlacesBodyCopyWith<GetPopularPlacesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPopularPlacesBodyCopyWith<$Res> {
  factory $GetPopularPlacesBodyCopyWith(GetPopularPlacesBody value,
          $Res Function(GetPopularPlacesBody) then) =
      _$GetPopularPlacesBodyCopyWithImpl<$Res>;
  $Res call({String lang});
}

/// @nodoc
class _$GetPopularPlacesBodyCopyWithImpl<$Res>
    implements $GetPopularPlacesBodyCopyWith<$Res> {
  _$GetPopularPlacesBodyCopyWithImpl(this._value, this._then);

  final GetPopularPlacesBody _value;
  // ignore: unused_field
  final $Res Function(GetPopularPlacesBody) _then;

  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPopularPlacesBodyCopyWith<$Res>
    implements $GetPopularPlacesBodyCopyWith<$Res> {
  factory _$GetPopularPlacesBodyCopyWith(_GetPopularPlacesBody value,
          $Res Function(_GetPopularPlacesBody) then) =
      __$GetPopularPlacesBodyCopyWithImpl<$Res>;
  @override
  $Res call({String lang});
}

/// @nodoc
class __$GetPopularPlacesBodyCopyWithImpl<$Res>
    extends _$GetPopularPlacesBodyCopyWithImpl<$Res>
    implements _$GetPopularPlacesBodyCopyWith<$Res> {
  __$GetPopularPlacesBodyCopyWithImpl(
      _GetPopularPlacesBody _value, $Res Function(_GetPopularPlacesBody) _then)
      : super(_value, (v) => _then(v as _GetPopularPlacesBody));

  @override
  _GetPopularPlacesBody get _value => super._value as _GetPopularPlacesBody;

  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_GetPopularPlacesBody(
      lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPopularPlacesBody implements _GetPopularPlacesBody {
  _$_GetPopularPlacesBody(this.lang);

  factory _$_GetPopularPlacesBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPopularPlacesBodyFromJson(json);

  @override
  final String lang;

  @override
  String toString() {
    return 'GetPopularPlacesBody(lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPopularPlacesBody &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lang);

  @JsonKey(ignore: true)
  @override
  _$GetPopularPlacesBodyCopyWith<_GetPopularPlacesBody> get copyWith =>
      __$GetPopularPlacesBodyCopyWithImpl<_GetPopularPlacesBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPopularPlacesBodyToJson(this);
  }
}

abstract class _GetPopularPlacesBody implements GetPopularPlacesBody {
  factory _GetPopularPlacesBody(String lang) = _$_GetPopularPlacesBody;

  factory _GetPopularPlacesBody.fromJson(Map<String, dynamic> json) =
      _$_GetPopularPlacesBody.fromJson;

  @override
  String get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPopularPlacesBodyCopyWith<_GetPopularPlacesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

GetCityByIdBody _$GetCityByIdBodyFromJson(Map<String, dynamic> json) {
  return _GetCityByIdBody.fromJson(json);
}

/// @nodoc
class _$GetCityByIdBodyTearOff {
  const _$GetCityByIdBodyTearOff();

  _GetCityByIdBody call(String language, int cityId) {
    return _GetCityByIdBody(
      language,
      cityId,
    );
  }

  GetCityByIdBody fromJson(Map<String, Object> json) {
    return GetCityByIdBody.fromJson(json);
  }
}

/// @nodoc
const $GetCityByIdBody = _$GetCityByIdBodyTearOff();

/// @nodoc
mixin _$GetCityByIdBody {
  String get language => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCityByIdBodyCopyWith<GetCityByIdBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCityByIdBodyCopyWith<$Res> {
  factory $GetCityByIdBodyCopyWith(
          GetCityByIdBody value, $Res Function(GetCityByIdBody) then) =
      _$GetCityByIdBodyCopyWithImpl<$Res>;
  $Res call({String language, int cityId});
}

/// @nodoc
class _$GetCityByIdBodyCopyWithImpl<$Res>
    implements $GetCityByIdBodyCopyWith<$Res> {
  _$GetCityByIdBodyCopyWithImpl(this._value, this._then);

  final GetCityByIdBody _value;
  // ignore: unused_field
  final $Res Function(GetCityByIdBody) _then;

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
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetCityByIdBodyCopyWith<$Res>
    implements $GetCityByIdBodyCopyWith<$Res> {
  factory _$GetCityByIdBodyCopyWith(
          _GetCityByIdBody value, $Res Function(_GetCityByIdBody) then) =
      __$GetCityByIdBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, int cityId});
}

/// @nodoc
class __$GetCityByIdBodyCopyWithImpl<$Res>
    extends _$GetCityByIdBodyCopyWithImpl<$Res>
    implements _$GetCityByIdBodyCopyWith<$Res> {
  __$GetCityByIdBodyCopyWithImpl(
      _GetCityByIdBody _value, $Res Function(_GetCityByIdBody) _then)
      : super(_value, (v) => _then(v as _GetCityByIdBody));

  @override
  _GetCityByIdBody get _value => super._value as _GetCityByIdBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_GetCityByIdBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCityByIdBody implements _GetCityByIdBody {
  _$_GetCityByIdBody(this.language, this.cityId);

  factory _$_GetCityByIdBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GetCityByIdBodyFromJson(json);

  @override
  final String language;
  @override
  final int cityId;

  @override
  String toString() {
    return 'GetCityByIdBody(language: $language, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCityByIdBody &&
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
  _$GetCityByIdBodyCopyWith<_GetCityByIdBody> get copyWith =>
      __$GetCityByIdBodyCopyWithImpl<_GetCityByIdBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetCityByIdBodyToJson(this);
  }
}

abstract class _GetCityByIdBody implements GetCityByIdBody {
  factory _GetCityByIdBody(String language, int cityId) = _$_GetCityByIdBody;

  factory _GetCityByIdBody.fromJson(Map<String, dynamic> json) =
      _$_GetCityByIdBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCityByIdBodyCopyWith<_GetCityByIdBody> get copyWith =>
      throw _privateConstructorUsedError;
}

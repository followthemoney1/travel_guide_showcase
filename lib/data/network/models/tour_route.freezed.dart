// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TourRouteResponse _$TourRouteResponseFromJson(Map<String, dynamic> json) {
  return _TourRouteResponse.fromJson(json);
}

/// @nodoc
class _$TourRouteResponseTearOff {
  const _$TourRouteResponseTearOff();

  _TourRouteResponse call(@HiveField(0) List<SightRouteItem> sights,
      @HiveField(1) String polyline) {
    return _TourRouteResponse(
      sights,
      polyline,
    );
  }

  TourRouteResponse fromJson(Map<String, Object> json) {
    return TourRouteResponse.fromJson(json);
  }
}

/// @nodoc
const $TourRouteResponse = _$TourRouteResponseTearOff();

/// @nodoc
mixin _$TourRouteResponse {
  @HiveField(0)
  List<SightRouteItem> get sights => throw _privateConstructorUsedError;
  @HiveField(1)
  String get polyline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourRouteResponseCopyWith<TourRouteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourRouteResponseCopyWith<$Res> {
  factory $TourRouteResponseCopyWith(
          TourRouteResponse value, $Res Function(TourRouteResponse) then) =
      _$TourRouteResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) List<SightRouteItem> sights,
      @HiveField(1) String polyline});
}

/// @nodoc
class _$TourRouteResponseCopyWithImpl<$Res>
    implements $TourRouteResponseCopyWith<$Res> {
  _$TourRouteResponseCopyWithImpl(this._value, this._then);

  final TourRouteResponse _value;
  // ignore: unused_field
  final $Res Function(TourRouteResponse) _then;

  @override
  $Res call({
    Object? sights = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_value.copyWith(
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<SightRouteItem>,
      polyline: polyline == freezed
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourRouteResponseCopyWith<$Res>
    implements $TourRouteResponseCopyWith<$Res> {
  factory _$TourRouteResponseCopyWith(
          _TourRouteResponse value, $Res Function(_TourRouteResponse) then) =
      __$TourRouteResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) List<SightRouteItem> sights,
      @HiveField(1) String polyline});
}

/// @nodoc
class __$TourRouteResponseCopyWithImpl<$Res>
    extends _$TourRouteResponseCopyWithImpl<$Res>
    implements _$TourRouteResponseCopyWith<$Res> {
  __$TourRouteResponseCopyWithImpl(
      _TourRouteResponse _value, $Res Function(_TourRouteResponse) _then)
      : super(_value, (v) => _then(v as _TourRouteResponse));

  @override
  _TourRouteResponse get _value => super._value as _TourRouteResponse;

  @override
  $Res call({
    Object? sights = freezed,
    Object? polyline = freezed,
  }) {
    return _then(_TourRouteResponse(
      sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<SightRouteItem>,
      polyline == freezed
          ? _value.polyline
          : polyline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.tourRouteResponse)
class _$_TourRouteResponse implements _TourRouteResponse {
  _$_TourRouteResponse(@HiveField(0) this.sights, @HiveField(1) this.polyline);

  factory _$_TourRouteResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TourRouteResponseFromJson(json);

  @override
  @HiveField(0)
  final List<SightRouteItem> sights;
  @override
  @HiveField(1)
  final String polyline;

  @override
  String toString() {
    return 'TourRouteResponse(sights: $sights, polyline: $polyline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourRouteResponse &&
            (identical(other.sights, sights) ||
                const DeepCollectionEquality().equals(other.sights, sights)) &&
            (identical(other.polyline, polyline) ||
                const DeepCollectionEquality()
                    .equals(other.polyline, polyline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sights) ^
      const DeepCollectionEquality().hash(polyline);

  @JsonKey(ignore: true)
  @override
  _$TourRouteResponseCopyWith<_TourRouteResponse> get copyWith =>
      __$TourRouteResponseCopyWithImpl<_TourRouteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourRouteResponseToJson(this);
  }
}

abstract class _TourRouteResponse implements TourRouteResponse {
  factory _TourRouteResponse(@HiveField(0) List<SightRouteItem> sights,
      @HiveField(1) String polyline) = _$_TourRouteResponse;

  factory _TourRouteResponse.fromJson(Map<String, dynamic> json) =
      _$_TourRouteResponse.fromJson;

  @override
  @HiveField(0)
  List<SightRouteItem> get sights => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get polyline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourRouteResponseCopyWith<_TourRouteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TourRouteBody _$TourRouteBodyFromJson(Map<String, dynamic> json) {
  return _TourRouteBody.fromJson(json);
}

/// @nodoc
class _$TourRouteBodyTearOff {
  const _$TourRouteBodyTearOff();

  _TourRouteBody call(String tourId, String language) {
    return _TourRouteBody(
      tourId,
      language,
    );
  }

  TourRouteBody fromJson(Map<String, Object> json) {
    return TourRouteBody.fromJson(json);
  }
}

/// @nodoc
const $TourRouteBody = _$TourRouteBodyTearOff();

/// @nodoc
mixin _$TourRouteBody {
  String get tourId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourRouteBodyCopyWith<TourRouteBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourRouteBodyCopyWith<$Res> {
  factory $TourRouteBodyCopyWith(
          TourRouteBody value, $Res Function(TourRouteBody) then) =
      _$TourRouteBodyCopyWithImpl<$Res>;
  $Res call({String tourId, String language});
}

/// @nodoc
class _$TourRouteBodyCopyWithImpl<$Res>
    implements $TourRouteBodyCopyWith<$Res> {
  _$TourRouteBodyCopyWithImpl(this._value, this._then);

  final TourRouteBody _value;
  // ignore: unused_field
  final $Res Function(TourRouteBody) _then;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourRouteBodyCopyWith<$Res>
    implements $TourRouteBodyCopyWith<$Res> {
  factory _$TourRouteBodyCopyWith(
          _TourRouteBody value, $Res Function(_TourRouteBody) then) =
      __$TourRouteBodyCopyWithImpl<$Res>;
  @override
  $Res call({String tourId, String language});
}

/// @nodoc
class __$TourRouteBodyCopyWithImpl<$Res>
    extends _$TourRouteBodyCopyWithImpl<$Res>
    implements _$TourRouteBodyCopyWith<$Res> {
  __$TourRouteBodyCopyWithImpl(
      _TourRouteBody _value, $Res Function(_TourRouteBody) _then)
      : super(_value, (v) => _then(v as _TourRouteBody));

  @override
  _TourRouteBody get _value => super._value as _TourRouteBody;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
  }) {
    return _then(_TourRouteBody(
      tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
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
class _$_TourRouteBody implements _TourRouteBody {
  _$_TourRouteBody(this.tourId, this.language);

  factory _$_TourRouteBody.fromJson(Map<String, dynamic> json) =>
      _$_$_TourRouteBodyFromJson(json);

  @override
  final String tourId;
  @override
  final String language;

  @override
  String toString() {
    return 'TourRouteBody(tourId: $tourId, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourRouteBody &&
            (identical(other.tourId, tourId) ||
                const DeepCollectionEquality().equals(other.tourId, tourId)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tourId) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$TourRouteBodyCopyWith<_TourRouteBody> get copyWith =>
      __$TourRouteBodyCopyWithImpl<_TourRouteBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourRouteBodyToJson(this);
  }
}

abstract class _TourRouteBody implements TourRouteBody {
  factory _TourRouteBody(String tourId, String language) = _$_TourRouteBody;

  factory _TourRouteBody.fromJson(Map<String, dynamic> json) =
      _$_TourRouteBody.fromJson;

  @override
  String get tourId => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourRouteBodyCopyWith<_TourRouteBody> get copyWith =>
      throw _privateConstructorUsedError;
}

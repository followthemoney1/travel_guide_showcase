// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'popular_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularCityResponse _$PopularCityResponseFromJson(Map<String, dynamic> json) {
  return _PopularCityResponse.fromJson(json);
}

/// @nodoc
class _$PopularCityResponseTearOff {
  const _$PopularCityResponseTearOff();

  _PopularCityResponse call({@HiveField(0) List<City> cities = const []}) {
    return _PopularCityResponse(
      cities: cities,
    );
  }

  PopularCityResponse fromJson(Map<String, Object> json) {
    return PopularCityResponse.fromJson(json);
  }
}

/// @nodoc
const $PopularCityResponse = _$PopularCityResponseTearOff();

/// @nodoc
mixin _$PopularCityResponse {
  @HiveField(0)
  List<City> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularCityResponseCopyWith<PopularCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularCityResponseCopyWith<$Res> {
  factory $PopularCityResponseCopyWith(
          PopularCityResponse value, $Res Function(PopularCityResponse) then) =
      _$PopularCityResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<City> cities});
}

/// @nodoc
class _$PopularCityResponseCopyWithImpl<$Res>
    implements $PopularCityResponseCopyWith<$Res> {
  _$PopularCityResponseCopyWithImpl(this._value, this._then);

  final PopularCityResponse _value;
  // ignore: unused_field
  final $Res Function(PopularCityResponse) _then;

  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
abstract class _$PopularCityResponseCopyWith<$Res>
    implements $PopularCityResponseCopyWith<$Res> {
  factory _$PopularCityResponseCopyWith(_PopularCityResponse value,
          $Res Function(_PopularCityResponse) then) =
      __$PopularCityResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<City> cities});
}

/// @nodoc
class __$PopularCityResponseCopyWithImpl<$Res>
    extends _$PopularCityResponseCopyWithImpl<$Res>
    implements _$PopularCityResponseCopyWith<$Res> {
  __$PopularCityResponseCopyWithImpl(
      _PopularCityResponse _value, $Res Function(_PopularCityResponse) _then)
      : super(_value, (v) => _then(v as _PopularCityResponse));

  @override
  _PopularCityResponse get _value => super._value as _PopularCityResponse;

  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(_PopularCityResponse(
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.popularCities)
class _$_PopularCityResponse implements _PopularCityResponse {
  _$_PopularCityResponse({@HiveField(0) this.cities = const []});

  factory _$_PopularCityResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PopularCityResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<City> cities;

  @override
  String toString() {
    return 'PopularCityResponse(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopularCityResponse &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cities);

  @JsonKey(ignore: true)
  @override
  _$PopularCityResponseCopyWith<_PopularCityResponse> get copyWith =>
      __$PopularCityResponseCopyWithImpl<_PopularCityResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PopularCityResponseToJson(this);
  }
}

abstract class _PopularCityResponse implements PopularCityResponse {
  factory _PopularCityResponse({@HiveField(0) List<City> cities}) =
      _$_PopularCityResponse;

  factory _PopularCityResponse.fromJson(Map<String, dynamic> json) =
      _$_PopularCityResponse.fromJson;

  @override
  @HiveField(0)
  List<City> get cities => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PopularCityResponseCopyWith<_PopularCityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

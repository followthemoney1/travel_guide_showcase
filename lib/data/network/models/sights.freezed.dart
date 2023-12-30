// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitySightsResponse _$CitySightsResponseFromJson(Map<String, dynamic> json) {
  return _CitySightsResponse.fromJson(json);
}

/// @nodoc
class _$CitySightsResponseTearOff {
  const _$CitySightsResponseTearOff();

  _CitySightsResponse call({@HiveField(0) List<Sight> sightsList = const []}) {
    return _CitySightsResponse(
      sightsList: sightsList,
    );
  }

  CitySightsResponse fromJson(Map<String, Object> json) {
    return CitySightsResponse.fromJson(json);
  }
}

/// @nodoc
const $CitySightsResponse = _$CitySightsResponseTearOff();

/// @nodoc
mixin _$CitySightsResponse {
  @HiveField(0)
  List<Sight> get sightsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitySightsResponseCopyWith<CitySightsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitySightsResponseCopyWith<$Res> {
  factory $CitySightsResponseCopyWith(
          CitySightsResponse value, $Res Function(CitySightsResponse) then) =
      _$CitySightsResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Sight> sightsList});
}

/// @nodoc
class _$CitySightsResponseCopyWithImpl<$Res>
    implements $CitySightsResponseCopyWith<$Res> {
  _$CitySightsResponseCopyWithImpl(this._value, this._then);

  final CitySightsResponse _value;
  // ignore: unused_field
  final $Res Function(CitySightsResponse) _then;

  @override
  $Res call({
    Object? sightsList = freezed,
  }) {
    return _then(_value.copyWith(
      sightsList: sightsList == freezed
          ? _value.sightsList
          : sightsList // ignore: cast_nullable_to_non_nullable
              as List<Sight>,
    ));
  }
}

/// @nodoc
abstract class _$CitySightsResponseCopyWith<$Res>
    implements $CitySightsResponseCopyWith<$Res> {
  factory _$CitySightsResponseCopyWith(
          _CitySightsResponse value, $Res Function(_CitySightsResponse) then) =
      __$CitySightsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Sight> sightsList});
}

/// @nodoc
class __$CitySightsResponseCopyWithImpl<$Res>
    extends _$CitySightsResponseCopyWithImpl<$Res>
    implements _$CitySightsResponseCopyWith<$Res> {
  __$CitySightsResponseCopyWithImpl(
      _CitySightsResponse _value, $Res Function(_CitySightsResponse) _then)
      : super(_value, (v) => _then(v as _CitySightsResponse));

  @override
  _CitySightsResponse get _value => super._value as _CitySightsResponse;

  @override
  $Res call({
    Object? sightsList = freezed,
  }) {
    return _then(_CitySightsResponse(
      sightsList: sightsList == freezed
          ? _value.sightsList
          : sightsList // ignore: cast_nullable_to_non_nullable
              as List<Sight>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.citySights)
class _$_CitySightsResponse implements _CitySightsResponse {
  _$_CitySightsResponse({@HiveField(0) this.sightsList = const []});

  factory _$_CitySightsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CitySightsResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Sight> sightsList;

  @override
  String toString() {
    return 'CitySightsResponse(sightsList: $sightsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySightsResponse &&
            (identical(other.sightsList, sightsList) ||
                const DeepCollectionEquality()
                    .equals(other.sightsList, sightsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sightsList);

  @JsonKey(ignore: true)
  @override
  _$CitySightsResponseCopyWith<_CitySightsResponse> get copyWith =>
      __$CitySightsResponseCopyWithImpl<_CitySightsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CitySightsResponseToJson(this);
  }
}

abstract class _CitySightsResponse implements CitySightsResponse {
  factory _CitySightsResponse({@HiveField(0) List<Sight> sightsList}) =
      _$_CitySightsResponse;

  factory _CitySightsResponse.fromJson(Map<String, dynamic> json) =
      _$_CitySightsResponse.fromJson;

  @override
  @HiveField(0)
  List<Sight> get sightsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CitySightsResponseCopyWith<_CitySightsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

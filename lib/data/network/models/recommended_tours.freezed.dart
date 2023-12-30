// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'recommended_tours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendedToursResponse _$RecommendedToursResponseFromJson(
    Map<String, dynamic> json) {
  return _RecommendedToursResponse.fromJson(json);
}

/// @nodoc
class _$RecommendedToursResponseTearOff {
  const _$RecommendedToursResponseTearOff();

  _RecommendedToursResponse call(
      {@HiveField(0) List<Tour> recommendedTours = const []}) {
    return _RecommendedToursResponse(
      recommendedTours: recommendedTours,
    );
  }

  RecommendedToursResponse fromJson(Map<String, Object> json) {
    return RecommendedToursResponse.fromJson(json);
  }
}

/// @nodoc
const $RecommendedToursResponse = _$RecommendedToursResponseTearOff();

/// @nodoc
mixin _$RecommendedToursResponse {
  @HiveField(0)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedToursResponseCopyWith<RecommendedToursResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedToursResponseCopyWith<$Res> {
  factory $RecommendedToursResponseCopyWith(RecommendedToursResponse value,
          $Res Function(RecommendedToursResponse) then) =
      _$RecommendedToursResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tour> recommendedTours});
}

/// @nodoc
class _$RecommendedToursResponseCopyWithImpl<$Res>
    implements $RecommendedToursResponseCopyWith<$Res> {
  _$RecommendedToursResponseCopyWithImpl(this._value, this._then);

  final RecommendedToursResponse _value;
  // ignore: unused_field
  final $Res Function(RecommendedToursResponse) _then;

  @override
  $Res call({
    Object? recommendedTours = freezed,
  }) {
    return _then(_value.copyWith(
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$RecommendedToursResponseCopyWith<$Res>
    implements $RecommendedToursResponseCopyWith<$Res> {
  factory _$RecommendedToursResponseCopyWith(_RecommendedToursResponse value,
          $Res Function(_RecommendedToursResponse) then) =
      __$RecommendedToursResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tour> recommendedTours});
}

/// @nodoc
class __$RecommendedToursResponseCopyWithImpl<$Res>
    extends _$RecommendedToursResponseCopyWithImpl<$Res>
    implements _$RecommendedToursResponseCopyWith<$Res> {
  __$RecommendedToursResponseCopyWithImpl(_RecommendedToursResponse _value,
      $Res Function(_RecommendedToursResponse) _then)
      : super(_value, (v) => _then(v as _RecommendedToursResponse));

  @override
  _RecommendedToursResponse get _value =>
      super._value as _RecommendedToursResponse;

  @override
  $Res call({
    Object? recommendedTours = freezed,
  }) {
    return _then(_RecommendedToursResponse(
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.recommendedToursResponse)
class _$_RecommendedToursResponse implements _RecommendedToursResponse {
  _$_RecommendedToursResponse({@HiveField(0) this.recommendedTours = const []});

  factory _$_RecommendedToursResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RecommendedToursResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Tour> recommendedTours;

  @override
  String toString() {
    return 'RecommendedToursResponse(recommendedTours: $recommendedTours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecommendedToursResponse &&
            (identical(other.recommendedTours, recommendedTours) ||
                const DeepCollectionEquality()
                    .equals(other.recommendedTours, recommendedTours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recommendedTours);

  @JsonKey(ignore: true)
  @override
  _$RecommendedToursResponseCopyWith<_RecommendedToursResponse> get copyWith =>
      __$RecommendedToursResponseCopyWithImpl<_RecommendedToursResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RecommendedToursResponseToJson(this);
  }
}

abstract class _RecommendedToursResponse implements RecommendedToursResponse {
  factory _RecommendedToursResponse(
          {@HiveField(0) List<Tour> recommendedTours}) =
      _$_RecommendedToursResponse;

  factory _RecommendedToursResponse.fromJson(Map<String, dynamic> json) =
      _$_RecommendedToursResponse.fromJson;

  @override
  @HiveField(0)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecommendedToursResponseCopyWith<_RecommendedToursResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

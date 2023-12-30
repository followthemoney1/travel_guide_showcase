// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guides.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuidesResponse _$GuidesResponseFromJson(Map<String, dynamic> json) {
  return _GuidesResponse.fromJson(json);
}

/// @nodoc
class _$GuidesResponseTearOff {
  const _$GuidesResponseTearOff();

  _GuidesResponse call({@HiveField(0) List<Guide> guides = const []}) {
    return _GuidesResponse(
      guides: guides,
    );
  }

  GuidesResponse fromJson(Map<String, Object> json) {
    return GuidesResponse.fromJson(json);
  }
}

/// @nodoc
const $GuidesResponse = _$GuidesResponseTearOff();

/// @nodoc
mixin _$GuidesResponse {
  @HiveField(0)
  List<Guide> get guides => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidesResponseCopyWith<GuidesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidesResponseCopyWith<$Res> {
  factory $GuidesResponseCopyWith(
          GuidesResponse value, $Res Function(GuidesResponse) then) =
      _$GuidesResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Guide> guides});
}

/// @nodoc
class _$GuidesResponseCopyWithImpl<$Res>
    implements $GuidesResponseCopyWith<$Res> {
  _$GuidesResponseCopyWithImpl(this._value, this._then);

  final GuidesResponse _value;
  // ignore: unused_field
  final $Res Function(GuidesResponse) _then;

  @override
  $Res call({
    Object? guides = freezed,
  }) {
    return _then(_value.copyWith(
      guides: guides == freezed
          ? _value.guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<Guide>,
    ));
  }
}

/// @nodoc
abstract class _$GuidesResponseCopyWith<$Res>
    implements $GuidesResponseCopyWith<$Res> {
  factory _$GuidesResponseCopyWith(
          _GuidesResponse value, $Res Function(_GuidesResponse) then) =
      __$GuidesResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Guide> guides});
}

/// @nodoc
class __$GuidesResponseCopyWithImpl<$Res>
    extends _$GuidesResponseCopyWithImpl<$Res>
    implements _$GuidesResponseCopyWith<$Res> {
  __$GuidesResponseCopyWithImpl(
      _GuidesResponse _value, $Res Function(_GuidesResponse) _then)
      : super(_value, (v) => _then(v as _GuidesResponse));

  @override
  _GuidesResponse get _value => super._value as _GuidesResponse;

  @override
  $Res call({
    Object? guides = freezed,
  }) {
    return _then(_GuidesResponse(
      guides: guides == freezed
          ? _value.guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<Guide>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.guidesResponse)
class _$_GuidesResponse implements _GuidesResponse {
  _$_GuidesResponse({@HiveField(0) this.guides = const []});

  factory _$_GuidesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GuidesResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Guide> guides;

  @override
  String toString() {
    return 'GuidesResponse(guides: $guides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuidesResponse &&
            (identical(other.guides, guides) ||
                const DeepCollectionEquality().equals(other.guides, guides)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(guides);

  @JsonKey(ignore: true)
  @override
  _$GuidesResponseCopyWith<_GuidesResponse> get copyWith =>
      __$GuidesResponseCopyWithImpl<_GuidesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GuidesResponseToJson(this);
  }
}

abstract class _GuidesResponse implements GuidesResponse {
  factory _GuidesResponse({@HiveField(0) List<Guide> guides}) =
      _$_GuidesResponse;

  factory _GuidesResponse.fromJson(Map<String, dynamic> json) =
      _$_GuidesResponse.fromJson;

  @override
  @HiveField(0)
  List<Guide> get guides => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GuidesResponseCopyWith<_GuidesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActiveOrdersResponse _$ActiveOrdersResponseFromJson(Map<String, dynamic> json) {
  return _ActiveOrdersResponse.fromJson(json);
}

/// @nodoc
class _$ActiveOrdersResponseTearOff {
  const _$ActiveOrdersResponseTearOff();

  _ActiveOrdersResponse call(
      {@HiveField(0) List<Tour> activeOrdersList = const []}) {
    return _ActiveOrdersResponse(
      activeOrdersList: activeOrdersList,
    );
  }

  ActiveOrdersResponse fromJson(Map<String, Object> json) {
    return ActiveOrdersResponse.fromJson(json);
  }
}

/// @nodoc
const $ActiveOrdersResponse = _$ActiveOrdersResponseTearOff();

/// @nodoc
mixin _$ActiveOrdersResponse {
  @HiveField(0)
  List<Tour> get activeOrdersList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveOrdersResponseCopyWith<ActiveOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveOrdersResponseCopyWith<$Res> {
  factory $ActiveOrdersResponseCopyWith(ActiveOrdersResponse value,
          $Res Function(ActiveOrdersResponse) then) =
      _$ActiveOrdersResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tour> activeOrdersList});
}

/// @nodoc
class _$ActiveOrdersResponseCopyWithImpl<$Res>
    implements $ActiveOrdersResponseCopyWith<$Res> {
  _$ActiveOrdersResponseCopyWithImpl(this._value, this._then);

  final ActiveOrdersResponse _value;
  // ignore: unused_field
  final $Res Function(ActiveOrdersResponse) _then;

  @override
  $Res call({
    Object? activeOrdersList = freezed,
  }) {
    return _then(_value.copyWith(
      activeOrdersList: activeOrdersList == freezed
          ? _value.activeOrdersList
          : activeOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$ActiveOrdersResponseCopyWith<$Res>
    implements $ActiveOrdersResponseCopyWith<$Res> {
  factory _$ActiveOrdersResponseCopyWith(_ActiveOrdersResponse value,
          $Res Function(_ActiveOrdersResponse) then) =
      __$ActiveOrdersResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tour> activeOrdersList});
}

/// @nodoc
class __$ActiveOrdersResponseCopyWithImpl<$Res>
    extends _$ActiveOrdersResponseCopyWithImpl<$Res>
    implements _$ActiveOrdersResponseCopyWith<$Res> {
  __$ActiveOrdersResponseCopyWithImpl(
      _ActiveOrdersResponse _value, $Res Function(_ActiveOrdersResponse) _then)
      : super(_value, (v) => _then(v as _ActiveOrdersResponse));

  @override
  _ActiveOrdersResponse get _value => super._value as _ActiveOrdersResponse;

  @override
  $Res call({
    Object? activeOrdersList = freezed,
  }) {
    return _then(_ActiveOrdersResponse(
      activeOrdersList: activeOrdersList == freezed
          ? _value.activeOrdersList
          : activeOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.activeOrders)
class _$_ActiveOrdersResponse implements _ActiveOrdersResponse {
  _$_ActiveOrdersResponse({@HiveField(0) this.activeOrdersList = const []});

  factory _$_ActiveOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveOrdersResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Tour> activeOrdersList;

  @override
  String toString() {
    return 'ActiveOrdersResponse(activeOrdersList: $activeOrdersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveOrdersResponse &&
            (identical(other.activeOrdersList, activeOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.activeOrdersList, activeOrdersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activeOrdersList);

  @JsonKey(ignore: true)
  @override
  _$ActiveOrdersResponseCopyWith<_ActiveOrdersResponse> get copyWith =>
      __$ActiveOrdersResponseCopyWithImpl<_ActiveOrdersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveOrdersResponseToJson(this);
  }
}

abstract class _ActiveOrdersResponse implements ActiveOrdersResponse {
  factory _ActiveOrdersResponse({@HiveField(0) List<Tour> activeOrdersList}) =
      _$_ActiveOrdersResponse;

  factory _ActiveOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_ActiveOrdersResponse.fromJson;

  @override
  @HiveField(0)
  List<Tour> get activeOrdersList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActiveOrdersResponseCopyWith<_ActiveOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ArchiveOrdersResponse _$ArchiveOrdersResponseFromJson(
    Map<String, dynamic> json) {
  return _ArchiveOrdersResponse.fromJson(json);
}

/// @nodoc
class _$ArchiveOrdersResponseTearOff {
  const _$ArchiveOrdersResponseTearOff();

  _ArchiveOrdersResponse call(
      {@HiveField(0) List<Tour> archiveOrdersList = const []}) {
    return _ArchiveOrdersResponse(
      archiveOrdersList: archiveOrdersList,
    );
  }

  ArchiveOrdersResponse fromJson(Map<String, Object> json) {
    return ArchiveOrdersResponse.fromJson(json);
  }
}

/// @nodoc
const $ArchiveOrdersResponse = _$ArchiveOrdersResponseTearOff();

/// @nodoc
mixin _$ArchiveOrdersResponse {
  @HiveField(0)
  List<Tour> get archiveOrdersList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArchiveOrdersResponseCopyWith<ArchiveOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchiveOrdersResponseCopyWith<$Res> {
  factory $ArchiveOrdersResponseCopyWith(ArchiveOrdersResponse value,
          $Res Function(ArchiveOrdersResponse) then) =
      _$ArchiveOrdersResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Tour> archiveOrdersList});
}

/// @nodoc
class _$ArchiveOrdersResponseCopyWithImpl<$Res>
    implements $ArchiveOrdersResponseCopyWith<$Res> {
  _$ArchiveOrdersResponseCopyWithImpl(this._value, this._then);

  final ArchiveOrdersResponse _value;
  // ignore: unused_field
  final $Res Function(ArchiveOrdersResponse) _then;

  @override
  $Res call({
    Object? archiveOrdersList = freezed,
  }) {
    return _then(_value.copyWith(
      archiveOrdersList: archiveOrdersList == freezed
          ? _value.archiveOrdersList
          : archiveOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$ArchiveOrdersResponseCopyWith<$Res>
    implements $ArchiveOrdersResponseCopyWith<$Res> {
  factory _$ArchiveOrdersResponseCopyWith(_ArchiveOrdersResponse value,
          $Res Function(_ArchiveOrdersResponse) then) =
      __$ArchiveOrdersResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Tour> archiveOrdersList});
}

/// @nodoc
class __$ArchiveOrdersResponseCopyWithImpl<$Res>
    extends _$ArchiveOrdersResponseCopyWithImpl<$Res>
    implements _$ArchiveOrdersResponseCopyWith<$Res> {
  __$ArchiveOrdersResponseCopyWithImpl(_ArchiveOrdersResponse _value,
      $Res Function(_ArchiveOrdersResponse) _then)
      : super(_value, (v) => _then(v as _ArchiveOrdersResponse));

  @override
  _ArchiveOrdersResponse get _value => super._value as _ArchiveOrdersResponse;

  @override
  $Res call({
    Object? archiveOrdersList = freezed,
  }) {
    return _then(_ArchiveOrdersResponse(
      archiveOrdersList: archiveOrdersList == freezed
          ? _value.archiveOrdersList
          : archiveOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.archiveOrders)
class _$_ArchiveOrdersResponse implements _ArchiveOrdersResponse {
  _$_ArchiveOrdersResponse({@HiveField(0) this.archiveOrdersList = const []});

  factory _$_ArchiveOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ArchiveOrdersResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<Tour> archiveOrdersList;

  @override
  String toString() {
    return 'ArchiveOrdersResponse(archiveOrdersList: $archiveOrdersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArchiveOrdersResponse &&
            (identical(other.archiveOrdersList, archiveOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.archiveOrdersList, archiveOrdersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(archiveOrdersList);

  @JsonKey(ignore: true)
  @override
  _$ArchiveOrdersResponseCopyWith<_ArchiveOrdersResponse> get copyWith =>
      __$ArchiveOrdersResponseCopyWithImpl<_ArchiveOrdersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArchiveOrdersResponseToJson(this);
  }
}

abstract class _ArchiveOrdersResponse implements ArchiveOrdersResponse {
  factory _ArchiveOrdersResponse({@HiveField(0) List<Tour> archiveOrdersList}) =
      _$_ArchiveOrdersResponse;

  factory _ArchiveOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_ArchiveOrdersResponse.fromJson;

  @override
  @HiveField(0)
  List<Tour> get archiveOrdersList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArchiveOrdersResponseCopyWith<_ArchiveOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

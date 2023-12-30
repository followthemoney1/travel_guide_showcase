// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tours_and_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToursAndType _$ToursAndTypeFromJson(Map<String, dynamic> json) {
  return _ToursAndType.fromJson(json);
}

/// @nodoc
class _$ToursAndTypeTearOff {
  const _$ToursAndTypeTearOff();

  _ToursAndType call(String typeName, List<Tour> tours) {
    return _ToursAndType(
      typeName,
      tours,
    );
  }

  ToursAndType fromJson(Map<String, Object> json) {
    return ToursAndType.fromJson(json);
  }
}

/// @nodoc
const $ToursAndType = _$ToursAndTypeTearOff();

/// @nodoc
mixin _$ToursAndType {
  String get typeName => throw _privateConstructorUsedError;
  List<Tour> get tours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToursAndTypeCopyWith<ToursAndType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToursAndTypeCopyWith<$Res> {
  factory $ToursAndTypeCopyWith(
          ToursAndType value, $Res Function(ToursAndType) then) =
      _$ToursAndTypeCopyWithImpl<$Res>;
  $Res call({String typeName, List<Tour> tours});
}

/// @nodoc
class _$ToursAndTypeCopyWithImpl<$Res> implements $ToursAndTypeCopyWith<$Res> {
  _$ToursAndTypeCopyWithImpl(this._value, this._then);

  final ToursAndType _value;
  // ignore: unused_field
  final $Res Function(ToursAndType) _then;

  @override
  $Res call({
    Object? typeName = freezed,
    Object? tours = freezed,
  }) {
    return _then(_value.copyWith(
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      tours: tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$ToursAndTypeCopyWith<$Res>
    implements $ToursAndTypeCopyWith<$Res> {
  factory _$ToursAndTypeCopyWith(
          _ToursAndType value, $Res Function(_ToursAndType) then) =
      __$ToursAndTypeCopyWithImpl<$Res>;
  @override
  $Res call({String typeName, List<Tour> tours});
}

/// @nodoc
class __$ToursAndTypeCopyWithImpl<$Res> extends _$ToursAndTypeCopyWithImpl<$Res>
    implements _$ToursAndTypeCopyWith<$Res> {
  __$ToursAndTypeCopyWithImpl(
      _ToursAndType _value, $Res Function(_ToursAndType) _then)
      : super(_value, (v) => _then(v as _ToursAndType));

  @override
  _ToursAndType get _value => super._value as _ToursAndType;

  @override
  $Res call({
    Object? typeName = freezed,
    Object? tours = freezed,
  }) {
    return _then(_ToursAndType(
      typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToursAndType implements _ToursAndType {
  _$_ToursAndType(this.typeName, this.tours);

  factory _$_ToursAndType.fromJson(Map<String, dynamic> json) =>
      _$_$_ToursAndTypeFromJson(json);

  @override
  final String typeName;
  @override
  final List<Tour> tours;

  @override
  String toString() {
    return 'ToursAndType(typeName: $typeName, tours: $tours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToursAndType &&
            (identical(other.typeName, typeName) ||
                const DeepCollectionEquality()
                    .equals(other.typeName, typeName)) &&
            (identical(other.tours, tours) ||
                const DeepCollectionEquality().equals(other.tours, tours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(typeName) ^
      const DeepCollectionEquality().hash(tours);

  @JsonKey(ignore: true)
  @override
  _$ToursAndTypeCopyWith<_ToursAndType> get copyWith =>
      __$ToursAndTypeCopyWithImpl<_ToursAndType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToursAndTypeToJson(this);
  }
}

abstract class _ToursAndType implements ToursAndType {
  factory _ToursAndType(String typeName, List<Tour> tours) = _$_ToursAndType;

  factory _ToursAndType.fromJson(Map<String, dynamic> json) =
      _$_ToursAndType.fromJson;

  @override
  String get typeName => throw _privateConstructorUsedError;
  @override
  List<Tour> get tours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToursAndTypeCopyWith<_ToursAndType> get copyWith =>
      throw _privateConstructorUsedError;
}

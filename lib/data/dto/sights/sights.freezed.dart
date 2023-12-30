// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sight _$SightFromJson(Map<String, dynamic> json) {
  return _Sight.fromJson(json);
}

/// @nodoc
class _$SightTearOff {
  const _$SightTearOff();

  _Sight call(
      {@HiveField(0) int id = 0,
      @HiveField(1) List<String> imageUrl = const [],
      @HiveField(2) String name = '',
      @HiveField(3) String place = '',
      @HiveField(4) String flagUrl = '',
      @HiveField(5) int inclusionNumber = 0}) {
    return _Sight(
      id: id,
      imageUrl: imageUrl,
      name: name,
      place: place,
      flagUrl: flagUrl,
      inclusionNumber: inclusionNumber,
    );
  }

  Sight fromJson(Map<String, Object> json) {
    return Sight.fromJson(json);
  }
}

/// @nodoc
const $Sight = _$SightTearOff();

/// @nodoc
mixin _$Sight {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get imageUrl => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String get place => throw _privateConstructorUsedError;
  @HiveField(4)
  String get flagUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  int get inclusionNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SightCopyWith<Sight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightCopyWith<$Res> {
  factory $SightCopyWith(Sight value, $Res Function(Sight) then) =
      _$SightCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String place,
      @HiveField(4) String flagUrl,
      @HiveField(5) int inclusionNumber});
}

/// @nodoc
class _$SightCopyWithImpl<$Res> implements $SightCopyWith<$Res> {
  _$SightCopyWithImpl(this._value, this._then);

  final Sight _value;
  // ignore: unused_field
  final $Res Function(Sight) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? place = freezed,
    Object? flagUrl = freezed,
    Object? inclusionNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      flagUrl: flagUrl == freezed
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inclusionNumber: inclusionNumber == freezed
          ? _value.inclusionNumber
          : inclusionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SightCopyWith<$Res> implements $SightCopyWith<$Res> {
  factory _$SightCopyWith(_Sight value, $Res Function(_Sight) then) =
      __$SightCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String place,
      @HiveField(4) String flagUrl,
      @HiveField(5) int inclusionNumber});
}

/// @nodoc
class __$SightCopyWithImpl<$Res> extends _$SightCopyWithImpl<$Res>
    implements _$SightCopyWith<$Res> {
  __$SightCopyWithImpl(_Sight _value, $Res Function(_Sight) _then)
      : super(_value, (v) => _then(v as _Sight));

  @override
  _Sight get _value => super._value as _Sight;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? place = freezed,
    Object? flagUrl = freezed,
    Object? inclusionNumber = freezed,
  }) {
    return _then(_Sight(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      flagUrl: flagUrl == freezed
          ? _value.flagUrl
          : flagUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inclusionNumber: inclusionNumber == freezed
          ? _value.inclusionNumber
          : inclusionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.sight)
class _$_Sight implements _Sight {
  const _$_Sight(
      {@HiveField(0) this.id = 0,
      @HiveField(1) this.imageUrl = const [],
      @HiveField(2) this.name = '',
      @HiveField(3) this.place = '',
      @HiveField(4) this.flagUrl = '',
      @HiveField(5) this.inclusionNumber = 0});

  factory _$_Sight.fromJson(Map<String, dynamic> json) =>
      _$_$_SightFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  @HiveField(0)
  final int id;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(1)
  final List<String> imageUrl;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String name;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(3)
  final String place;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(4)
  final String flagUrl;
  @JsonKey(defaultValue: 0)
  @override
  @HiveField(5)
  final int inclusionNumber;

  @override
  String toString() {
    return 'Sight(id: $id, imageUrl: $imageUrl, name: $name, place: $place, flagUrl: $flagUrl, inclusionNumber: $inclusionNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sight &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.flagUrl, flagUrl) ||
                const DeepCollectionEquality()
                    .equals(other.flagUrl, flagUrl)) &&
            (identical(other.inclusionNumber, inclusionNumber) ||
                const DeepCollectionEquality()
                    .equals(other.inclusionNumber, inclusionNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(flagUrl) ^
      const DeepCollectionEquality().hash(inclusionNumber);

  @JsonKey(ignore: true)
  @override
  _$SightCopyWith<_Sight> get copyWith =>
      __$SightCopyWithImpl<_Sight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SightToJson(this);
  }
}

abstract class _Sight implements Sight {
  const factory _Sight(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String place,
      @HiveField(4) String flagUrl,
      @HiveField(5) int inclusionNumber}) = _$_Sight;

  factory _Sight.fromJson(Map<String, dynamic> json) = _$_Sight.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  List<String> get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get place => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String get flagUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int get inclusionNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SightCopyWith<_Sight> get copyWith => throw _privateConstructorUsedError;
}

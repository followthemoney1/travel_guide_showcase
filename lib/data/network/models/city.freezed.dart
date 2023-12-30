// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) {
  return _CityResponse.fromJson(json);
}

/// @nodoc
class _$CityResponseTearOff {
  const _$CityResponseTearOff();

  _CityResponse call(
      {@HiveField(0) int id = -1,
      @HiveField(1) String name = '',
      @HiveField(2) String description = '',
      @HiveField(3) String imageUrl = '',
      @HiveField(4) List<ToursQuantity> toursQuantity = const [],
      @HiveField(5) List<Tour> recommendedTours = const [],
      @HiveField(6) List<Guide> guides = const [],
      @HiveField(7) List<Sight> sights = const [],
      @HiveField(8) List<City> citiesNearby = const []}) {
    return _CityResponse(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
      toursQuantity: toursQuantity,
      recommendedTours: recommendedTours,
      guides: guides,
      sights: sights,
      citiesNearby: citiesNearby,
    );
  }

  CityResponse fromJson(Map<String, Object> json) {
    return CityResponse.fromJson(json);
  }
}

/// @nodoc
const $CityResponse = _$CityResponseTearOff();

/// @nodoc
mixin _$CityResponse {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get imageUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  List<ToursQuantity> get toursQuantity => throw _privateConstructorUsedError;
  @HiveField(5)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Guide> get guides => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Sight> get sights => throw _privateConstructorUsedError;
  @HiveField(8)
  List<City> get citiesNearby => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityResponseCopyWith<CityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityResponseCopyWith<$Res> {
  factory $CityResponseCopyWith(
          CityResponse value, $Res Function(CityResponse) then) =
      _$CityResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String imageUrl,
      @HiveField(4) List<ToursQuantity> toursQuantity,
      @HiveField(5) List<Tour> recommendedTours,
      @HiveField(6) List<Guide> guides,
      @HiveField(7) List<Sight> sights,
      @HiveField(8) List<City> citiesNearby});
}

/// @nodoc
class _$CityResponseCopyWithImpl<$Res> implements $CityResponseCopyWith<$Res> {
  _$CityResponseCopyWithImpl(this._value, this._then);

  final CityResponse _value;
  // ignore: unused_field
  final $Res Function(CityResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? toursQuantity = freezed,
    Object? recommendedTours = freezed,
    Object? guides = freezed,
    Object? sights = freezed,
    Object? citiesNearby = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toursQuantity: toursQuantity == freezed
          ? _value.toursQuantity
          : toursQuantity // ignore: cast_nullable_to_non_nullable
              as List<ToursQuantity>,
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      guides: guides == freezed
          ? _value.guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<Guide>,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<Sight>,
      citiesNearby: citiesNearby == freezed
          ? _value.citiesNearby
          : citiesNearby // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
abstract class _$CityResponseCopyWith<$Res>
    implements $CityResponseCopyWith<$Res> {
  factory _$CityResponseCopyWith(
          _CityResponse value, $Res Function(_CityResponse) then) =
      __$CityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String imageUrl,
      @HiveField(4) List<ToursQuantity> toursQuantity,
      @HiveField(5) List<Tour> recommendedTours,
      @HiveField(6) List<Guide> guides,
      @HiveField(7) List<Sight> sights,
      @HiveField(8) List<City> citiesNearby});
}

/// @nodoc
class __$CityResponseCopyWithImpl<$Res> extends _$CityResponseCopyWithImpl<$Res>
    implements _$CityResponseCopyWith<$Res> {
  __$CityResponseCopyWithImpl(
      _CityResponse _value, $Res Function(_CityResponse) _then)
      : super(_value, (v) => _then(v as _CityResponse));

  @override
  _CityResponse get _value => super._value as _CityResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? toursQuantity = freezed,
    Object? recommendedTours = freezed,
    Object? guides = freezed,
    Object? sights = freezed,
    Object? citiesNearby = freezed,
  }) {
    return _then(_CityResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toursQuantity: toursQuantity == freezed
          ? _value.toursQuantity
          : toursQuantity // ignore: cast_nullable_to_non_nullable
              as List<ToursQuantity>,
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      guides: guides == freezed
          ? _value.guides
          : guides // ignore: cast_nullable_to_non_nullable
              as List<Guide>,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<Sight>,
      citiesNearby: citiesNearby == freezed
          ? _value.citiesNearby
          : citiesNearby // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.cityResponse)
class _$_CityResponse implements _CityResponse {
  _$_CityResponse(
      {@HiveField(0) this.id = -1,
      @HiveField(1) this.name = '',
      @HiveField(2) this.description = '',
      @HiveField(3) this.imageUrl = '',
      @HiveField(4) this.toursQuantity = const [],
      @HiveField(5) this.recommendedTours = const [],
      @HiveField(6) this.guides = const [],
      @HiveField(7) this.sights = const [],
      @HiveField(8) this.citiesNearby = const []});

  factory _$_CityResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CityResponseFromJson(json);

  @JsonKey(defaultValue: -1)
  @override
  @HiveField(0)
  final int id;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String name;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String description;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(3)
  final String imageUrl;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(4)
  final List<ToursQuantity> toursQuantity;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(5)
  final List<Tour> recommendedTours;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(6)
  final List<Guide> guides;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(7)
  final List<Sight> sights;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(8)
  final List<City> citiesNearby;

  @override
  String toString() {
    return 'CityResponse(id: $id, name: $name, description: $description, imageUrl: $imageUrl, toursQuantity: $toursQuantity, recommendedTours: $recommendedTours, guides: $guides, sights: $sights, citiesNearby: $citiesNearby)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.toursQuantity, toursQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.toursQuantity, toursQuantity)) &&
            (identical(other.recommendedTours, recommendedTours) ||
                const DeepCollectionEquality()
                    .equals(other.recommendedTours, recommendedTours)) &&
            (identical(other.guides, guides) ||
                const DeepCollectionEquality().equals(other.guides, guides)) &&
            (identical(other.sights, sights) ||
                const DeepCollectionEquality().equals(other.sights, sights)) &&
            (identical(other.citiesNearby, citiesNearby) ||
                const DeepCollectionEquality()
                    .equals(other.citiesNearby, citiesNearby)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(toursQuantity) ^
      const DeepCollectionEquality().hash(recommendedTours) ^
      const DeepCollectionEquality().hash(guides) ^
      const DeepCollectionEquality().hash(sights) ^
      const DeepCollectionEquality().hash(citiesNearby);

  @JsonKey(ignore: true)
  @override
  _$CityResponseCopyWith<_CityResponse> get copyWith =>
      __$CityResponseCopyWithImpl<_CityResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CityResponseToJson(this);
  }
}

abstract class _CityResponse implements CityResponse {
  factory _CityResponse(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(2) String description,
      @HiveField(3) String imageUrl,
      @HiveField(4) List<ToursQuantity> toursQuantity,
      @HiveField(5) List<Tour> recommendedTours,
      @HiveField(6) List<Guide> guides,
      @HiveField(7) List<Sight> sights,
      @HiveField(8) List<City> citiesNearby}) = _$_CityResponse;

  factory _CityResponse.fromJson(Map<String, dynamic> json) =
      _$_CityResponse.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  List<ToursQuantity> get toursQuantity => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  List<Guide> get guides => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  List<Sight> get sights => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  List<City> get citiesNearby => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityResponseCopyWith<_CityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ToursQuantity _$ToursQuantityFromJson(Map<String, dynamic> json) {
  return _ToursQuantity.fromJson(json);
}

/// @nodoc
class _$ToursQuantityTearOff {
  const _$ToursQuantityTearOff();

  _ToursQuantity call(
      {@HiveField(0) int tourTypeId = -1,
      @HiveField(1) String tourTypeName = '',
      @HiveField(2) String tourTypeImageUrl = '',
      @HiveField(3) int toursQuantity = -1}) {
    return _ToursQuantity(
      tourTypeId: tourTypeId,
      tourTypeName: tourTypeName,
      tourTypeImageUrl: tourTypeImageUrl,
      toursQuantity: toursQuantity,
    );
  }

  ToursQuantity fromJson(Map<String, Object> json) {
    return ToursQuantity.fromJson(json);
  }
}

/// @nodoc
const $ToursQuantity = _$ToursQuantityTearOff();

/// @nodoc
mixin _$ToursQuantity {
  @HiveField(0)
  int get tourTypeId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get tourTypeName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get tourTypeImageUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  int get toursQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToursQuantityCopyWith<ToursQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToursQuantityCopyWith<$Res> {
  factory $ToursQuantityCopyWith(
          ToursQuantity value, $Res Function(ToursQuantity) then) =
      _$ToursQuantityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int tourTypeId,
      @HiveField(1) String tourTypeName,
      @HiveField(2) String tourTypeImageUrl,
      @HiveField(3) int toursQuantity});
}

/// @nodoc
class _$ToursQuantityCopyWithImpl<$Res>
    implements $ToursQuantityCopyWith<$Res> {
  _$ToursQuantityCopyWithImpl(this._value, this._then);

  final ToursQuantity _value;
  // ignore: unused_field
  final $Res Function(ToursQuantity) _then;

  @override
  $Res call({
    Object? tourTypeId = freezed,
    Object? tourTypeName = freezed,
    Object? tourTypeImageUrl = freezed,
    Object? toursQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      tourTypeId: tourTypeId == freezed
          ? _value.tourTypeId
          : tourTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      tourTypeName: tourTypeName == freezed
          ? _value.tourTypeName
          : tourTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      tourTypeImageUrl: tourTypeImageUrl == freezed
          ? _value.tourTypeImageUrl
          : tourTypeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toursQuantity: toursQuantity == freezed
          ? _value.toursQuantity
          : toursQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ToursQuantityCopyWith<$Res>
    implements $ToursQuantityCopyWith<$Res> {
  factory _$ToursQuantityCopyWith(
          _ToursQuantity value, $Res Function(_ToursQuantity) then) =
      __$ToursQuantityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int tourTypeId,
      @HiveField(1) String tourTypeName,
      @HiveField(2) String tourTypeImageUrl,
      @HiveField(3) int toursQuantity});
}

/// @nodoc
class __$ToursQuantityCopyWithImpl<$Res>
    extends _$ToursQuantityCopyWithImpl<$Res>
    implements _$ToursQuantityCopyWith<$Res> {
  __$ToursQuantityCopyWithImpl(
      _ToursQuantity _value, $Res Function(_ToursQuantity) _then)
      : super(_value, (v) => _then(v as _ToursQuantity));

  @override
  _ToursQuantity get _value => super._value as _ToursQuantity;

  @override
  $Res call({
    Object? tourTypeId = freezed,
    Object? tourTypeName = freezed,
    Object? tourTypeImageUrl = freezed,
    Object? toursQuantity = freezed,
  }) {
    return _then(_ToursQuantity(
      tourTypeId: tourTypeId == freezed
          ? _value.tourTypeId
          : tourTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      tourTypeName: tourTypeName == freezed
          ? _value.tourTypeName
          : tourTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      tourTypeImageUrl: tourTypeImageUrl == freezed
          ? _value.tourTypeImageUrl
          : tourTypeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toursQuantity: toursQuantity == freezed
          ? _value.toursQuantity
          : toursQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.toursQuantity)
class _$_ToursQuantity implements _ToursQuantity {
  _$_ToursQuantity(
      {@HiveField(0) this.tourTypeId = -1,
      @HiveField(1) this.tourTypeName = '',
      @HiveField(2) this.tourTypeImageUrl = '',
      @HiveField(3) this.toursQuantity = -1});

  factory _$_ToursQuantity.fromJson(Map<String, dynamic> json) =>
      _$_$_ToursQuantityFromJson(json);

  @JsonKey(defaultValue: -1)
  @override
  @HiveField(0)
  final int tourTypeId;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String tourTypeName;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String tourTypeImageUrl;
  @JsonKey(defaultValue: -1)
  @override
  @HiveField(3)
  final int toursQuantity;

  @override
  String toString() {
    return 'ToursQuantity(tourTypeId: $tourTypeId, tourTypeName: $tourTypeName, tourTypeImageUrl: $tourTypeImageUrl, toursQuantity: $toursQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToursQuantity &&
            (identical(other.tourTypeId, tourTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.tourTypeId, tourTypeId)) &&
            (identical(other.tourTypeName, tourTypeName) ||
                const DeepCollectionEquality()
                    .equals(other.tourTypeName, tourTypeName)) &&
            (identical(other.tourTypeImageUrl, tourTypeImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.tourTypeImageUrl, tourTypeImageUrl)) &&
            (identical(other.toursQuantity, toursQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.toursQuantity, toursQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tourTypeId) ^
      const DeepCollectionEquality().hash(tourTypeName) ^
      const DeepCollectionEquality().hash(tourTypeImageUrl) ^
      const DeepCollectionEquality().hash(toursQuantity);

  @JsonKey(ignore: true)
  @override
  _$ToursQuantityCopyWith<_ToursQuantity> get copyWith =>
      __$ToursQuantityCopyWithImpl<_ToursQuantity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToursQuantityToJson(this);
  }
}

abstract class _ToursQuantity implements ToursQuantity {
  factory _ToursQuantity(
      {@HiveField(0) int tourTypeId,
      @HiveField(1) String tourTypeName,
      @HiveField(2) String tourTypeImageUrl,
      @HiveField(3) int toursQuantity}) = _$_ToursQuantity;

  factory _ToursQuantity.fromJson(Map<String, dynamic> json) =
      _$_ToursQuantity.fromJson;

  @override
  @HiveField(0)
  int get tourTypeId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get tourTypeName => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get tourTypeImageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  int get toursQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ToursQuantityCopyWith<_ToursQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

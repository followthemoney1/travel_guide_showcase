// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sight_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SightResponse _$SightResponseFromJson(Map<String, dynamic> json) {
  return _SightResponse.fromJson(json);
}

/// @nodoc
class _$SightResponseTearOff {
  const _$SightResponseTearOff();

  _SightResponse call(
      {@HiveField(0) int id = 0,
      @HiveField(1) List<String> imageUrl = const [],
      @HiveField(2) String name = '',
      @HiveField(3) String description = '',
      @HiveField(4) List<Tour> recommendedTours = const []}) {
    return _SightResponse(
      id: id,
      imageUrl: imageUrl,
      name: name,
      description: description,
      recommendedTours: recommendedTours,
    );
  }

  SightResponse fromJson(Map<String, Object> json) {
    return SightResponse.fromJson(json);
  }
}

/// @nodoc
const $SightResponse = _$SightResponseTearOff();

/// @nodoc
mixin _$SightResponse {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get imageUrl => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String get description => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SightResponseCopyWith<SightResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightResponseCopyWith<$Res> {
  factory $SightResponseCopyWith(
          SightResponse value, $Res Function(SightResponse) then) =
      _$SightResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String description,
      @HiveField(4) List<Tour> recommendedTours});
}

/// @nodoc
class _$SightResponseCopyWithImpl<$Res>
    implements $SightResponseCopyWith<$Res> {
  _$SightResponseCopyWithImpl(this._value, this._then);

  final SightResponse _value;
  // ignore: unused_field
  final $Res Function(SightResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? recommendedTours = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
abstract class _$SightResponseCopyWith<$Res>
    implements $SightResponseCopyWith<$Res> {
  factory _$SightResponseCopyWith(
          _SightResponse value, $Res Function(_SightResponse) then) =
      __$SightResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String description,
      @HiveField(4) List<Tour> recommendedTours});
}

/// @nodoc
class __$SightResponseCopyWithImpl<$Res>
    extends _$SightResponseCopyWithImpl<$Res>
    implements _$SightResponseCopyWith<$Res> {
  __$SightResponseCopyWithImpl(
      _SightResponse _value, $Res Function(_SightResponse) _then)
      : super(_value, (v) => _then(v as _SightResponse));

  @override
  _SightResponse get _value => super._value as _SightResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? recommendedTours = freezed,
  }) {
    return _then(_SightResponse(
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedTours: recommendedTours == freezed
          ? _value.recommendedTours
          : recommendedTours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.sightResponse)
class _$_SightResponse implements _SightResponse {
  _$_SightResponse(
      {@HiveField(0) this.id = 0,
      @HiveField(1) this.imageUrl = const [],
      @HiveField(2) this.name = '',
      @HiveField(3) this.description = '',
      @HiveField(4) this.recommendedTours = const []});

  factory _$_SightResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SightResponseFromJson(json);

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
  final String description;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(4)
  final List<Tour> recommendedTours;

  @override
  String toString() {
    return 'SightResponse(id: $id, imageUrl: $imageUrl, name: $name, description: $description, recommendedTours: $recommendedTours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SightResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.recommendedTours, recommendedTours) ||
                const DeepCollectionEquality()
                    .equals(other.recommendedTours, recommendedTours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(recommendedTours);

  @JsonKey(ignore: true)
  @override
  _$SightResponseCopyWith<_SightResponse> get copyWith =>
      __$SightResponseCopyWithImpl<_SightResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SightResponseToJson(this);
  }
}

abstract class _SightResponse implements SightResponse {
  factory _SightResponse(
      {@HiveField(0) int id,
      @HiveField(1) List<String> imageUrl,
      @HiveField(2) String name,
      @HiveField(3) String description,
      @HiveField(4) List<Tour> recommendedTours}) = _$_SightResponse;

  factory _SightResponse.fromJson(Map<String, dynamic> json) =
      _$_SightResponse.fromJson;

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
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  List<Tour> get recommendedTours => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SightResponseCopyWith<_SightResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetSightDataBody _$GetSightDataBodyFromJson(Map<String, dynamic> json) {
  return _GetSightDataBody.fromJson(json);
}

/// @nodoc
class _$GetSightDataBodyTearOff {
  const _$GetSightDataBodyTearOff();

  _GetSightDataBody call(String language, String attractionId) {
    return _GetSightDataBody(
      language,
      attractionId,
    );
  }

  GetSightDataBody fromJson(Map<String, Object> json) {
    return GetSightDataBody.fromJson(json);
  }
}

/// @nodoc
const $GetSightDataBody = _$GetSightDataBodyTearOff();

/// @nodoc
mixin _$GetSightDataBody {
  String get language => throw _privateConstructorUsedError;
  String get attractionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSightDataBodyCopyWith<GetSightDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSightDataBodyCopyWith<$Res> {
  factory $GetSightDataBodyCopyWith(
          GetSightDataBody value, $Res Function(GetSightDataBody) then) =
      _$GetSightDataBodyCopyWithImpl<$Res>;
  $Res call({String language, String attractionId});
}

/// @nodoc
class _$GetSightDataBodyCopyWithImpl<$Res>
    implements $GetSightDataBodyCopyWith<$Res> {
  _$GetSightDataBodyCopyWithImpl(this._value, this._then);

  final GetSightDataBody _value;
  // ignore: unused_field
  final $Res Function(GetSightDataBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? attractionId = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      attractionId: attractionId == freezed
          ? _value.attractionId
          : attractionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetSightDataBodyCopyWith<$Res>
    implements $GetSightDataBodyCopyWith<$Res> {
  factory _$GetSightDataBodyCopyWith(
          _GetSightDataBody value, $Res Function(_GetSightDataBody) then) =
      __$GetSightDataBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String attractionId});
}

/// @nodoc
class __$GetSightDataBodyCopyWithImpl<$Res>
    extends _$GetSightDataBodyCopyWithImpl<$Res>
    implements _$GetSightDataBodyCopyWith<$Res> {
  __$GetSightDataBodyCopyWithImpl(
      _GetSightDataBody _value, $Res Function(_GetSightDataBody) _then)
      : super(_value, (v) => _then(v as _GetSightDataBody));

  @override
  _GetSightDataBody get _value => super._value as _GetSightDataBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? attractionId = freezed,
  }) {
    return _then(_GetSightDataBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      attractionId == freezed
          ? _value.attractionId
          : attractionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetSightDataBody implements _GetSightDataBody {
  _$_GetSightDataBody(this.language, this.attractionId);

  factory _$_GetSightDataBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GetSightDataBodyFromJson(json);

  @override
  final String language;
  @override
  final String attractionId;

  @override
  String toString() {
    return 'GetSightDataBody(language: $language, attractionId: $attractionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSightDataBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.attractionId, attractionId) ||
                const DeepCollectionEquality()
                    .equals(other.attractionId, attractionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(attractionId);

  @JsonKey(ignore: true)
  @override
  _$GetSightDataBodyCopyWith<_GetSightDataBody> get copyWith =>
      __$GetSightDataBodyCopyWithImpl<_GetSightDataBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetSightDataBodyToJson(this);
  }
}

abstract class _GetSightDataBody implements GetSightDataBody {
  factory _GetSightDataBody(String language, String attractionId) =
      _$_GetSightDataBody;

  factory _GetSightDataBody.fromJson(Map<String, dynamic> json) =
      _$_GetSightDataBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get attractionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSightDataBodyCopyWith<_GetSightDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

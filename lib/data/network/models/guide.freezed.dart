// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuideDataBody _$GuideDataBodyFromJson(Map<String, dynamic> json) {
  return _GuideDataBody.fromJson(json);
}

/// @nodoc
class _$GuideDataBodyTearOff {
  const _$GuideDataBodyTearOff();

  _GuideDataBody call(String id, String language) {
    return _GuideDataBody(
      id,
      language,
    );
  }

  GuideDataBody fromJson(Map<String, Object> json) {
    return GuideDataBody.fromJson(json);
  }
}

/// @nodoc
const $GuideDataBody = _$GuideDataBodyTearOff();

/// @nodoc
mixin _$GuideDataBody {
  String get id => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideDataBodyCopyWith<GuideDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideDataBodyCopyWith<$Res> {
  factory $GuideDataBodyCopyWith(
          GuideDataBody value, $Res Function(GuideDataBody) then) =
      _$GuideDataBodyCopyWithImpl<$Res>;
  $Res call({String id, String language});
}

/// @nodoc
class _$GuideDataBodyCopyWithImpl<$Res>
    implements $GuideDataBodyCopyWith<$Res> {
  _$GuideDataBodyCopyWithImpl(this._value, this._then);

  final GuideDataBody _value;
  // ignore: unused_field
  final $Res Function(GuideDataBody) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GuideDataBodyCopyWith<$Res>
    implements $GuideDataBodyCopyWith<$Res> {
  factory _$GuideDataBodyCopyWith(
          _GuideDataBody value, $Res Function(_GuideDataBody) then) =
      __$GuideDataBodyCopyWithImpl<$Res>;
  @override
  $Res call({String id, String language});
}

/// @nodoc
class __$GuideDataBodyCopyWithImpl<$Res>
    extends _$GuideDataBodyCopyWithImpl<$Res>
    implements _$GuideDataBodyCopyWith<$Res> {
  __$GuideDataBodyCopyWithImpl(
      _GuideDataBody _value, $Res Function(_GuideDataBody) _then)
      : super(_value, (v) => _then(v as _GuideDataBody));

  @override
  _GuideDataBody get _value => super._value as _GuideDataBody;

  @override
  $Res call({
    Object? id = freezed,
    Object? language = freezed,
  }) {
    return _then(_GuideDataBody(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_GuideDataBody implements _GuideDataBody {
  _$_GuideDataBody(this.id, this.language);

  factory _$_GuideDataBody.fromJson(Map<String, dynamic> json) =>
      _$_$_GuideDataBodyFromJson(json);

  @override
  final String id;
  @override
  final String language;

  @override
  String toString() {
    return 'GuideDataBody(id: $id, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuideDataBody &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$GuideDataBodyCopyWith<_GuideDataBody> get copyWith =>
      __$GuideDataBodyCopyWithImpl<_GuideDataBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GuideDataBodyToJson(this);
  }
}

abstract class _GuideDataBody implements GuideDataBody {
  factory _GuideDataBody(String id, String language) = _$_GuideDataBody;

  factory _GuideDataBody.fromJson(Map<String, dynamic> json) =
      _$_GuideDataBody.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GuideDataBodyCopyWith<_GuideDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateGuideRateBody _$UpdateGuideRateBodyFromJson(Map<String, dynamic> json) {
  return _UpdateGuideRateBody.fromJson(json);
}

/// @nodoc
class _$UpdateGuideRateBodyTearOff {
  const _$UpdateGuideRateBodyTearOff();

  _UpdateGuideRateBody call(String guideId, double rate) {
    return _UpdateGuideRateBody(
      guideId,
      rate,
    );
  }

  UpdateGuideRateBody fromJson(Map<String, Object> json) {
    return UpdateGuideRateBody.fromJson(json);
  }
}

/// @nodoc
const $UpdateGuideRateBody = _$UpdateGuideRateBodyTearOff();

/// @nodoc
mixin _$UpdateGuideRateBody {
  String get guideId => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateGuideRateBodyCopyWith<UpdateGuideRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateGuideRateBodyCopyWith<$Res> {
  factory $UpdateGuideRateBodyCopyWith(
          UpdateGuideRateBody value, $Res Function(UpdateGuideRateBody) then) =
      _$UpdateGuideRateBodyCopyWithImpl<$Res>;
  $Res call({String guideId, double rate});
}

/// @nodoc
class _$UpdateGuideRateBodyCopyWithImpl<$Res>
    implements $UpdateGuideRateBodyCopyWith<$Res> {
  _$UpdateGuideRateBodyCopyWithImpl(this._value, this._then);

  final UpdateGuideRateBody _value;
  // ignore: unused_field
  final $Res Function(UpdateGuideRateBody) _then;

  @override
  $Res call({
    Object? guideId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      guideId: guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UpdateGuideRateBodyCopyWith<$Res>
    implements $UpdateGuideRateBodyCopyWith<$Res> {
  factory _$UpdateGuideRateBodyCopyWith(_UpdateGuideRateBody value,
          $Res Function(_UpdateGuideRateBody) then) =
      __$UpdateGuideRateBodyCopyWithImpl<$Res>;
  @override
  $Res call({String guideId, double rate});
}

/// @nodoc
class __$UpdateGuideRateBodyCopyWithImpl<$Res>
    extends _$UpdateGuideRateBodyCopyWithImpl<$Res>
    implements _$UpdateGuideRateBodyCopyWith<$Res> {
  __$UpdateGuideRateBodyCopyWithImpl(
      _UpdateGuideRateBody _value, $Res Function(_UpdateGuideRateBody) _then)
      : super(_value, (v) => _then(v as _UpdateGuideRateBody));

  @override
  _UpdateGuideRateBody get _value => super._value as _UpdateGuideRateBody;

  @override
  $Res call({
    Object? guideId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_UpdateGuideRateBody(
      guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
      rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateGuideRateBody implements _UpdateGuideRateBody {
  _$_UpdateGuideRateBody(this.guideId, this.rate);

  factory _$_UpdateGuideRateBody.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateGuideRateBodyFromJson(json);

  @override
  final String guideId;
  @override
  final double rate;

  @override
  String toString() {
    return 'UpdateGuideRateBody(guideId: $guideId, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGuideRateBody &&
            (identical(other.guideId, guideId) ||
                const DeepCollectionEquality()
                    .equals(other.guideId, guideId)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guideId) ^
      const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$UpdateGuideRateBodyCopyWith<_UpdateGuideRateBody> get copyWith =>
      __$UpdateGuideRateBodyCopyWithImpl<_UpdateGuideRateBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateGuideRateBodyToJson(this);
  }
}

abstract class _UpdateGuideRateBody implements UpdateGuideRateBody {
  factory _UpdateGuideRateBody(String guideId, double rate) =
      _$_UpdateGuideRateBody;

  factory _UpdateGuideRateBody.fromJson(Map<String, dynamic> json) =
      _$_UpdateGuideRateBody.fromJson;

  @override
  String get guideId => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateGuideRateBodyCopyWith<_UpdateGuideRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateRateResponse _$UpdateRateResponseFromJson(Map<String, dynamic> json) {
  return _UpdateRateResponse.fromJson(json);
}

/// @nodoc
class _$UpdateRateResponseTearOff {
  const _$UpdateRateResponseTearOff();

  _UpdateRateResponse call(double averageRate) {
    return _UpdateRateResponse(
      averageRate,
    );
  }

  UpdateRateResponse fromJson(Map<String, Object> json) {
    return UpdateRateResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateRateResponse = _$UpdateRateResponseTearOff();

/// @nodoc
mixin _$UpdateRateResponse {
  double get averageRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRateResponseCopyWith<UpdateRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRateResponseCopyWith<$Res> {
  factory $UpdateRateResponseCopyWith(
          UpdateRateResponse value, $Res Function(UpdateRateResponse) then) =
      _$UpdateRateResponseCopyWithImpl<$Res>;
  $Res call({double averageRate});
}

/// @nodoc
class _$UpdateRateResponseCopyWithImpl<$Res>
    implements $UpdateRateResponseCopyWith<$Res> {
  _$UpdateRateResponseCopyWithImpl(this._value, this._then);

  final UpdateRateResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateRateResponse) _then;

  @override
  $Res call({
    Object? averageRate = freezed,
  }) {
    return _then(_value.copyWith(
      averageRate: averageRate == freezed
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UpdateRateResponseCopyWith<$Res>
    implements $UpdateRateResponseCopyWith<$Res> {
  factory _$UpdateRateResponseCopyWith(
          _UpdateRateResponse value, $Res Function(_UpdateRateResponse) then) =
      __$UpdateRateResponseCopyWithImpl<$Res>;
  @override
  $Res call({double averageRate});
}

/// @nodoc
class __$UpdateRateResponseCopyWithImpl<$Res>
    extends _$UpdateRateResponseCopyWithImpl<$Res>
    implements _$UpdateRateResponseCopyWith<$Res> {
  __$UpdateRateResponseCopyWithImpl(
      _UpdateRateResponse _value, $Res Function(_UpdateRateResponse) _then)
      : super(_value, (v) => _then(v as _UpdateRateResponse));

  @override
  _UpdateRateResponse get _value => super._value as _UpdateRateResponse;

  @override
  $Res call({
    Object? averageRate = freezed,
  }) {
    return _then(_UpdateRateResponse(
      averageRate == freezed
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateRateResponse implements _UpdateRateResponse {
  _$_UpdateRateResponse(this.averageRate);

  factory _$_UpdateRateResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateRateResponseFromJson(json);

  @override
  final double averageRate;

  @override
  String toString() {
    return 'UpdateRateResponse(averageRate: $averageRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateRateResponse &&
            (identical(other.averageRate, averageRate) ||
                const DeepCollectionEquality()
                    .equals(other.averageRate, averageRate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(averageRate);

  @JsonKey(ignore: true)
  @override
  _$UpdateRateResponseCopyWith<_UpdateRateResponse> get copyWith =>
      __$UpdateRateResponseCopyWithImpl<_UpdateRateResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateRateResponseToJson(this);
  }
}

abstract class _UpdateRateResponse implements UpdateRateResponse {
  factory _UpdateRateResponse(double averageRate) = _$_UpdateRateResponse;

  factory _UpdateRateResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateRateResponse.fromJson;

  @override
  double get averageRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateRateResponseCopyWith<_UpdateRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

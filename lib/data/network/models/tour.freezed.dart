// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTourRateBody _$UpdateTourRateBodyFromJson(Map<String, dynamic> json) {
  return _UpdateTourRateBody.fromJson(json);
}

/// @nodoc
class _$UpdateTourRateBodyTearOff {
  const _$UpdateTourRateBodyTearOff();

  _UpdateTourRateBody call(String audioTourId, double rate) {
    return _UpdateTourRateBody(
      audioTourId,
      rate,
    );
  }

  UpdateTourRateBody fromJson(Map<String, Object> json) {
    return UpdateTourRateBody.fromJson(json);
  }
}

/// @nodoc
const $UpdateTourRateBody = _$UpdateTourRateBodyTearOff();

/// @nodoc
mixin _$UpdateTourRateBody {
  String get audioTourId => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTourRateBodyCopyWith<UpdateTourRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTourRateBodyCopyWith<$Res> {
  factory $UpdateTourRateBodyCopyWith(
          UpdateTourRateBody value, $Res Function(UpdateTourRateBody) then) =
      _$UpdateTourRateBodyCopyWithImpl<$Res>;
  $Res call({String audioTourId, double rate});
}

/// @nodoc
class _$UpdateTourRateBodyCopyWithImpl<$Res>
    implements $UpdateTourRateBodyCopyWith<$Res> {
  _$UpdateTourRateBodyCopyWithImpl(this._value, this._then);

  final UpdateTourRateBody _value;
  // ignore: unused_field
  final $Res Function(UpdateTourRateBody) _then;

  @override
  $Res call({
    Object? audioTourId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      audioTourId: audioTourId == freezed
          ? _value.audioTourId
          : audioTourId // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UpdateTourRateBodyCopyWith<$Res>
    implements $UpdateTourRateBodyCopyWith<$Res> {
  factory _$UpdateTourRateBodyCopyWith(
          _UpdateTourRateBody value, $Res Function(_UpdateTourRateBody) then) =
      __$UpdateTourRateBodyCopyWithImpl<$Res>;
  @override
  $Res call({String audioTourId, double rate});
}

/// @nodoc
class __$UpdateTourRateBodyCopyWithImpl<$Res>
    extends _$UpdateTourRateBodyCopyWithImpl<$Res>
    implements _$UpdateTourRateBodyCopyWith<$Res> {
  __$UpdateTourRateBodyCopyWithImpl(
      _UpdateTourRateBody _value, $Res Function(_UpdateTourRateBody) _then)
      : super(_value, (v) => _then(v as _UpdateTourRateBody));

  @override
  _UpdateTourRateBody get _value => super._value as _UpdateTourRateBody;

  @override
  $Res call({
    Object? audioTourId = freezed,
    Object? rate = freezed,
  }) {
    return _then(_UpdateTourRateBody(
      audioTourId == freezed
          ? _value.audioTourId
          : audioTourId // ignore: cast_nullable_to_non_nullable
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
class _$_UpdateTourRateBody implements _UpdateTourRateBody {
  _$_UpdateTourRateBody(this.audioTourId, this.rate);

  factory _$_UpdateTourRateBody.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateTourRateBodyFromJson(json);

  @override
  final String audioTourId;
  @override
  final double rate;

  @override
  String toString() {
    return 'UpdateTourRateBody(audioTourId: $audioTourId, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTourRateBody &&
            (identical(other.audioTourId, audioTourId) ||
                const DeepCollectionEquality()
                    .equals(other.audioTourId, audioTourId)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(audioTourId) ^
      const DeepCollectionEquality().hash(rate);

  @JsonKey(ignore: true)
  @override
  _$UpdateTourRateBodyCopyWith<_UpdateTourRateBody> get copyWith =>
      __$UpdateTourRateBodyCopyWithImpl<_UpdateTourRateBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateTourRateBodyToJson(this);
  }
}

abstract class _UpdateTourRateBody implements UpdateTourRateBody {
  factory _UpdateTourRateBody(String audioTourId, double rate) =
      _$_UpdateTourRateBody;

  factory _UpdateTourRateBody.fromJson(Map<String, dynamic> json) =
      _$_UpdateTourRateBody.fromJson;

  @override
  String get audioTourId => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateTourRateBodyCopyWith<_UpdateTourRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

AddTourToFavoritesBody _$AddTourToFavoritesBodyFromJson(
    Map<String, dynamic> json) {
  return _AddTourToFavoritesBody.fromJson(json);
}

/// @nodoc
class _$AddTourToFavoritesBodyTearOff {
  const _$AddTourToFavoritesBodyTearOff();

  _AddTourToFavoritesBody call(int tourId, bool isFavourite) {
    return _AddTourToFavoritesBody(
      tourId,
      isFavourite,
    );
  }

  AddTourToFavoritesBody fromJson(Map<String, Object> json) {
    return AddTourToFavoritesBody.fromJson(json);
  }
}

/// @nodoc
const $AddTourToFavoritesBody = _$AddTourToFavoritesBodyTearOff();

/// @nodoc
mixin _$AddTourToFavoritesBody {
  int get tourId => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTourToFavoritesBodyCopyWith<AddTourToFavoritesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTourToFavoritesBodyCopyWith<$Res> {
  factory $AddTourToFavoritesBodyCopyWith(AddTourToFavoritesBody value,
          $Res Function(AddTourToFavoritesBody) then) =
      _$AddTourToFavoritesBodyCopyWithImpl<$Res>;
  $Res call({int tourId, bool isFavourite});
}

/// @nodoc
class _$AddTourToFavoritesBodyCopyWithImpl<$Res>
    implements $AddTourToFavoritesBodyCopyWith<$Res> {
  _$AddTourToFavoritesBodyCopyWithImpl(this._value, this._then);

  final AddTourToFavoritesBody _value;
  // ignore: unused_field
  final $Res Function(AddTourToFavoritesBody) _then;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddTourToFavoritesBodyCopyWith<$Res>
    implements $AddTourToFavoritesBodyCopyWith<$Res> {
  factory _$AddTourToFavoritesBodyCopyWith(_AddTourToFavoritesBody value,
          $Res Function(_AddTourToFavoritesBody) then) =
      __$AddTourToFavoritesBodyCopyWithImpl<$Res>;
  @override
  $Res call({int tourId, bool isFavourite});
}

/// @nodoc
class __$AddTourToFavoritesBodyCopyWithImpl<$Res>
    extends _$AddTourToFavoritesBodyCopyWithImpl<$Res>
    implements _$AddTourToFavoritesBodyCopyWith<$Res> {
  __$AddTourToFavoritesBodyCopyWithImpl(_AddTourToFavoritesBody _value,
      $Res Function(_AddTourToFavoritesBody) _then)
      : super(_value, (v) => _then(v as _AddTourToFavoritesBody));

  @override
  _AddTourToFavoritesBody get _value => super._value as _AddTourToFavoritesBody;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_AddTourToFavoritesBody(
      tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddTourToFavoritesBody implements _AddTourToFavoritesBody {
  _$_AddTourToFavoritesBody(this.tourId, this.isFavourite);

  factory _$_AddTourToFavoritesBody.fromJson(Map<String, dynamic> json) =>
      _$_$_AddTourToFavoritesBodyFromJson(json);

  @override
  final int tourId;
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'AddTourToFavoritesBody(tourId: $tourId, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddTourToFavoritesBody &&
            (identical(other.tourId, tourId) ||
                const DeepCollectionEquality().equals(other.tourId, tourId)) &&
            (identical(other.isFavourite, isFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourite, isFavourite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tourId) ^
      const DeepCollectionEquality().hash(isFavourite);

  @JsonKey(ignore: true)
  @override
  _$AddTourToFavoritesBodyCopyWith<_AddTourToFavoritesBody> get copyWith =>
      __$AddTourToFavoritesBodyCopyWithImpl<_AddTourToFavoritesBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddTourToFavoritesBodyToJson(this);
  }
}

abstract class _AddTourToFavoritesBody implements AddTourToFavoritesBody {
  factory _AddTourToFavoritesBody(int tourId, bool isFavourite) =
      _$_AddTourToFavoritesBody;

  factory _AddTourToFavoritesBody.fromJson(Map<String, dynamic> json) =
      _$_AddTourToFavoritesBody.fromJson;

  @override
  int get tourId => throw _privateConstructorUsedError;
  @override
  bool get isFavourite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddTourToFavoritesBodyCopyWith<_AddTourToFavoritesBody> get copyWith =>
      throw _privateConstructorUsedError;
}

AddTourToFavoritesResponse _$AddTourToFavoritesResponseFromJson(
    Map<String, dynamic> json) {
  return _AddTourToFavoritesResponse.fromJson(json);
}

/// @nodoc
class _$AddTourToFavoritesResponseTearOff {
  const _$AddTourToFavoritesResponseTearOff();

  _AddTourToFavoritesResponse call(bool success) {
    return _AddTourToFavoritesResponse(
      success,
    );
  }

  AddTourToFavoritesResponse fromJson(Map<String, Object> json) {
    return AddTourToFavoritesResponse.fromJson(json);
  }
}

/// @nodoc
const $AddTourToFavoritesResponse = _$AddTourToFavoritesResponseTearOff();

/// @nodoc
mixin _$AddTourToFavoritesResponse {
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTourToFavoritesResponseCopyWith<AddTourToFavoritesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTourToFavoritesResponseCopyWith<$Res> {
  factory $AddTourToFavoritesResponseCopyWith(AddTourToFavoritesResponse value,
          $Res Function(AddTourToFavoritesResponse) then) =
      _$AddTourToFavoritesResponseCopyWithImpl<$Res>;
  $Res call({bool success});
}

/// @nodoc
class _$AddTourToFavoritesResponseCopyWithImpl<$Res>
    implements $AddTourToFavoritesResponseCopyWith<$Res> {
  _$AddTourToFavoritesResponseCopyWithImpl(this._value, this._then);

  final AddTourToFavoritesResponse _value;
  // ignore: unused_field
  final $Res Function(AddTourToFavoritesResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddTourToFavoritesResponseCopyWith<$Res>
    implements $AddTourToFavoritesResponseCopyWith<$Res> {
  factory _$AddTourToFavoritesResponseCopyWith(
          _AddTourToFavoritesResponse value,
          $Res Function(_AddTourToFavoritesResponse) then) =
      __$AddTourToFavoritesResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success});
}

/// @nodoc
class __$AddTourToFavoritesResponseCopyWithImpl<$Res>
    extends _$AddTourToFavoritesResponseCopyWithImpl<$Res>
    implements _$AddTourToFavoritesResponseCopyWith<$Res> {
  __$AddTourToFavoritesResponseCopyWithImpl(_AddTourToFavoritesResponse _value,
      $Res Function(_AddTourToFavoritesResponse) _then)
      : super(_value, (v) => _then(v as _AddTourToFavoritesResponse));

  @override
  _AddTourToFavoritesResponse get _value =>
      super._value as _AddTourToFavoritesResponse;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_AddTourToFavoritesResponse(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddTourToFavoritesResponse implements _AddTourToFavoritesResponse {
  _$_AddTourToFavoritesResponse(this.success);

  factory _$_AddTourToFavoritesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AddTourToFavoritesResponseFromJson(json);

  @override
  final bool success;

  @override
  String toString() {
    return 'AddTourToFavoritesResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddTourToFavoritesResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$AddTourToFavoritesResponseCopyWith<_AddTourToFavoritesResponse>
      get copyWith => __$AddTourToFavoritesResponseCopyWithImpl<
          _AddTourToFavoritesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddTourToFavoritesResponseToJson(this);
  }
}

abstract class _AddTourToFavoritesResponse
    implements AddTourToFavoritesResponse {
  factory _AddTourToFavoritesResponse(bool success) =
      _$_AddTourToFavoritesResponse;

  factory _AddTourToFavoritesResponse.fromJson(Map<String, dynamic> json) =
      _$_AddTourToFavoritesResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddTourToFavoritesResponseCopyWith<_AddTourToFavoritesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

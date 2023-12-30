// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TourMapStateTearOff {
  const _$TourMapStateTearOff();

  _Initial initial(SightRouteItem sight) {
    return _Initial(
      sight,
    );
  }

  _LocationUpdated locationUpdated(Position pos) {
    return _LocationUpdated(
      pos,
    );
  }

  _Error error(ErrorResponse error) {
    return _Error(
      error,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _TextVersion textVersion() {
    return const _TextVersion();
  }

  _AccessTimeUpdated accessTimeUpdated() {
    return const _AccessTimeUpdated();
  }

  _LocationPermission locationPermission() {
    return const _LocationPermission();
  }

  _TimesUp timesUp() {
    return const _TimesUp();
  }

  _TourAudioIsMissing tourAudioIsMissing() {
    return const _TourAudioIsMissing();
  }
}

/// @nodoc
const $TourMapState = _$TourMapStateTearOff();

/// @nodoc
mixin _$TourMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourMapStateCopyWith<$Res> {
  factory $TourMapStateCopyWith(
          TourMapState value, $Res Function(TourMapState) then) =
      _$TourMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TourMapStateCopyWithImpl<$Res> implements $TourMapStateCopyWith<$Res> {
  _$TourMapStateCopyWithImpl(this._value, this._then);

  final TourMapState _value;
  // ignore: unused_field
  final $Res Function(TourMapState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({SightRouteItem sight});

  $SightRouteItemCopyWith<$Res> get sight;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TourMapStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? sight = freezed,
  }) {
    return _then(_Initial(
      sight == freezed
          ? _value.sight
          : sight // ignore: cast_nullable_to_non_nullable
              as SightRouteItem,
    ));
  }

  @override
  $SightRouteItemCopyWith<$Res> get sight {
    return $SightRouteItemCopyWith<$Res>(_value.sight, (value) {
      return _then(_value.copyWith(sight: value));
    });
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.sight);

  @override
  final SightRouteItem sight;

  @override
  String toString() {
    return 'TourMapState.initial(sight: $sight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.sight, sight) ||
                const DeepCollectionEquality().equals(other.sight, sight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sight);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return initial(sight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(sight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TourMapState {
  const factory _Initial(SightRouteItem sight) = _$_Initial;

  SightRouteItem get sight => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationUpdatedCopyWith<$Res> {
  factory _$LocationUpdatedCopyWith(
          _LocationUpdated value, $Res Function(_LocationUpdated) then) =
      __$LocationUpdatedCopyWithImpl<$Res>;
  $Res call({Position pos});
}

/// @nodoc
class __$LocationUpdatedCopyWithImpl<$Res>
    extends _$TourMapStateCopyWithImpl<$Res>
    implements _$LocationUpdatedCopyWith<$Res> {
  __$LocationUpdatedCopyWithImpl(
      _LocationUpdated _value, $Res Function(_LocationUpdated) _then)
      : super(_value, (v) => _then(v as _LocationUpdated));

  @override
  _LocationUpdated get _value => super._value as _LocationUpdated;

  @override
  $Res call({
    Object? pos = freezed,
  }) {
    return _then(_LocationUpdated(
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_LocationUpdated implements _LocationUpdated {
  const _$_LocationUpdated(this.pos);

  @override
  final Position pos;

  @override
  String toString() {
    return 'TourMapState.locationUpdated(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationUpdated &&
            (identical(other.pos, pos) ||
                const DeepCollectionEquality().equals(other.pos, pos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pos);

  @JsonKey(ignore: true)
  @override
  _$LocationUpdatedCopyWith<_LocationUpdated> get copyWith =>
      __$LocationUpdatedCopyWithImpl<_LocationUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return locationUpdated(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class _LocationUpdated implements TourMapState {
  const factory _LocationUpdated(Position pos) = _$_LocationUpdated;

  Position get pos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationUpdatedCopyWith<_LocationUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse error});

  $ErrorResponseCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TourMapStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }

  @override
  $ErrorResponseCopyWith<$Res> get error {
    return $ErrorResponseCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'TourMapState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TourMapState {
  const factory _Error(ErrorResponse error) = _$_Error;

  ErrorResponse get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TourMapStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TourMapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TourMapState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$TextVersionCopyWith<$Res> {
  factory _$TextVersionCopyWith(
          _TextVersion value, $Res Function(_TextVersion) then) =
      __$TextVersionCopyWithImpl<$Res>;
}

/// @nodoc
class __$TextVersionCopyWithImpl<$Res> extends _$TourMapStateCopyWithImpl<$Res>
    implements _$TextVersionCopyWith<$Res> {
  __$TextVersionCopyWithImpl(
      _TextVersion _value, $Res Function(_TextVersion) _then)
      : super(_value, (v) => _then(v as _TextVersion));

  @override
  _TextVersion get _value => super._value as _TextVersion;
}

/// @nodoc

class _$_TextVersion implements _TextVersion {
  const _$_TextVersion();

  @override
  String toString() {
    return 'TourMapState.textVersion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TextVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return textVersion();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (textVersion != null) {
      return textVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return textVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (textVersion != null) {
      return textVersion(this);
    }
    return orElse();
  }
}

abstract class _TextVersion implements TourMapState {
  const factory _TextVersion() = _$_TextVersion;
}

/// @nodoc
abstract class _$AccessTimeUpdatedCopyWith<$Res> {
  factory _$AccessTimeUpdatedCopyWith(
          _AccessTimeUpdated value, $Res Function(_AccessTimeUpdated) then) =
      __$AccessTimeUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AccessTimeUpdatedCopyWithImpl<$Res>
    extends _$TourMapStateCopyWithImpl<$Res>
    implements _$AccessTimeUpdatedCopyWith<$Res> {
  __$AccessTimeUpdatedCopyWithImpl(
      _AccessTimeUpdated _value, $Res Function(_AccessTimeUpdated) _then)
      : super(_value, (v) => _then(v as _AccessTimeUpdated));

  @override
  _AccessTimeUpdated get _value => super._value as _AccessTimeUpdated;
}

/// @nodoc

class _$_AccessTimeUpdated implements _AccessTimeUpdated {
  const _$_AccessTimeUpdated();

  @override
  String toString() {
    return 'TourMapState.accessTimeUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AccessTimeUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return accessTimeUpdated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (accessTimeUpdated != null) {
      return accessTimeUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return accessTimeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (accessTimeUpdated != null) {
      return accessTimeUpdated(this);
    }
    return orElse();
  }
}

abstract class _AccessTimeUpdated implements TourMapState {
  const factory _AccessTimeUpdated() = _$_AccessTimeUpdated;
}

/// @nodoc
abstract class _$LocationPermissionCopyWith<$Res> {
  factory _$LocationPermissionCopyWith(
          _LocationPermission value, $Res Function(_LocationPermission) then) =
      __$LocationPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationPermissionCopyWithImpl<$Res>
    extends _$TourMapStateCopyWithImpl<$Res>
    implements _$LocationPermissionCopyWith<$Res> {
  __$LocationPermissionCopyWithImpl(
      _LocationPermission _value, $Res Function(_LocationPermission) _then)
      : super(_value, (v) => _then(v as _LocationPermission));

  @override
  _LocationPermission get _value => super._value as _LocationPermission;
}

/// @nodoc

class _$_LocationPermission implements _LocationPermission {
  const _$_LocationPermission();

  @override
  String toString() {
    return 'TourMapState.locationPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return locationPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (locationPermission != null) {
      return locationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return locationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (locationPermission != null) {
      return locationPermission(this);
    }
    return orElse();
  }
}

abstract class _LocationPermission implements TourMapState {
  const factory _LocationPermission() = _$_LocationPermission;
}

/// @nodoc
abstract class _$TimesUpCopyWith<$Res> {
  factory _$TimesUpCopyWith(_TimesUp value, $Res Function(_TimesUp) then) =
      __$TimesUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimesUpCopyWithImpl<$Res> extends _$TourMapStateCopyWithImpl<$Res>
    implements _$TimesUpCopyWith<$Res> {
  __$TimesUpCopyWithImpl(_TimesUp _value, $Res Function(_TimesUp) _then)
      : super(_value, (v) => _then(v as _TimesUp));

  @override
  _TimesUp get _value => super._value as _TimesUp;
}

/// @nodoc

class _$_TimesUp implements _TimesUp {
  const _$_TimesUp();

  @override
  String toString() {
    return 'TourMapState.timesUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TimesUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return timesUp();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (timesUp != null) {
      return timesUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return timesUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (timesUp != null) {
      return timesUp(this);
    }
    return orElse();
  }
}

abstract class _TimesUp implements TourMapState {
  const factory _TimesUp() = _$_TimesUp;
}

/// @nodoc
abstract class _$TourAudioIsMissingCopyWith<$Res> {
  factory _$TourAudioIsMissingCopyWith(
          _TourAudioIsMissing value, $Res Function(_TourAudioIsMissing) then) =
      __$TourAudioIsMissingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TourAudioIsMissingCopyWithImpl<$Res>
    extends _$TourMapStateCopyWithImpl<$Res>
    implements _$TourAudioIsMissingCopyWith<$Res> {
  __$TourAudioIsMissingCopyWithImpl(
      _TourAudioIsMissing _value, $Res Function(_TourAudioIsMissing) _then)
      : super(_value, (v) => _then(v as _TourAudioIsMissing));

  @override
  _TourAudioIsMissing get _value => super._value as _TourAudioIsMissing;
}

/// @nodoc

class _$_TourAudioIsMissing implements _TourAudioIsMissing {
  const _$_TourAudioIsMissing();

  @override
  String toString() {
    return 'TourMapState.tourAudioIsMissing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TourAudioIsMissing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SightRouteItem sight) initial,
    required TResult Function(Position pos) locationUpdated,
    required TResult Function(ErrorResponse error) error,
    required TResult Function() loading,
    required TResult Function() textVersion,
    required TResult Function() accessTimeUpdated,
    required TResult Function() locationPermission,
    required TResult Function() timesUp,
    required TResult Function() tourAudioIsMissing,
  }) {
    return tourAudioIsMissing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SightRouteItem sight)? initial,
    TResult Function(Position pos)? locationUpdated,
    TResult Function(ErrorResponse error)? error,
    TResult Function()? loading,
    TResult Function()? textVersion,
    TResult Function()? accessTimeUpdated,
    TResult Function()? locationPermission,
    TResult Function()? timesUp,
    TResult Function()? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (tourAudioIsMissing != null) {
      return tourAudioIsMissing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationUpdated value) locationUpdated,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TextVersion value) textVersion,
    required TResult Function(_AccessTimeUpdated value) accessTimeUpdated,
    required TResult Function(_LocationPermission value) locationPermission,
    required TResult Function(_TimesUp value) timesUp,
    required TResult Function(_TourAudioIsMissing value) tourAudioIsMissing,
  }) {
    return tourAudioIsMissing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationUpdated value)? locationUpdated,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_TextVersion value)? textVersion,
    TResult Function(_AccessTimeUpdated value)? accessTimeUpdated,
    TResult Function(_LocationPermission value)? locationPermission,
    TResult Function(_TimesUp value)? timesUp,
    TResult Function(_TourAudioIsMissing value)? tourAudioIsMissing,
    required TResult orElse(),
  }) {
    if (tourAudioIsMissing != null) {
      return tourAudioIsMissing(this);
    }
    return orElse();
  }
}

abstract class _TourAudioIsMissing implements TourMapState {
  const factory _TourAudioIsMissing() = _$_TourAudioIsMissing;
}

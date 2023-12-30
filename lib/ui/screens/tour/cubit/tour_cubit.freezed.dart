// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TourStateTearOff {
  const _$TourStateTearOff();

  _TourInitial tourInitial() {
    return _TourInitial();
  }

  _TourLoading tourLoading() {
    return _TourLoading();
  }

  _Error error(ErrorResponse errorResponse) {
    return _Error(
      errorResponse,
    );
  }

  _TourActivated tourActivated() {
    return _TourActivated();
  }

  _TourDownloaded tourDownloaded() {
    return _TourDownloaded();
  }

  _UpdateProgress updateProgress(Map<String, int> progress) {
    return _UpdateProgress(
      progress,
    );
  }
}

/// @nodoc
const $TourState = _$TourStateTearOff();

/// @nodoc
mixin _$TourState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourStateCopyWith<$Res> {
  factory $TourStateCopyWith(TourState value, $Res Function(TourState) then) =
      _$TourStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TourStateCopyWithImpl<$Res> implements $TourStateCopyWith<$Res> {
  _$TourStateCopyWithImpl(this._value, this._then);

  final TourState _value;
  // ignore: unused_field
  final $Res Function(TourState) _then;
}

/// @nodoc
abstract class _$TourInitialCopyWith<$Res> {
  factory _$TourInitialCopyWith(
          _TourInitial value, $Res Function(_TourInitial) then) =
      __$TourInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$TourInitialCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$TourInitialCopyWith<$Res> {
  __$TourInitialCopyWithImpl(
      _TourInitial _value, $Res Function(_TourInitial) _then)
      : super(_value, (v) => _then(v as _TourInitial));

  @override
  _TourInitial get _value => super._value as _TourInitial;
}

/// @nodoc

class _$_TourInitial implements _TourInitial {
  _$_TourInitial();

  @override
  String toString() {
    return 'TourState.tourInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TourInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return tourInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourInitial != null) {
      return tourInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return tourInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourInitial != null) {
      return tourInitial(this);
    }
    return orElse();
  }
}

abstract class _TourInitial implements TourState {
  factory _TourInitial() = _$_TourInitial;
}

/// @nodoc
abstract class _$TourLoadingCopyWith<$Res> {
  factory _$TourLoadingCopyWith(
          _TourLoading value, $Res Function(_TourLoading) then) =
      __$TourLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TourLoadingCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$TourLoadingCopyWith<$Res> {
  __$TourLoadingCopyWithImpl(
      _TourLoading _value, $Res Function(_TourLoading) _then)
      : super(_value, (v) => _then(v as _TourLoading));

  @override
  _TourLoading get _value => super._value as _TourLoading;
}

/// @nodoc

class _$_TourLoading implements _TourLoading {
  _$_TourLoading();

  @override
  String toString() {
    return 'TourState.tourLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TourLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return tourLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourLoading != null) {
      return tourLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return tourLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourLoading != null) {
      return tourLoading(this);
    }
    return orElse();
  }
}

abstract class _TourLoading implements TourState {
  factory _TourLoading() = _$_TourLoading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse errorResponse});

  $ErrorResponseCopyWith<$Res> get errorResponse;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorResponse = freezed,
  }) {
    return _then(_Error(
      errorResponse == freezed
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }

  @override
  $ErrorResponseCopyWith<$Res> get errorResponse {
    return $ErrorResponseCopyWith<$Res>(_value.errorResponse, (value) {
      return _then(_value.copyWith(errorResponse: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  _$_Error(this.errorResponse);

  @override
  final ErrorResponse errorResponse;

  @override
  String toString() {
    return 'TourState.error(errorResponse: $errorResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorResponse, errorResponse) ||
                const DeepCollectionEquality()
                    .equals(other.errorResponse, errorResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorResponse);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return error(errorResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TourState {
  factory _Error(ErrorResponse errorResponse) = _$_Error;

  ErrorResponse get errorResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TourActivatedCopyWith<$Res> {
  factory _$TourActivatedCopyWith(
          _TourActivated value, $Res Function(_TourActivated) then) =
      __$TourActivatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TourActivatedCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$TourActivatedCopyWith<$Res> {
  __$TourActivatedCopyWithImpl(
      _TourActivated _value, $Res Function(_TourActivated) _then)
      : super(_value, (v) => _then(v as _TourActivated));

  @override
  _TourActivated get _value => super._value as _TourActivated;
}

/// @nodoc

class _$_TourActivated implements _TourActivated {
  _$_TourActivated();

  @override
  String toString() {
    return 'TourState.tourActivated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TourActivated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return tourActivated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourActivated != null) {
      return tourActivated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return tourActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourActivated != null) {
      return tourActivated(this);
    }
    return orElse();
  }
}

abstract class _TourActivated implements TourState {
  factory _TourActivated() = _$_TourActivated;
}

/// @nodoc
abstract class _$TourDownloadedCopyWith<$Res> {
  factory _$TourDownloadedCopyWith(
          _TourDownloaded value, $Res Function(_TourDownloaded) then) =
      __$TourDownloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TourDownloadedCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$TourDownloadedCopyWith<$Res> {
  __$TourDownloadedCopyWithImpl(
      _TourDownloaded _value, $Res Function(_TourDownloaded) _then)
      : super(_value, (v) => _then(v as _TourDownloaded));

  @override
  _TourDownloaded get _value => super._value as _TourDownloaded;
}

/// @nodoc

class _$_TourDownloaded implements _TourDownloaded {
  _$_TourDownloaded();

  @override
  String toString() {
    return 'TourState.tourDownloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TourDownloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return tourDownloaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourDownloaded != null) {
      return tourDownloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return tourDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (tourDownloaded != null) {
      return tourDownloaded(this);
    }
    return orElse();
  }
}

abstract class _TourDownloaded implements TourState {
  factory _TourDownloaded() = _$_TourDownloaded;
}

/// @nodoc
abstract class _$UpdateProgressCopyWith<$Res> {
  factory _$UpdateProgressCopyWith(
          _UpdateProgress value, $Res Function(_UpdateProgress) then) =
      __$UpdateProgressCopyWithImpl<$Res>;
  $Res call({Map<String, int> progress});
}

/// @nodoc
class __$UpdateProgressCopyWithImpl<$Res> extends _$TourStateCopyWithImpl<$Res>
    implements _$UpdateProgressCopyWith<$Res> {
  __$UpdateProgressCopyWithImpl(
      _UpdateProgress _value, $Res Function(_UpdateProgress) _then)
      : super(_value, (v) => _then(v as _UpdateProgress));

  @override
  _UpdateProgress get _value => super._value as _UpdateProgress;

  @override
  $Res call({
    Object? progress = freezed,
  }) {
    return _then(_UpdateProgress(
      progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_UpdateProgress implements _UpdateProgress {
  _$_UpdateProgress(this.progress);

  @override
  final Map<String, int> progress;

  @override
  String toString() {
    return 'TourState.updateProgress(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProgress &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith =>
      __$UpdateProgressCopyWithImpl<_UpdateProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tourInitial,
    required TResult Function() tourLoading,
    required TResult Function(ErrorResponse errorResponse) error,
    required TResult Function() tourActivated,
    required TResult Function() tourDownloaded,
    required TResult Function(Map<String, int> progress) updateProgress,
  }) {
    return updateProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tourInitial,
    TResult Function()? tourLoading,
    TResult Function(ErrorResponse errorResponse)? error,
    TResult Function()? tourActivated,
    TResult Function()? tourDownloaded,
    TResult Function(Map<String, int> progress)? updateProgress,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TourInitial value) tourInitial,
    required TResult Function(_TourLoading value) tourLoading,
    required TResult Function(_Error value) error,
    required TResult Function(_TourActivated value) tourActivated,
    required TResult Function(_TourDownloaded value) tourDownloaded,
    required TResult Function(_UpdateProgress value) updateProgress,
  }) {
    return updateProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TourInitial value)? tourInitial,
    TResult Function(_TourLoading value)? tourLoading,
    TResult Function(_Error value)? error,
    TResult Function(_TourActivated value)? tourActivated,
    TResult Function(_TourDownloaded value)? tourDownloaded,
    TResult Function(_UpdateProgress value)? updateProgress,
    required TResult orElse(),
  }) {
    if (updateProgress != null) {
      return updateProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateProgress implements TourState {
  factory _UpdateProgress(Map<String, int> progress) = _$_UpdateProgress;

  Map<String, int> get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateProgressCopyWith<_UpdateProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

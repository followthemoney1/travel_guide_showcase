// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadStateTearOff {
  const _$DownloadStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _Loading loading() {
    return _Loading();
  }

  _Error error(ErrorResponse message) {
    return _Error(
      message,
    );
  }

  _LoadedLanguages loadedLanguages(Map<TourLanguageInfo, bool> tourLanguages) {
    return _LoadedLanguages(
      tourLanguages,
    );
  }
}

/// @nodoc
const $DownloadState = _$DownloadStateTearOff();

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorResponse message) error,
    required TResult Function(Map<TourLanguageInfo, bool> tourLanguages)
        loadedLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorResponse message)? error,
    TResult Function(Map<TourLanguageInfo, bool> tourLanguages)?
        loadedLanguages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedLanguages value) loadedLanguages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedLanguages value)? loadedLanguages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'DownloadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorResponse message) error,
    required TResult Function(Map<TourLanguageInfo, bool> tourLanguages)
        loadedLanguages,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorResponse message)? error,
    TResult Function(Map<TourLanguageInfo, bool> tourLanguages)?
        loadedLanguages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedLanguages value) loadedLanguages,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedLanguages value)? loadedLanguages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DownloadState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'DownloadState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorResponse message) error,
    required TResult Function(Map<TourLanguageInfo, bool> tourLanguages)
        loadedLanguages,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorResponse message)? error,
    TResult Function(Map<TourLanguageInfo, bool> tourLanguages)?
        loadedLanguages,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedLanguages value) loadedLanguages,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedLanguages value)? loadedLanguages,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DownloadState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }

  @override
  $ErrorResponseCopyWith<$Res> get message {
    return $ErrorResponseCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  _$_Error(this.message);

  @override
  final ErrorResponse message;

  @override
  String toString() {
    return 'DownloadState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorResponse message) error,
    required TResult Function(Map<TourLanguageInfo, bool> tourLanguages)
        loadedLanguages,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorResponse message)? error,
    TResult Function(Map<TourLanguageInfo, bool> tourLanguages)?
        loadedLanguages,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedLanguages value) loadedLanguages,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedLanguages value)? loadedLanguages,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DownloadState {
  factory _Error(ErrorResponse message) = _$_Error;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedLanguagesCopyWith<$Res> {
  factory _$LoadedLanguagesCopyWith(
          _LoadedLanguages value, $Res Function(_LoadedLanguages) then) =
      __$LoadedLanguagesCopyWithImpl<$Res>;
  $Res call({Map<TourLanguageInfo, bool> tourLanguages});
}

/// @nodoc
class __$LoadedLanguagesCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$LoadedLanguagesCopyWith<$Res> {
  __$LoadedLanguagesCopyWithImpl(
      _LoadedLanguages _value, $Res Function(_LoadedLanguages) _then)
      : super(_value, (v) => _then(v as _LoadedLanguages));

  @override
  _LoadedLanguages get _value => super._value as _LoadedLanguages;

  @override
  $Res call({
    Object? tourLanguages = freezed,
  }) {
    return _then(_LoadedLanguages(
      tourLanguages == freezed
          ? _value.tourLanguages
          : tourLanguages // ignore: cast_nullable_to_non_nullable
              as Map<TourLanguageInfo, bool>,
    ));
  }
}

/// @nodoc

class _$_LoadedLanguages implements _LoadedLanguages {
  _$_LoadedLanguages(this.tourLanguages);

  @override
  final Map<TourLanguageInfo, bool> tourLanguages;

  @override
  String toString() {
    return 'DownloadState.loadedLanguages(tourLanguages: $tourLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedLanguages &&
            (identical(other.tourLanguages, tourLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.tourLanguages, tourLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tourLanguages);

  @JsonKey(ignore: true)
  @override
  _$LoadedLanguagesCopyWith<_LoadedLanguages> get copyWith =>
      __$LoadedLanguagesCopyWithImpl<_LoadedLanguages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorResponse message) error,
    required TResult Function(Map<TourLanguageInfo, bool> tourLanguages)
        loadedLanguages,
  }) {
    return loadedLanguages(tourLanguages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorResponse message)? error,
    TResult Function(Map<TourLanguageInfo, bool> tourLanguages)?
        loadedLanguages,
    required TResult orElse(),
  }) {
    if (loadedLanguages != null) {
      return loadedLanguages(tourLanguages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadedLanguages value) loadedLanguages,
  }) {
    return loadedLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_LoadedLanguages value)? loadedLanguages,
    required TResult orElse(),
  }) {
    if (loadedLanguages != null) {
      return loadedLanguages(this);
    }
    return orElse();
  }
}

abstract class _LoadedLanguages implements DownloadState {
  factory _LoadedLanguages(Map<TourLanguageInfo, bool> tourLanguages) =
      _$_LoadedLanguages;

  Map<TourLanguageInfo, bool> get tourLanguages =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedLanguagesCopyWith<_LoadedLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guide_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GuideStateTearOff {
  const _$GuideStateTearOff();

  _GuideInitial guideInitial() {
    return _GuideInitial();
  }

  _GuideLoading guideLoading() {
    return _GuideLoading();
  }

  _Error error(ErrorResponse message) {
    return _Error(
      message,
    );
  }
}

/// @nodoc
const $GuideState = _$GuideStateTearOff();

/// @nodoc
mixin _$GuideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() guideInitial,
    required TResult Function() guideLoading,
    required TResult Function(ErrorResponse message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? guideInitial,
    TResult Function()? guideLoading,
    TResult Function(ErrorResponse message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuideInitial value) guideInitial,
    required TResult Function(_GuideLoading value) guideLoading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuideInitial value)? guideInitial,
    TResult Function(_GuideLoading value)? guideLoading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideStateCopyWith<$Res> {
  factory $GuideStateCopyWith(
          GuideState value, $Res Function(GuideState) then) =
      _$GuideStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GuideStateCopyWithImpl<$Res> implements $GuideStateCopyWith<$Res> {
  _$GuideStateCopyWithImpl(this._value, this._then);

  final GuideState _value;
  // ignore: unused_field
  final $Res Function(GuideState) _then;
}

/// @nodoc
abstract class _$GuideInitialCopyWith<$Res> {
  factory _$GuideInitialCopyWith(
          _GuideInitial value, $Res Function(_GuideInitial) then) =
      __$GuideInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$GuideInitialCopyWithImpl<$Res> extends _$GuideStateCopyWithImpl<$Res>
    implements _$GuideInitialCopyWith<$Res> {
  __$GuideInitialCopyWithImpl(
      _GuideInitial _value, $Res Function(_GuideInitial) _then)
      : super(_value, (v) => _then(v as _GuideInitial));

  @override
  _GuideInitial get _value => super._value as _GuideInitial;
}

/// @nodoc

class _$_GuideInitial implements _GuideInitial {
  _$_GuideInitial();

  @override
  String toString() {
    return 'GuideState.guideInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GuideInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() guideInitial,
    required TResult Function() guideLoading,
    required TResult Function(ErrorResponse message) error,
  }) {
    return guideInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? guideInitial,
    TResult Function()? guideLoading,
    TResult Function(ErrorResponse message)? error,
    required TResult orElse(),
  }) {
    if (guideInitial != null) {
      return guideInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuideInitial value) guideInitial,
    required TResult Function(_GuideLoading value) guideLoading,
    required TResult Function(_Error value) error,
  }) {
    return guideInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuideInitial value)? guideInitial,
    TResult Function(_GuideLoading value)? guideLoading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (guideInitial != null) {
      return guideInitial(this);
    }
    return orElse();
  }
}

abstract class _GuideInitial implements GuideState {
  factory _GuideInitial() = _$_GuideInitial;
}

/// @nodoc
abstract class _$GuideLoadingCopyWith<$Res> {
  factory _$GuideLoadingCopyWith(
          _GuideLoading value, $Res Function(_GuideLoading) then) =
      __$GuideLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$GuideLoadingCopyWithImpl<$Res> extends _$GuideStateCopyWithImpl<$Res>
    implements _$GuideLoadingCopyWith<$Res> {
  __$GuideLoadingCopyWithImpl(
      _GuideLoading _value, $Res Function(_GuideLoading) _then)
      : super(_value, (v) => _then(v as _GuideLoading));

  @override
  _GuideLoading get _value => super._value as _GuideLoading;
}

/// @nodoc

class _$_GuideLoading implements _GuideLoading {
  _$_GuideLoading();

  @override
  String toString() {
    return 'GuideState.guideLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GuideLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() guideInitial,
    required TResult Function() guideLoading,
    required TResult Function(ErrorResponse message) error,
  }) {
    return guideLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? guideInitial,
    TResult Function()? guideLoading,
    TResult Function(ErrorResponse message)? error,
    required TResult orElse(),
  }) {
    if (guideLoading != null) {
      return guideLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GuideInitial value) guideInitial,
    required TResult Function(_GuideLoading value) guideLoading,
    required TResult Function(_Error value) error,
  }) {
    return guideLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuideInitial value)? guideInitial,
    TResult Function(_GuideLoading value)? guideLoading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (guideLoading != null) {
      return guideLoading(this);
    }
    return orElse();
  }
}

abstract class _GuideLoading implements GuideState {
  factory _GuideLoading() = _$_GuideLoading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$GuideStateCopyWithImpl<$Res>
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
    return 'GuideState.error(message: $message)';
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
    required TResult Function() guideInitial,
    required TResult Function() guideLoading,
    required TResult Function(ErrorResponse message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? guideInitial,
    TResult Function()? guideLoading,
    TResult Function(ErrorResponse message)? error,
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
    required TResult Function(_GuideInitial value) guideInitial,
    required TResult Function(_GuideLoading value) guideLoading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GuideInitial value)? guideInitial,
    TResult Function(_GuideLoading value)? guideLoading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GuideState {
  factory _Error(ErrorResponse message) = _$_Error;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

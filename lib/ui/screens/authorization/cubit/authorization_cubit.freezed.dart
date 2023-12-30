// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _AuthProcess authProcess() {
    return _AuthProcess();
  }

  _AuthError authError(ErrorResponse message) {
    return _AuthError(
      message,
    );
  }

  _AuthSuccess authSuccess() {
    return _AuthSuccess();
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authProcess,
    required TResult Function(ErrorResponse message) authError,
    required TResult Function() authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authProcess,
    TResult Function(ErrorResponse message)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthProcess value) authProcess,
    required TResult Function(_AuthError value) authError,
    required TResult Function(_AuthSuccess value) authSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthProcess value)? authProcess,
    TResult Function(_AuthError value)? authError,
    TResult Function(_AuthSuccess value)? authSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
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
    return 'AuthorizationState.initial()';
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
    required TResult Function() authProcess,
    required TResult Function(ErrorResponse message) authError,
    required TResult Function() authSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authProcess,
    TResult Function(ErrorResponse message)? authError,
    TResult Function()? authSuccess,
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
    required TResult Function(_AuthProcess value) authProcess,
    required TResult Function(_AuthError value) authError,
    required TResult Function(_AuthSuccess value) authSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthProcess value)? authProcess,
    TResult Function(_AuthError value)? authError,
    TResult Function(_AuthSuccess value)? authSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthorizationState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthProcessCopyWith<$Res> {
  factory _$AuthProcessCopyWith(
          _AuthProcess value, $Res Function(_AuthProcess) then) =
      __$AuthProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthProcessCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthProcessCopyWith<$Res> {
  __$AuthProcessCopyWithImpl(
      _AuthProcess _value, $Res Function(_AuthProcess) _then)
      : super(_value, (v) => _then(v as _AuthProcess));

  @override
  _AuthProcess get _value => super._value as _AuthProcess;
}

/// @nodoc

class _$_AuthProcess implements _AuthProcess {
  _$_AuthProcess();

  @override
  String toString() {
    return 'AuthorizationState.authProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authProcess,
    required TResult Function(ErrorResponse message) authError,
    required TResult Function() authSuccess,
  }) {
    return authProcess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authProcess,
    TResult Function(ErrorResponse message)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (authProcess != null) {
      return authProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthProcess value) authProcess,
    required TResult Function(_AuthError value) authError,
    required TResult Function(_AuthSuccess value) authSuccess,
  }) {
    return authProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthProcess value)? authProcess,
    TResult Function(_AuthError value)? authError,
    TResult Function(_AuthSuccess value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authProcess != null) {
      return authProcess(this);
    }
    return orElse();
  }
}

abstract class _AuthProcess implements AuthorizationState {
  factory _AuthProcess() = _$_AuthProcess;
}

/// @nodoc
abstract class _$AuthErrorCopyWith<$Res> {
  factory _$AuthErrorCopyWith(
          _AuthError value, $Res Function(_AuthError) then) =
      __$AuthErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$AuthErrorCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthErrorCopyWith<$Res> {
  __$AuthErrorCopyWithImpl(_AuthError _value, $Res Function(_AuthError) _then)
      : super(_value, (v) => _then(v as _AuthError));

  @override
  _AuthError get _value => super._value as _AuthError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_AuthError(
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

class _$_AuthError implements _AuthError {
  _$_AuthError(this.message);

  @override
  final ErrorResponse message;

  @override
  String toString() {
    return 'AuthorizationState.authError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AuthErrorCopyWith<_AuthError> get copyWith =>
      __$AuthErrorCopyWithImpl<_AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authProcess,
    required TResult Function(ErrorResponse message) authError,
    required TResult Function() authSuccess,
  }) {
    return authError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authProcess,
    TResult Function(ErrorResponse message)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthProcess value) authProcess,
    required TResult Function(_AuthError value) authError,
    required TResult Function(_AuthSuccess value) authSuccess,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthProcess value)? authProcess,
    TResult Function(_AuthError value)? authError,
    TResult Function(_AuthSuccess value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements AuthorizationState {
  factory _AuthError(ErrorResponse message) = _$_AuthError;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthErrorCopyWith<_AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthSuccessCopyWith<$Res> {
  factory _$AuthSuccessCopyWith(
          _AuthSuccess value, $Res Function(_AuthSuccess) then) =
      __$AuthSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSuccessCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthSuccessCopyWith<$Res> {
  __$AuthSuccessCopyWithImpl(
      _AuthSuccess _value, $Res Function(_AuthSuccess) _then)
      : super(_value, (v) => _then(v as _AuthSuccess));

  @override
  _AuthSuccess get _value => super._value as _AuthSuccess;
}

/// @nodoc

class _$_AuthSuccess implements _AuthSuccess {
  _$_AuthSuccess();

  @override
  String toString() {
    return 'AuthorizationState.authSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authProcess,
    required TResult Function(ErrorResponse message) authError,
    required TResult Function() authSuccess,
  }) {
    return authSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authProcess,
    TResult Function(ErrorResponse message)? authError,
    TResult Function()? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AuthProcess value) authProcess,
    required TResult Function(_AuthError value) authError,
    required TResult Function(_AuthSuccess value) authSuccess,
  }) {
    return authSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AuthProcess value)? authProcess,
    TResult Function(_AuthError value)? authError,
    TResult Function(_AuthSuccess value)? authSuccess,
    required TResult orElse(),
  }) {
    if (authSuccess != null) {
      return authSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthorizationState {
  factory _AuthSuccess() = _$_AuthSuccess;
}

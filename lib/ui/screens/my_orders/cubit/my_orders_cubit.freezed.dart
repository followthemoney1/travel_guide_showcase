// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_orders_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyOrdersStateTearOff {
  const _$MyOrdersStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _MyOrdersLoading myOrdersLoading() {
    return _MyOrdersLoading();
  }

  _MyOrdersError myOrdersError(ErrorResponse message) {
    return _MyOrdersError(
      message,
    );
  }

  _Loaded loaded(List<Tour> activeOrdersList, List<Tour> archiveOrdersList) {
    return _Loaded(
      activeOrdersList,
      archiveOrdersList,
    );
  }
}

/// @nodoc
const $MyOrdersState = _$MyOrdersStateTearOff();

/// @nodoc
mixin _$MyOrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myOrdersLoading,
    required TResult Function(ErrorResponse message) myOrdersError,
    required TResult Function(
            List<Tour> activeOrdersList, List<Tour> archiveOrdersList)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myOrdersLoading,
    TResult Function(ErrorResponse message)? myOrdersError,
    TResult Function(List<Tour> activeOrdersList, List<Tour> archiveOrdersList)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MyOrdersLoading value) myOrdersLoading,
    required TResult Function(_MyOrdersError value) myOrdersError,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MyOrdersLoading value)? myOrdersLoading,
    TResult Function(_MyOrdersError value)? myOrdersError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersStateCopyWith<$Res> {
  factory $MyOrdersStateCopyWith(
          MyOrdersState value, $Res Function(MyOrdersState) then) =
      _$MyOrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyOrdersStateCopyWithImpl<$Res>
    implements $MyOrdersStateCopyWith<$Res> {
  _$MyOrdersStateCopyWithImpl(this._value, this._then);

  final MyOrdersState _value;
  // ignore: unused_field
  final $Res Function(MyOrdersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MyOrdersStateCopyWithImpl<$Res>
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
    return 'MyOrdersState.initial()';
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
    required TResult Function() myOrdersLoading,
    required TResult Function(ErrorResponse message) myOrdersError,
    required TResult Function(
            List<Tour> activeOrdersList, List<Tour> archiveOrdersList)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myOrdersLoading,
    TResult Function(ErrorResponse message)? myOrdersError,
    TResult Function(List<Tour> activeOrdersList, List<Tour> archiveOrdersList)?
        loaded,
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
    required TResult Function(_MyOrdersLoading value) myOrdersLoading,
    required TResult Function(_MyOrdersError value) myOrdersError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MyOrdersLoading value)? myOrdersLoading,
    TResult Function(_MyOrdersError value)? myOrdersError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyOrdersState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$MyOrdersLoadingCopyWith<$Res> {
  factory _$MyOrdersLoadingCopyWith(
          _MyOrdersLoading value, $Res Function(_MyOrdersLoading) then) =
      __$MyOrdersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$MyOrdersLoadingCopyWithImpl<$Res>
    extends _$MyOrdersStateCopyWithImpl<$Res>
    implements _$MyOrdersLoadingCopyWith<$Res> {
  __$MyOrdersLoadingCopyWithImpl(
      _MyOrdersLoading _value, $Res Function(_MyOrdersLoading) _then)
      : super(_value, (v) => _then(v as _MyOrdersLoading));

  @override
  _MyOrdersLoading get _value => super._value as _MyOrdersLoading;
}

/// @nodoc

class _$_MyOrdersLoading implements _MyOrdersLoading {
  _$_MyOrdersLoading();

  @override
  String toString() {
    return 'MyOrdersState.myOrdersLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MyOrdersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myOrdersLoading,
    required TResult Function(ErrorResponse message) myOrdersError,
    required TResult Function(
            List<Tour> activeOrdersList, List<Tour> archiveOrdersList)
        loaded,
  }) {
    return myOrdersLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myOrdersLoading,
    TResult Function(ErrorResponse message)? myOrdersError,
    TResult Function(List<Tour> activeOrdersList, List<Tour> archiveOrdersList)?
        loaded,
    required TResult orElse(),
  }) {
    if (myOrdersLoading != null) {
      return myOrdersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MyOrdersLoading value) myOrdersLoading,
    required TResult Function(_MyOrdersError value) myOrdersError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return myOrdersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MyOrdersLoading value)? myOrdersLoading,
    TResult Function(_MyOrdersError value)? myOrdersError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (myOrdersLoading != null) {
      return myOrdersLoading(this);
    }
    return orElse();
  }
}

abstract class _MyOrdersLoading implements MyOrdersState {
  factory _MyOrdersLoading() = _$_MyOrdersLoading;
}

/// @nodoc
abstract class _$MyOrdersErrorCopyWith<$Res> {
  factory _$MyOrdersErrorCopyWith(
          _MyOrdersError value, $Res Function(_MyOrdersError) then) =
      __$MyOrdersErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$MyOrdersErrorCopyWithImpl<$Res>
    extends _$MyOrdersStateCopyWithImpl<$Res>
    implements _$MyOrdersErrorCopyWith<$Res> {
  __$MyOrdersErrorCopyWithImpl(
      _MyOrdersError _value, $Res Function(_MyOrdersError) _then)
      : super(_value, (v) => _then(v as _MyOrdersError));

  @override
  _MyOrdersError get _value => super._value as _MyOrdersError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_MyOrdersError(
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

class _$_MyOrdersError implements _MyOrdersError {
  _$_MyOrdersError(this.message);

  @override
  final ErrorResponse message;

  @override
  String toString() {
    return 'MyOrdersState.myOrdersError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyOrdersError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$MyOrdersErrorCopyWith<_MyOrdersError> get copyWith =>
      __$MyOrdersErrorCopyWithImpl<_MyOrdersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myOrdersLoading,
    required TResult Function(ErrorResponse message) myOrdersError,
    required TResult Function(
            List<Tour> activeOrdersList, List<Tour> archiveOrdersList)
        loaded,
  }) {
    return myOrdersError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myOrdersLoading,
    TResult Function(ErrorResponse message)? myOrdersError,
    TResult Function(List<Tour> activeOrdersList, List<Tour> archiveOrdersList)?
        loaded,
    required TResult orElse(),
  }) {
    if (myOrdersError != null) {
      return myOrdersError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MyOrdersLoading value) myOrdersLoading,
    required TResult Function(_MyOrdersError value) myOrdersError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return myOrdersError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MyOrdersLoading value)? myOrdersLoading,
    TResult Function(_MyOrdersError value)? myOrdersError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (myOrdersError != null) {
      return myOrdersError(this);
    }
    return orElse();
  }
}

abstract class _MyOrdersError implements MyOrdersState {
  factory _MyOrdersError(ErrorResponse message) = _$_MyOrdersError;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MyOrdersErrorCopyWith<_MyOrdersError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Tour> activeOrdersList, List<Tour> archiveOrdersList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$MyOrdersStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? activeOrdersList = freezed,
    Object? archiveOrdersList = freezed,
  }) {
    return _then(_Loaded(
      activeOrdersList == freezed
          ? _value.activeOrdersList
          : activeOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      archiveOrdersList == freezed
          ? _value.archiveOrdersList
          : archiveOrdersList // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded(this.activeOrdersList, this.archiveOrdersList);

  @override
  final List<Tour> activeOrdersList;
  @override
  final List<Tour> archiveOrdersList;

  @override
  String toString() {
    return 'MyOrdersState.loaded(activeOrdersList: $activeOrdersList, archiveOrdersList: $archiveOrdersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.activeOrdersList, activeOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.activeOrdersList, activeOrdersList)) &&
            (identical(other.archiveOrdersList, archiveOrdersList) ||
                const DeepCollectionEquality()
                    .equals(other.archiveOrdersList, archiveOrdersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activeOrdersList) ^
      const DeepCollectionEquality().hash(archiveOrdersList);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myOrdersLoading,
    required TResult Function(ErrorResponse message) myOrdersError,
    required TResult Function(
            List<Tour> activeOrdersList, List<Tour> archiveOrdersList)
        loaded,
  }) {
    return loaded(activeOrdersList, archiveOrdersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myOrdersLoading,
    TResult Function(ErrorResponse message)? myOrdersError,
    TResult Function(List<Tour> activeOrdersList, List<Tour> archiveOrdersList)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(activeOrdersList, archiveOrdersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MyOrdersLoading value) myOrdersLoading,
    required TResult Function(_MyOrdersError value) myOrdersError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MyOrdersLoading value)? myOrdersLoading,
    TResult Function(_MyOrdersError value)? myOrdersError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MyOrdersState {
  factory _Loaded(List<Tour> activeOrdersList, List<Tour> archiveOrdersList) =
      _$_Loaded;

  List<Tour> get activeOrdersList => throw _privateConstructorUsedError;
  List<Tour> get archiveOrdersList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

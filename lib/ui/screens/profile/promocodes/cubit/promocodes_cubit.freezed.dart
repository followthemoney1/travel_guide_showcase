// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'promocodes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PromocodesStateTearOff {
  const _$PromocodesStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _PromocodesLoading promocodesLoading() {
    return _PromocodesLoading();
  }

  _PromocodesError promocodesError(ErrorResponse message) {
    return _PromocodesError(
      message,
    );
  }

  _PromocodesLoaded promocodesLoaded(List<Tour> promocodes) {
    return _PromocodesLoaded(
      promocodes,
    );
  }
}

/// @nodoc
const $PromocodesState = _$PromocodesStateTearOff();

/// @nodoc
mixin _$PromocodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() promocodesLoading,
    required TResult Function(ErrorResponse message) promocodesError,
    required TResult Function(List<Tour> promocodes) promocodesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? promocodesLoading,
    TResult Function(ErrorResponse message)? promocodesError,
    TResult Function(List<Tour> promocodes)? promocodesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PromocodesLoading value) promocodesLoading,
    required TResult Function(_PromocodesError value) promocodesError,
    required TResult Function(_PromocodesLoaded value) promocodesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PromocodesLoading value)? promocodesLoading,
    TResult Function(_PromocodesError value)? promocodesError,
    TResult Function(_PromocodesLoaded value)? promocodesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromocodesStateCopyWith<$Res> {
  factory $PromocodesStateCopyWith(
          PromocodesState value, $Res Function(PromocodesState) then) =
      _$PromocodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PromocodesStateCopyWithImpl<$Res>
    implements $PromocodesStateCopyWith<$Res> {
  _$PromocodesStateCopyWithImpl(this._value, this._then);

  final PromocodesState _value;
  // ignore: unused_field
  final $Res Function(PromocodesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PromocodesStateCopyWithImpl<$Res>
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
    return 'PromocodesState.initial()';
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
    required TResult Function() promocodesLoading,
    required TResult Function(ErrorResponse message) promocodesError,
    required TResult Function(List<Tour> promocodes) promocodesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? promocodesLoading,
    TResult Function(ErrorResponse message)? promocodesError,
    TResult Function(List<Tour> promocodes)? promocodesLoaded,
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
    required TResult Function(_PromocodesLoading value) promocodesLoading,
    required TResult Function(_PromocodesError value) promocodesError,
    required TResult Function(_PromocodesLoaded value) promocodesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PromocodesLoading value)? promocodesLoading,
    TResult Function(_PromocodesError value)? promocodesError,
    TResult Function(_PromocodesLoaded value)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PromocodesState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PromocodesLoadingCopyWith<$Res> {
  factory _$PromocodesLoadingCopyWith(
          _PromocodesLoading value, $Res Function(_PromocodesLoading) then) =
      __$PromocodesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PromocodesLoadingCopyWithImpl<$Res>
    extends _$PromocodesStateCopyWithImpl<$Res>
    implements _$PromocodesLoadingCopyWith<$Res> {
  __$PromocodesLoadingCopyWithImpl(
      _PromocodesLoading _value, $Res Function(_PromocodesLoading) _then)
      : super(_value, (v) => _then(v as _PromocodesLoading));

  @override
  _PromocodesLoading get _value => super._value as _PromocodesLoading;
}

/// @nodoc

class _$_PromocodesLoading implements _PromocodesLoading {
  _$_PromocodesLoading();

  @override
  String toString() {
    return 'PromocodesState.promocodesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PromocodesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() promocodesLoading,
    required TResult Function(ErrorResponse message) promocodesError,
    required TResult Function(List<Tour> promocodes) promocodesLoaded,
  }) {
    return promocodesLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? promocodesLoading,
    TResult Function(ErrorResponse message)? promocodesError,
    TResult Function(List<Tour> promocodes)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesLoading != null) {
      return promocodesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PromocodesLoading value) promocodesLoading,
    required TResult Function(_PromocodesError value) promocodesError,
    required TResult Function(_PromocodesLoaded value) promocodesLoaded,
  }) {
    return promocodesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PromocodesLoading value)? promocodesLoading,
    TResult Function(_PromocodesError value)? promocodesError,
    TResult Function(_PromocodesLoaded value)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesLoading != null) {
      return promocodesLoading(this);
    }
    return orElse();
  }
}

abstract class _PromocodesLoading implements PromocodesState {
  factory _PromocodesLoading() = _$_PromocodesLoading;
}

/// @nodoc
abstract class _$PromocodesErrorCopyWith<$Res> {
  factory _$PromocodesErrorCopyWith(
          _PromocodesError value, $Res Function(_PromocodesError) then) =
      __$PromocodesErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$PromocodesErrorCopyWithImpl<$Res>
    extends _$PromocodesStateCopyWithImpl<$Res>
    implements _$PromocodesErrorCopyWith<$Res> {
  __$PromocodesErrorCopyWithImpl(
      _PromocodesError _value, $Res Function(_PromocodesError) _then)
      : super(_value, (v) => _then(v as _PromocodesError));

  @override
  _PromocodesError get _value => super._value as _PromocodesError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PromocodesError(
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

class _$_PromocodesError implements _PromocodesError {
  _$_PromocodesError(this.message);

  @override
  final ErrorResponse message;

  @override
  String toString() {
    return 'PromocodesState.promocodesError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromocodesError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PromocodesErrorCopyWith<_PromocodesError> get copyWith =>
      __$PromocodesErrorCopyWithImpl<_PromocodesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() promocodesLoading,
    required TResult Function(ErrorResponse message) promocodesError,
    required TResult Function(List<Tour> promocodes) promocodesLoaded,
  }) {
    return promocodesError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? promocodesLoading,
    TResult Function(ErrorResponse message)? promocodesError,
    TResult Function(List<Tour> promocodes)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesError != null) {
      return promocodesError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PromocodesLoading value) promocodesLoading,
    required TResult Function(_PromocodesError value) promocodesError,
    required TResult Function(_PromocodesLoaded value) promocodesLoaded,
  }) {
    return promocodesError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PromocodesLoading value)? promocodesLoading,
    TResult Function(_PromocodesError value)? promocodesError,
    TResult Function(_PromocodesLoaded value)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesError != null) {
      return promocodesError(this);
    }
    return orElse();
  }
}

abstract class _PromocodesError implements PromocodesState {
  factory _PromocodesError(ErrorResponse message) = _$_PromocodesError;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PromocodesErrorCopyWith<_PromocodesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PromocodesLoadedCopyWith<$Res> {
  factory _$PromocodesLoadedCopyWith(
          _PromocodesLoaded value, $Res Function(_PromocodesLoaded) then) =
      __$PromocodesLoadedCopyWithImpl<$Res>;
  $Res call({List<Tour> promocodes});
}

/// @nodoc
class __$PromocodesLoadedCopyWithImpl<$Res>
    extends _$PromocodesStateCopyWithImpl<$Res>
    implements _$PromocodesLoadedCopyWith<$Res> {
  __$PromocodesLoadedCopyWithImpl(
      _PromocodesLoaded _value, $Res Function(_PromocodesLoaded) _then)
      : super(_value, (v) => _then(v as _PromocodesLoaded));

  @override
  _PromocodesLoaded get _value => super._value as _PromocodesLoaded;

  @override
  $Res call({
    Object? promocodes = freezed,
  }) {
    return _then(_PromocodesLoaded(
      promocodes == freezed
          ? _value.promocodes
          : promocodes // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc

class _$_PromocodesLoaded implements _PromocodesLoaded {
  _$_PromocodesLoaded(this.promocodes);

  @override
  final List<Tour> promocodes;

  @override
  String toString() {
    return 'PromocodesState.promocodesLoaded(promocodes: $promocodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromocodesLoaded &&
            (identical(other.promocodes, promocodes) ||
                const DeepCollectionEquality()
                    .equals(other.promocodes, promocodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(promocodes);

  @JsonKey(ignore: true)
  @override
  _$PromocodesLoadedCopyWith<_PromocodesLoaded> get copyWith =>
      __$PromocodesLoadedCopyWithImpl<_PromocodesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() promocodesLoading,
    required TResult Function(ErrorResponse message) promocodesError,
    required TResult Function(List<Tour> promocodes) promocodesLoaded,
  }) {
    return promocodesLoaded(promocodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? promocodesLoading,
    TResult Function(ErrorResponse message)? promocodesError,
    TResult Function(List<Tour> promocodes)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesLoaded != null) {
      return promocodesLoaded(promocodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PromocodesLoading value) promocodesLoading,
    required TResult Function(_PromocodesError value) promocodesError,
    required TResult Function(_PromocodesLoaded value) promocodesLoaded,
  }) {
    return promocodesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PromocodesLoading value)? promocodesLoading,
    TResult Function(_PromocodesError value)? promocodesError,
    TResult Function(_PromocodesLoaded value)? promocodesLoaded,
    required TResult orElse(),
  }) {
    if (promocodesLoaded != null) {
      return promocodesLoaded(this);
    }
    return orElse();
  }
}

abstract class _PromocodesLoaded implements PromocodesState {
  factory _PromocodesLoaded(List<Tour> promocodes) = _$_PromocodesLoaded;

  List<Tour> get promocodes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PromocodesLoadedCopyWith<_PromocodesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _FavoritesLoading favoritesLoading() {
    return _FavoritesLoading();
  }

  _FavoritesError favoritesError(ErrorResponse message) {
    return _FavoritesError(
      message,
    );
  }

  _Loaded loaded(List<Tour> favorites) {
    return _Loaded(
      favorites,
    );
  }
}

/// @nodoc
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoritesLoading,
    required TResult Function(ErrorResponse message) favoritesError,
    required TResult Function(List<Tour> favorites) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoritesLoading,
    TResult Function(ErrorResponse message)? favoritesError,
    TResult Function(List<Tour> favorites)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoritesLoading value) favoritesLoading,
    required TResult Function(_FavoritesError value) favoritesError,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoritesLoading value)? favoritesLoading,
    TResult Function(_FavoritesError value)? favoritesError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FavoritesStateCopyWithImpl<$Res>
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
    return 'FavoritesState.initial()';
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
    required TResult Function() favoritesLoading,
    required TResult Function(ErrorResponse message) favoritesError,
    required TResult Function(List<Tour> favorites) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoritesLoading,
    TResult Function(ErrorResponse message)? favoritesError,
    TResult Function(List<Tour> favorites)? loaded,
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
    required TResult Function(_FavoritesLoading value) favoritesLoading,
    required TResult Function(_FavoritesError value) favoritesError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoritesLoading value)? favoritesLoading,
    TResult Function(_FavoritesError value)? favoritesError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FavoritesLoadingCopyWith<$Res> {
  factory _$FavoritesLoadingCopyWith(
          _FavoritesLoading value, $Res Function(_FavoritesLoading) then) =
      __$FavoritesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoritesLoadingCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesLoadingCopyWith<$Res> {
  __$FavoritesLoadingCopyWithImpl(
      _FavoritesLoading _value, $Res Function(_FavoritesLoading) _then)
      : super(_value, (v) => _then(v as _FavoritesLoading));

  @override
  _FavoritesLoading get _value => super._value as _FavoritesLoading;
}

/// @nodoc

class _$_FavoritesLoading implements _FavoritesLoading {
  _$_FavoritesLoading();

  @override
  String toString() {
    return 'FavoritesState.favoritesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FavoritesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoritesLoading,
    required TResult Function(ErrorResponse message) favoritesError,
    required TResult Function(List<Tour> favorites) loaded,
  }) {
    return favoritesLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoritesLoading,
    TResult Function(ErrorResponse message)? favoritesError,
    TResult Function(List<Tour> favorites)? loaded,
    required TResult orElse(),
  }) {
    if (favoritesLoading != null) {
      return favoritesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoritesLoading value) favoritesLoading,
    required TResult Function(_FavoritesError value) favoritesError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return favoritesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoritesLoading value)? favoritesLoading,
    TResult Function(_FavoritesError value)? favoritesError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (favoritesLoading != null) {
      return favoritesLoading(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoading implements FavoritesState {
  factory _FavoritesLoading() = _$_FavoritesLoading;
}

/// @nodoc
abstract class _$FavoritesErrorCopyWith<$Res> {
  factory _$FavoritesErrorCopyWith(
          _FavoritesError value, $Res Function(_FavoritesError) then) =
      __$FavoritesErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse message});

  $ErrorResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$FavoritesErrorCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesErrorCopyWith<$Res> {
  __$FavoritesErrorCopyWithImpl(
      _FavoritesError _value, $Res Function(_FavoritesError) _then)
      : super(_value, (v) => _then(v as _FavoritesError));

  @override
  _FavoritesError get _value => super._value as _FavoritesError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FavoritesError(
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

class _$_FavoritesError implements _FavoritesError {
  _$_FavoritesError(this.message);

  @override
  final ErrorResponse message;

  @override
  String toString() {
    return 'FavoritesState.favoritesError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritesError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FavoritesErrorCopyWith<_FavoritesError> get copyWith =>
      __$FavoritesErrorCopyWithImpl<_FavoritesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoritesLoading,
    required TResult Function(ErrorResponse message) favoritesError,
    required TResult Function(List<Tour> favorites) loaded,
  }) {
    return favoritesError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoritesLoading,
    TResult Function(ErrorResponse message)? favoritesError,
    TResult Function(List<Tour> favorites)? loaded,
    required TResult orElse(),
  }) {
    if (favoritesError != null) {
      return favoritesError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoritesLoading value) favoritesLoading,
    required TResult Function(_FavoritesError value) favoritesError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return favoritesError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoritesLoading value)? favoritesLoading,
    TResult Function(_FavoritesError value)? favoritesError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (favoritesError != null) {
      return favoritesError(this);
    }
    return orElse();
  }
}

abstract class _FavoritesError implements FavoritesState {
  factory _FavoritesError(ErrorResponse message) = _$_FavoritesError;

  ErrorResponse get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FavoritesErrorCopyWith<_FavoritesError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Tour> favorites});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FavoritesStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_Loaded(
      favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded(this.favorites);

  @override
  final List<Tour> favorites;

  @override
  String toString() {
    return 'FavoritesState.loaded(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorites);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoritesLoading,
    required TResult Function(ErrorResponse message) favoritesError,
    required TResult Function(List<Tour> favorites) loaded,
  }) {
    return loaded(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoritesLoading,
    TResult Function(ErrorResponse message)? favoritesError,
    TResult Function(List<Tour> favorites)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavoritesLoading value) favoritesLoading,
    required TResult Function(_FavoritesError value) favoritesError,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavoritesLoading value)? favoritesLoading,
    TResult Function(_FavoritesError value)? favoritesError,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoritesState {
  factory _Loaded(List<Tour> favorites) = _$_Loaded;

  List<Tour> get favorites => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

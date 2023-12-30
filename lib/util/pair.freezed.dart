// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PairTearOff {
  const _$PairTearOff();

  _Pair<T, V> call<T, V>(T first, V second) {
    return _Pair<T, V>(
      first,
      second,
    );
  }
}

/// @nodoc
const $Pair = _$PairTearOff();

/// @nodoc
mixin _$Pair<T, V> {
  T get first => throw _privateConstructorUsedError;
  V get second => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PairCopyWith<T, V, Pair<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairCopyWith<T, V, $Res> {
  factory $PairCopyWith(Pair<T, V> value, $Res Function(Pair<T, V>) then) =
      _$PairCopyWithImpl<T, V, $Res>;
  $Res call({T first, V second});
}

/// @nodoc
class _$PairCopyWithImpl<T, V, $Res> implements $PairCopyWith<T, V, $Res> {
  _$PairCopyWithImpl(this._value, this._then);

  final Pair<T, V> _value;
  // ignore: unused_field
  final $Res Function(Pair<T, V>) _then;

  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc
abstract class _$PairCopyWith<T, V, $Res> implements $PairCopyWith<T, V, $Res> {
  factory _$PairCopyWith(_Pair<T, V> value, $Res Function(_Pair<T, V>) then) =
      __$PairCopyWithImpl<T, V, $Res>;
  @override
  $Res call({T first, V second});
}

/// @nodoc
class __$PairCopyWithImpl<T, V, $Res> extends _$PairCopyWithImpl<T, V, $Res>
    implements _$PairCopyWith<T, V, $Res> {
  __$PairCopyWithImpl(_Pair<T, V> _value, $Res Function(_Pair<T, V>) _then)
      : super(_value, (v) => _then(v as _Pair<T, V>));

  @override
  _Pair<T, V> get _value => super._value as _Pair<T, V>;

  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_Pair<T, V>(
      first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc

class _$_Pair<T, V> implements _Pair<T, V> {
  _$_Pair(this.first, this.second);

  @override
  final T first;
  @override
  final V second;

  @override
  String toString() {
    return 'Pair<$T, $V>(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pair<T, V> &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.second, second) ||
                const DeepCollectionEquality().equals(other.second, second)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(second);

  @JsonKey(ignore: true)
  @override
  _$PairCopyWith<T, V, _Pair<T, V>> get copyWith =>
      __$PairCopyWithImpl<T, V, _Pair<T, V>>(this, _$identity);
}

abstract class _Pair<T, V> implements Pair<T, V> {
  factory _Pair(T first, V second) = _$_Pair<T, V>;

  @override
  T get first => throw _privateConstructorUsedError;
  @override
  V get second => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PairCopyWith<T, V, _Pair<T, V>> get copyWith =>
      throw _privateConstructorUsedError;
}

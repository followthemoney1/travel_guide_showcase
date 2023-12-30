// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _NonAuthorized nonAuthorized() {
    return _NonAuthorized();
  }

  _PostPayment postPayment(bool successful) {
    return _PostPayment(
      successful,
    );
  }

  _Loading loading() {
    return _Loading();
  }

  _PromoCodeChecking promoCodeChecking() {
    return _PromoCodeChecking();
  }

  _PromoCodeSuccess promoCodeSuccess() {
    return _PromoCodeSuccess();
  }

  _PromoCodeError promoCodeError() {
    return _PromoCodeError();
  }

  _PromoCodeChanged promoCodeChanged(String value) {
    return _PromoCodeChanged(
      value,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.initial()';
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
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
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
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NonAuthorizedCopyWith<$Res> {
  factory _$NonAuthorizedCopyWith(
          _NonAuthorized value, $Res Function(_NonAuthorized) then) =
      __$NonAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NonAuthorizedCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$NonAuthorizedCopyWith<$Res> {
  __$NonAuthorizedCopyWithImpl(
      _NonAuthorized _value, $Res Function(_NonAuthorized) _then)
      : super(_value, (v) => _then(v as _NonAuthorized));

  @override
  _NonAuthorized get _value => super._value as _NonAuthorized;
}

/// @nodoc

class _$_NonAuthorized implements _NonAuthorized {
  _$_NonAuthorized();

  @override
  String toString() {
    return 'PaymentState.nonAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NonAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return nonAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (nonAuthorized != null) {
      return nonAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return nonAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (nonAuthorized != null) {
      return nonAuthorized(this);
    }
    return orElse();
  }
}

abstract class _NonAuthorized implements PaymentState {
  factory _NonAuthorized() = _$_NonAuthorized;
}

/// @nodoc
abstract class _$PostPaymentCopyWith<$Res> {
  factory _$PostPaymentCopyWith(
          _PostPayment value, $Res Function(_PostPayment) then) =
      __$PostPaymentCopyWithImpl<$Res>;
  $Res call({bool successful});
}

/// @nodoc
class __$PostPaymentCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PostPaymentCopyWith<$Res> {
  __$PostPaymentCopyWithImpl(
      _PostPayment _value, $Res Function(_PostPayment) _then)
      : super(_value, (v) => _then(v as _PostPayment));

  @override
  _PostPayment get _value => super._value as _PostPayment;

  @override
  $Res call({
    Object? successful = freezed,
  }) {
    return _then(_PostPayment(
      successful == freezed
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PostPayment implements _PostPayment {
  _$_PostPayment(this.successful);

  @override
  final bool successful;

  @override
  String toString() {
    return 'PaymentState.postPayment(successful: $successful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostPayment &&
            (identical(other.successful, successful) ||
                const DeepCollectionEquality()
                    .equals(other.successful, successful)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(successful);

  @JsonKey(ignore: true)
  @override
  _$PostPaymentCopyWith<_PostPayment> get copyWith =>
      __$PostPaymentCopyWithImpl<_PostPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return postPayment(successful);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (postPayment != null) {
      return postPayment(successful);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return postPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (postPayment != null) {
      return postPayment(this);
    }
    return orElse();
  }
}

abstract class _PostPayment implements PaymentState {
  factory _PostPayment(bool successful) = _$_PostPayment;

  bool get successful => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostPaymentCopyWith<_PostPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
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
    return 'PaymentState.loading()';
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
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
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
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentState {
  factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$PromoCodeCheckingCopyWith<$Res> {
  factory _$PromoCodeCheckingCopyWith(
          _PromoCodeChecking value, $Res Function(_PromoCodeChecking) then) =
      __$PromoCodeCheckingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PromoCodeCheckingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PromoCodeCheckingCopyWith<$Res> {
  __$PromoCodeCheckingCopyWithImpl(
      _PromoCodeChecking _value, $Res Function(_PromoCodeChecking) _then)
      : super(_value, (v) => _then(v as _PromoCodeChecking));

  @override
  _PromoCodeChecking get _value => super._value as _PromoCodeChecking;
}

/// @nodoc

class _$_PromoCodeChecking implements _PromoCodeChecking {
  _$_PromoCodeChecking();

  @override
  String toString() {
    return 'PaymentState.promoCodeChecking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PromoCodeChecking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return promoCodeChecking();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeChecking != null) {
      return promoCodeChecking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return promoCodeChecking(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeChecking != null) {
      return promoCodeChecking(this);
    }
    return orElse();
  }
}

abstract class _PromoCodeChecking implements PaymentState {
  factory _PromoCodeChecking() = _$_PromoCodeChecking;
}

/// @nodoc
abstract class _$PromoCodeSuccessCopyWith<$Res> {
  factory _$PromoCodeSuccessCopyWith(
          _PromoCodeSuccess value, $Res Function(_PromoCodeSuccess) then) =
      __$PromoCodeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$PromoCodeSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PromoCodeSuccessCopyWith<$Res> {
  __$PromoCodeSuccessCopyWithImpl(
      _PromoCodeSuccess _value, $Res Function(_PromoCodeSuccess) _then)
      : super(_value, (v) => _then(v as _PromoCodeSuccess));

  @override
  _PromoCodeSuccess get _value => super._value as _PromoCodeSuccess;
}

/// @nodoc

class _$_PromoCodeSuccess implements _PromoCodeSuccess {
  _$_PromoCodeSuccess();

  @override
  String toString() {
    return 'PaymentState.promoCodeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PromoCodeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return promoCodeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeSuccess != null) {
      return promoCodeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return promoCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeSuccess != null) {
      return promoCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class _PromoCodeSuccess implements PaymentState {
  factory _PromoCodeSuccess() = _$_PromoCodeSuccess;
}

/// @nodoc
abstract class _$PromoCodeErrorCopyWith<$Res> {
  factory _$PromoCodeErrorCopyWith(
          _PromoCodeError value, $Res Function(_PromoCodeError) then) =
      __$PromoCodeErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$PromoCodeErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PromoCodeErrorCopyWith<$Res> {
  __$PromoCodeErrorCopyWithImpl(
      _PromoCodeError _value, $Res Function(_PromoCodeError) _then)
      : super(_value, (v) => _then(v as _PromoCodeError));

  @override
  _PromoCodeError get _value => super._value as _PromoCodeError;
}

/// @nodoc

class _$_PromoCodeError implements _PromoCodeError {
  _$_PromoCodeError();

  @override
  String toString() {
    return 'PaymentState.promoCodeError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PromoCodeError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return promoCodeError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeError != null) {
      return promoCodeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return promoCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeError != null) {
      return promoCodeError(this);
    }
    return orElse();
  }
}

abstract class _PromoCodeError implements PaymentState {
  factory _PromoCodeError() = _$_PromoCodeError;
}

/// @nodoc
abstract class _$PromoCodeChangedCopyWith<$Res> {
  factory _$PromoCodeChangedCopyWith(
          _PromoCodeChanged value, $Res Function(_PromoCodeChanged) then) =
      __$PromoCodeChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$PromoCodeChangedCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PromoCodeChangedCopyWith<$Res> {
  __$PromoCodeChangedCopyWithImpl(
      _PromoCodeChanged _value, $Res Function(_PromoCodeChanged) _then)
      : super(_value, (v) => _then(v as _PromoCodeChanged));

  @override
  _PromoCodeChanged get _value => super._value as _PromoCodeChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_PromoCodeChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PromoCodeChanged implements _PromoCodeChanged {
  _$_PromoCodeChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'PaymentState.promoCodeChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoCodeChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PromoCodeChangedCopyWith<_PromoCodeChanged> get copyWith =>
      __$PromoCodeChangedCopyWithImpl<_PromoCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nonAuthorized,
    required TResult Function(bool successful) postPayment,
    required TResult Function() loading,
    required TResult Function() promoCodeChecking,
    required TResult Function() promoCodeSuccess,
    required TResult Function() promoCodeError,
    required TResult Function(String value) promoCodeChanged,
  }) {
    return promoCodeChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nonAuthorized,
    TResult Function(bool successful)? postPayment,
    TResult Function()? loading,
    TResult Function()? promoCodeChecking,
    TResult Function()? promoCodeSuccess,
    TResult Function()? promoCodeError,
    TResult Function(String value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeChanged != null) {
      return promoCodeChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NonAuthorized value) nonAuthorized,
    required TResult Function(_PostPayment value) postPayment,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PromoCodeChecking value) promoCodeChecking,
    required TResult Function(_PromoCodeSuccess value) promoCodeSuccess,
    required TResult Function(_PromoCodeError value) promoCodeError,
    required TResult Function(_PromoCodeChanged value) promoCodeChanged,
  }) {
    return promoCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NonAuthorized value)? nonAuthorized,
    TResult Function(_PostPayment value)? postPayment,
    TResult Function(_Loading value)? loading,
    TResult Function(_PromoCodeChecking value)? promoCodeChecking,
    TResult Function(_PromoCodeSuccess value)? promoCodeSuccess,
    TResult Function(_PromoCodeError value)? promoCodeError,
    TResult Function(_PromoCodeChanged value)? promoCodeChanged,
    required TResult orElse(),
  }) {
    if (promoCodeChanged != null) {
      return promoCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PromoCodeChanged implements PaymentState {
  factory _PromoCodeChanged(String value) = _$_PromoCodeChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PromoCodeChangedCopyWith<_PromoCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

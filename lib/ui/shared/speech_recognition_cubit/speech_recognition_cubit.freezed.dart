// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'speech_recognition_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpeechRecognitionStateTearOff {
  const _$SpeechRecognitionStateTearOff();

  _NotListening notListening() {
    return _NotListening();
  }

  _StartListening startListening() {
    return _StartListening();
  }

  _Listening listening(String speech) {
    return _Listening(
      speech,
    );
  }
}

/// @nodoc
const $SpeechRecognitionState = _$SpeechRecognitionStateTearOff();

/// @nodoc
mixin _$SpeechRecognitionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notListening,
    required TResult Function() startListening,
    required TResult Function(String speech) listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notListening,
    TResult Function()? startListening,
    TResult Function(String speech)? listening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotListening value) notListening,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_Listening value) listening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotListening value)? notListening,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechRecognitionStateCopyWith<$Res> {
  factory $SpeechRecognitionStateCopyWith(SpeechRecognitionState value,
          $Res Function(SpeechRecognitionState) then) =
      _$SpeechRecognitionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpeechRecognitionStateCopyWithImpl<$Res>
    implements $SpeechRecognitionStateCopyWith<$Res> {
  _$SpeechRecognitionStateCopyWithImpl(this._value, this._then);

  final SpeechRecognitionState _value;
  // ignore: unused_field
  final $Res Function(SpeechRecognitionState) _then;
}

/// @nodoc
abstract class _$NotListeningCopyWith<$Res> {
  factory _$NotListeningCopyWith(
          _NotListening value, $Res Function(_NotListening) then) =
      __$NotListeningCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotListeningCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res>
    implements _$NotListeningCopyWith<$Res> {
  __$NotListeningCopyWithImpl(
      _NotListening _value, $Res Function(_NotListening) _then)
      : super(_value, (v) => _then(v as _NotListening));

  @override
  _NotListening get _value => super._value as _NotListening;
}

/// @nodoc

class _$_NotListening implements _NotListening {
  _$_NotListening();

  @override
  String toString() {
    return 'SpeechRecognitionState.notListening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotListening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notListening,
    required TResult Function() startListening,
    required TResult Function(String speech) listening,
  }) {
    return notListening();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notListening,
    TResult Function()? startListening,
    TResult Function(String speech)? listening,
    required TResult orElse(),
  }) {
    if (notListening != null) {
      return notListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotListening value) notListening,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_Listening value) listening,
  }) {
    return notListening(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotListening value)? notListening,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (notListening != null) {
      return notListening(this);
    }
    return orElse();
  }
}

abstract class _NotListening implements SpeechRecognitionState {
  factory _NotListening() = _$_NotListening;
}

/// @nodoc
abstract class _$StartListeningCopyWith<$Res> {
  factory _$StartListeningCopyWith(
          _StartListening value, $Res Function(_StartListening) then) =
      __$StartListeningCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartListeningCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res>
    implements _$StartListeningCopyWith<$Res> {
  __$StartListeningCopyWithImpl(
      _StartListening _value, $Res Function(_StartListening) _then)
      : super(_value, (v) => _then(v as _StartListening));

  @override
  _StartListening get _value => super._value as _StartListening;
}

/// @nodoc

class _$_StartListening implements _StartListening {
  _$_StartListening();

  @override
  String toString() {
    return 'SpeechRecognitionState.startListening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartListening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notListening,
    required TResult Function() startListening,
    required TResult Function(String speech) listening,
  }) {
    return startListening();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notListening,
    TResult Function()? startListening,
    TResult Function(String speech)? listening,
    required TResult orElse(),
  }) {
    if (startListening != null) {
      return startListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotListening value) notListening,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_Listening value) listening,
  }) {
    return startListening(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotListening value)? notListening,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (startListening != null) {
      return startListening(this);
    }
    return orElse();
  }
}

abstract class _StartListening implements SpeechRecognitionState {
  factory _StartListening() = _$_StartListening;
}

/// @nodoc
abstract class _$ListeningCopyWith<$Res> {
  factory _$ListeningCopyWith(
          _Listening value, $Res Function(_Listening) then) =
      __$ListeningCopyWithImpl<$Res>;
  $Res call({String speech});
}

/// @nodoc
class __$ListeningCopyWithImpl<$Res>
    extends _$SpeechRecognitionStateCopyWithImpl<$Res>
    implements _$ListeningCopyWith<$Res> {
  __$ListeningCopyWithImpl(_Listening _value, $Res Function(_Listening) _then)
      : super(_value, (v) => _then(v as _Listening));

  @override
  _Listening get _value => super._value as _Listening;

  @override
  $Res call({
    Object? speech = freezed,
  }) {
    return _then(_Listening(
      speech == freezed
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Listening implements _Listening {
  _$_Listening(this.speech);

  @override
  final String speech;

  @override
  String toString() {
    return 'SpeechRecognitionState.listening(speech: $speech)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Listening &&
            (identical(other.speech, speech) ||
                const DeepCollectionEquality().equals(other.speech, speech)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speech);

  @JsonKey(ignore: true)
  @override
  _$ListeningCopyWith<_Listening> get copyWith =>
      __$ListeningCopyWithImpl<_Listening>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notListening,
    required TResult Function() startListening,
    required TResult Function(String speech) listening,
  }) {
    return listening(speech);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notListening,
    TResult Function()? startListening,
    TResult Function(String speech)? listening,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(speech);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotListening value) notListening,
    required TResult Function(_StartListening value) startListening,
    required TResult Function(_Listening value) listening,
  }) {
    return listening(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotListening value)? notListening,
    TResult Function(_StartListening value)? startListening,
    TResult Function(_Listening value)? listening,
    required TResult orElse(),
  }) {
    if (listening != null) {
      return listening(this);
    }
    return orElse();
  }
}

abstract class _Listening implements SpeechRecognitionState {
  factory _Listening(String speech) = _$_Listening;

  String get speech => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ListeningCopyWith<_Listening> get copyWith =>
      throw _privateConstructorUsedError;
}

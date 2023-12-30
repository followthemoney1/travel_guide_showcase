// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'subscription_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionResponse _$SubscriptionResponseFromJson(Map<String, dynamic> json) {
  return _SubscriptionResponse.fromJson(json);
}

/// @nodoc
class _$SubscriptionResponseTearOff {
  const _$SubscriptionResponseTearOff();

  _SubscriptionResponse call({bool subscribed = false}) {
    return _SubscriptionResponse(
      subscribed: subscribed,
    );
  }

  SubscriptionResponse fromJson(Map<String, Object> json) {
    return SubscriptionResponse.fromJson(json);
  }
}

/// @nodoc
const $SubscriptionResponse = _$SubscriptionResponseTearOff();

/// @nodoc
mixin _$SubscriptionResponse {
  bool get subscribed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionResponseCopyWith<SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionResponseCopyWith<$Res> {
  factory $SubscriptionResponseCopyWith(SubscriptionResponse value,
          $Res Function(SubscriptionResponse) then) =
      _$SubscriptionResponseCopyWithImpl<$Res>;
  $Res call({bool subscribed});
}

/// @nodoc
class _$SubscriptionResponseCopyWithImpl<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  _$SubscriptionResponseCopyWithImpl(this._value, this._then);

  final SubscriptionResponse _value;
  // ignore: unused_field
  final $Res Function(SubscriptionResponse) _then;

  @override
  $Res call({
    Object? subscribed = freezed,
  }) {
    return _then(_value.copyWith(
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionResponseCopyWith<$Res>
    implements $SubscriptionResponseCopyWith<$Res> {
  factory _$SubscriptionResponseCopyWith(_SubscriptionResponse value,
          $Res Function(_SubscriptionResponse) then) =
      __$SubscriptionResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool subscribed});
}

/// @nodoc
class __$SubscriptionResponseCopyWithImpl<$Res>
    extends _$SubscriptionResponseCopyWithImpl<$Res>
    implements _$SubscriptionResponseCopyWith<$Res> {
  __$SubscriptionResponseCopyWithImpl(
      _SubscriptionResponse _value, $Res Function(_SubscriptionResponse) _then)
      : super(_value, (v) => _then(v as _SubscriptionResponse));

  @override
  _SubscriptionResponse get _value => super._value as _SubscriptionResponse;

  @override
  $Res call({
    Object? subscribed = freezed,
  }) {
    return _then(_SubscriptionResponse(
      subscribed: subscribed == freezed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionResponse implements _SubscriptionResponse {
  _$_SubscriptionResponse({this.subscribed = false});

  factory _$_SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscriptionResponseFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool subscribed;

  @override
  String toString() {
    return 'SubscriptionResponse(subscribed: $subscribed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscriptionResponse &&
            (identical(other.subscribed, subscribed) ||
                const DeepCollectionEquality()
                    .equals(other.subscribed, subscribed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subscribed);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionResponseCopyWith<_SubscriptionResponse> get copyWith =>
      __$SubscriptionResponseCopyWithImpl<_SubscriptionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscriptionResponseToJson(this);
  }
}

abstract class _SubscriptionResponse implements SubscriptionResponse {
  factory _SubscriptionResponse({bool subscribed}) = _$_SubscriptionResponse;

  factory _SubscriptionResponse.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionResponse.fromJson;

  @override
  bool get subscribed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionResponseCopyWith<_SubscriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscribeToTheNewsletterBody _$SubscribeToTheNewsletterBodyFromJson(
    Map<String, dynamic> json) {
  return _SubscribeToTheNewsletterBody.fromJson(json);
}

/// @nodoc
class _$SubscribeToTheNewsletterBodyTearOff {
  const _$SubscribeToTheNewsletterBodyTearOff();

  _SubscribeToTheNewsletterBody call({bool subscribe = false}) {
    return _SubscribeToTheNewsletterBody(
      subscribe: subscribe,
    );
  }

  SubscribeToTheNewsletterBody fromJson(Map<String, Object> json) {
    return SubscribeToTheNewsletterBody.fromJson(json);
  }
}

/// @nodoc
const $SubscribeToTheNewsletterBody = _$SubscribeToTheNewsletterBodyTearOff();

/// @nodoc
mixin _$SubscribeToTheNewsletterBody {
  bool get subscribe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeToTheNewsletterBodyCopyWith<SubscribeToTheNewsletterBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeToTheNewsletterBodyCopyWith<$Res> {
  factory $SubscribeToTheNewsletterBodyCopyWith(
          SubscribeToTheNewsletterBody value,
          $Res Function(SubscribeToTheNewsletterBody) then) =
      _$SubscribeToTheNewsletterBodyCopyWithImpl<$Res>;
  $Res call({bool subscribe});
}

/// @nodoc
class _$SubscribeToTheNewsletterBodyCopyWithImpl<$Res>
    implements $SubscribeToTheNewsletterBodyCopyWith<$Res> {
  _$SubscribeToTheNewsletterBodyCopyWithImpl(this._value, this._then);

  final SubscribeToTheNewsletterBody _value;
  // ignore: unused_field
  final $Res Function(SubscribeToTheNewsletterBody) _then;

  @override
  $Res call({
    Object? subscribe = freezed,
  }) {
    return _then(_value.copyWith(
      subscribe: subscribe == freezed
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SubscribeToTheNewsletterBodyCopyWith<$Res>
    implements $SubscribeToTheNewsletterBodyCopyWith<$Res> {
  factory _$SubscribeToTheNewsletterBodyCopyWith(
          _SubscribeToTheNewsletterBody value,
          $Res Function(_SubscribeToTheNewsletterBody) then) =
      __$SubscribeToTheNewsletterBodyCopyWithImpl<$Res>;
  @override
  $Res call({bool subscribe});
}

/// @nodoc
class __$SubscribeToTheNewsletterBodyCopyWithImpl<$Res>
    extends _$SubscribeToTheNewsletterBodyCopyWithImpl<$Res>
    implements _$SubscribeToTheNewsletterBodyCopyWith<$Res> {
  __$SubscribeToTheNewsletterBodyCopyWithImpl(
      _SubscribeToTheNewsletterBody _value,
      $Res Function(_SubscribeToTheNewsletterBody) _then)
      : super(_value, (v) => _then(v as _SubscribeToTheNewsletterBody));

  @override
  _SubscribeToTheNewsletterBody get _value =>
      super._value as _SubscribeToTheNewsletterBody;

  @override
  $Res call({
    Object? subscribe = freezed,
  }) {
    return _then(_SubscribeToTheNewsletterBody(
      subscribe: subscribe == freezed
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscribeToTheNewsletterBody implements _SubscribeToTheNewsletterBody {
  _$_SubscribeToTheNewsletterBody({this.subscribe = false});

  factory _$_SubscribeToTheNewsletterBody.fromJson(Map<String, dynamic> json) =>
      _$_$_SubscribeToTheNewsletterBodyFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool subscribe;

  @override
  String toString() {
    return 'SubscribeToTheNewsletterBody(subscribe: $subscribe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubscribeToTheNewsletterBody &&
            (identical(other.subscribe, subscribe) ||
                const DeepCollectionEquality()
                    .equals(other.subscribe, subscribe)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subscribe);

  @JsonKey(ignore: true)
  @override
  _$SubscribeToTheNewsletterBodyCopyWith<_SubscribeToTheNewsletterBody>
      get copyWith => __$SubscribeToTheNewsletterBodyCopyWithImpl<
          _SubscribeToTheNewsletterBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubscribeToTheNewsletterBodyToJson(this);
  }
}

abstract class _SubscribeToTheNewsletterBody
    implements SubscribeToTheNewsletterBody {
  factory _SubscribeToTheNewsletterBody({bool subscribe}) =
      _$_SubscribeToTheNewsletterBody;

  factory _SubscribeToTheNewsletterBody.fromJson(Map<String, dynamic> json) =
      _$_SubscribeToTheNewsletterBody.fromJson;

  @override
  bool get subscribe => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscribeToTheNewsletterBodyCopyWith<_SubscribeToTheNewsletterBody>
      get copyWith => throw _privateConstructorUsedError;
}

MeResponse _$MeResponseFromJson(Map<String, dynamic> json) {
  return _MeResponse.fromJson(json);
}

/// @nodoc
class _$MeResponseTearOff {
  const _$MeResponseTearOff();

  _MeResponse call(
      {@HiveField(0) int? id = null,
      @HiveField(1) String name = '',
      @HiveField(2) String surname = '',
      @HiveField(3) String email = '',
      @HiveField(5) bool isNextBuy = false,
      @HiveField(6) String role = ''}) {
    return _MeResponse(
      id: id,
      name: name,
      surname: surname,
      email: email,
      isNextBuy: isNextBuy,
      role: role,
    );
  }

  MeResponse fromJson(Map<String, Object> json) {
    return MeResponse.fromJson(json);
  }
}

/// @nodoc
const $MeResponse = _$MeResponseTearOff();

/// @nodoc
mixin _$MeResponse {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get surname => throw _privateConstructorUsedError;
  @HiveField(3)
  String get email =>
      throw _privateConstructorUsedError; // @HiveField(4) bool isVerified,
  @HiveField(5)
  bool get isNextBuy => throw _privateConstructorUsedError;
  @HiveField(6)
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeResponseCopyWith<MeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeResponseCopyWith<$Res> {
  factory $MeResponseCopyWith(
          MeResponse value, $Res Function(MeResponse) then) =
      _$MeResponseCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String name,
      @HiveField(2) String surname,
      @HiveField(3) String email,
      @HiveField(5) bool isNextBuy,
      @HiveField(6) String role});
}

/// @nodoc
class _$MeResponseCopyWithImpl<$Res> implements $MeResponseCopyWith<$Res> {
  _$MeResponseCopyWithImpl(this._value, this._then);

  final MeResponse _value;
  // ignore: unused_field
  final $Res Function(MeResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? isNextBuy = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isNextBuy: isNextBuy == freezed
          ? _value.isNextBuy
          : isNextBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MeResponseCopyWith<$Res> implements $MeResponseCopyWith<$Res> {
  factory _$MeResponseCopyWith(
          _MeResponse value, $Res Function(_MeResponse) then) =
      __$MeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String name,
      @HiveField(2) String surname,
      @HiveField(3) String email,
      @HiveField(5) bool isNextBuy,
      @HiveField(6) String role});
}

/// @nodoc
class __$MeResponseCopyWithImpl<$Res> extends _$MeResponseCopyWithImpl<$Res>
    implements _$MeResponseCopyWith<$Res> {
  __$MeResponseCopyWithImpl(
      _MeResponse _value, $Res Function(_MeResponse) _then)
      : super(_value, (v) => _then(v as _MeResponse));

  @override
  _MeResponse get _value => super._value as _MeResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? isNextBuy = freezed,
    Object? role = freezed,
  }) {
    return _then(_MeResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isNextBuy: isNextBuy == freezed
          ? _value.isNextBuy
          : isNextBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.meResponse)
class _$_MeResponse implements _MeResponse {
  _$_MeResponse(
      {@HiveField(0) this.id = null,
      @HiveField(1) this.name = '',
      @HiveField(2) this.surname = '',
      @HiveField(3) this.email = '',
      @HiveField(5) this.isNextBuy = false,
      @HiveField(6) this.role = ''});

  factory _$_MeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MeResponseFromJson(json);

  @JsonKey(defaultValue: null)
  @override
  @HiveField(0)
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String name;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String surname;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(3)
  final String email;
  @JsonKey(defaultValue: false)
  @override // @HiveField(4) bool isVerified,
  @HiveField(5)
  final bool isNextBuy;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(6)
  final String role;

  @override
  String toString() {
    return 'MeResponse(id: $id, name: $name, surname: $surname, email: $email, isNextBuy: $isNextBuy, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MeResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isNextBuy, isNextBuy) ||
                const DeepCollectionEquality()
                    .equals(other.isNextBuy, isNextBuy)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isNextBuy) ^
      const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$MeResponseCopyWith<_MeResponse> get copyWith =>
      __$MeResponseCopyWithImpl<_MeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MeResponseToJson(this);
  }
}

abstract class _MeResponse implements MeResponse {
  factory _MeResponse(
      {@HiveField(0) int? id,
      @HiveField(1) String name,
      @HiveField(2) String surname,
      @HiveField(3) String email,
      @HiveField(5) bool isNextBuy,
      @HiveField(6) String role}) = _$_MeResponse;

  factory _MeResponse.fromJson(Map<String, dynamic> json) =
      _$_MeResponse.fromJson;

  @override
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get surname => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get email => throw _privateConstructorUsedError;
  @override // @HiveField(4) bool isVerified,
  @HiveField(5)
  bool get isNextBuy => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MeResponseCopyWith<_MeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

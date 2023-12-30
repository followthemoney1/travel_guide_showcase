// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentAndroidBody _$PaymentAndroidBodyFromJson(Map<String, dynamic> json) {
  return _PaymentAndroidBody.fromJson(json);
}

/// @nodoc
class _$PaymentAndroidBodyTearOff {
  const _$PaymentAndroidBodyTearOff();

  _PaymentAndroidBody call(
      {String? purchaseToken = '',
      String tourId = '',
      String packageName = '',
      String? productId = '',
      String language = ''}) {
    return _PaymentAndroidBody(
      purchaseToken: purchaseToken,
      tourId: tourId,
      packageName: packageName,
      productId: productId,
      language: language,
    );
  }

  PaymentAndroidBody fromJson(Map<String, Object> json) {
    return PaymentAndroidBody.fromJson(json);
  }
}

/// @nodoc
const $PaymentAndroidBody = _$PaymentAndroidBodyTearOff();

/// @nodoc
mixin _$PaymentAndroidBody {
  String? get purchaseToken => throw _privateConstructorUsedError;
  String get tourId => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String? get productId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentAndroidBodyCopyWith<PaymentAndroidBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAndroidBodyCopyWith<$Res> {
  factory $PaymentAndroidBodyCopyWith(
          PaymentAndroidBody value, $Res Function(PaymentAndroidBody) then) =
      _$PaymentAndroidBodyCopyWithImpl<$Res>;
  $Res call(
      {String? purchaseToken,
      String tourId,
      String packageName,
      String? productId,
      String language});
}

/// @nodoc
class _$PaymentAndroidBodyCopyWithImpl<$Res>
    implements $PaymentAndroidBodyCopyWith<$Res> {
  _$PaymentAndroidBodyCopyWithImpl(this._value, this._then);

  final PaymentAndroidBody _value;
  // ignore: unused_field
  final $Res Function(PaymentAndroidBody) _then;

  @override
  $Res call({
    Object? purchaseToken = freezed,
    Object? tourId = freezed,
    Object? packageName = freezed,
    Object? productId = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseToken: purchaseToken == freezed
          ? _value.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentAndroidBodyCopyWith<$Res>
    implements $PaymentAndroidBodyCopyWith<$Res> {
  factory _$PaymentAndroidBodyCopyWith(
          _PaymentAndroidBody value, $Res Function(_PaymentAndroidBody) then) =
      __$PaymentAndroidBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? purchaseToken,
      String tourId,
      String packageName,
      String? productId,
      String language});
}

/// @nodoc
class __$PaymentAndroidBodyCopyWithImpl<$Res>
    extends _$PaymentAndroidBodyCopyWithImpl<$Res>
    implements _$PaymentAndroidBodyCopyWith<$Res> {
  __$PaymentAndroidBodyCopyWithImpl(
      _PaymentAndroidBody _value, $Res Function(_PaymentAndroidBody) _then)
      : super(_value, (v) => _then(v as _PaymentAndroidBody));

  @override
  _PaymentAndroidBody get _value => super._value as _PaymentAndroidBody;

  @override
  $Res call({
    Object? purchaseToken = freezed,
    Object? tourId = freezed,
    Object? packageName = freezed,
    Object? productId = freezed,
    Object? language = freezed,
  }) {
    return _then(_PaymentAndroidBody(
      purchaseToken: purchaseToken == freezed
          ? _value.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentAndroidBody implements _PaymentAndroidBody {
  _$_PaymentAndroidBody(
      {this.purchaseToken = '',
      this.tourId = '',
      this.packageName = '',
      this.productId = '',
      this.language = ''});

  factory _$_PaymentAndroidBody.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentAndroidBodyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String? purchaseToken;
  @JsonKey(defaultValue: '')
  @override
  final String tourId;
  @JsonKey(defaultValue: '')
  @override
  final String packageName;
  @JsonKey(defaultValue: '')
  @override
  final String? productId;
  @JsonKey(defaultValue: '')
  @override
  final String language;

  @override
  String toString() {
    return 'PaymentAndroidBody(purchaseToken: $purchaseToken, tourId: $tourId, packageName: $packageName, productId: $productId, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentAndroidBody &&
            (identical(other.purchaseToken, purchaseToken) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseToken, purchaseToken)) &&
            (identical(other.tourId, tourId) ||
                const DeepCollectionEquality().equals(other.tourId, tourId)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(purchaseToken) ^
      const DeepCollectionEquality().hash(tourId) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$PaymentAndroidBodyCopyWith<_PaymentAndroidBody> get copyWith =>
      __$PaymentAndroidBodyCopyWithImpl<_PaymentAndroidBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentAndroidBodyToJson(this);
  }
}

abstract class _PaymentAndroidBody implements PaymentAndroidBody {
  factory _PaymentAndroidBody(
      {String? purchaseToken,
      String tourId,
      String packageName,
      String? productId,
      String language}) = _$_PaymentAndroidBody;

  factory _PaymentAndroidBody.fromJson(Map<String, dynamic> json) =
      _$_PaymentAndroidBody.fromJson;

  @override
  String? get purchaseToken => throw _privateConstructorUsedError;
  @override
  String get tourId => throw _privateConstructorUsedError;
  @override
  String get packageName => throw _privateConstructorUsedError;
  @override
  String? get productId => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentAndroidBodyCopyWith<_PaymentAndroidBody> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentAppleBody _$PaymentAppleBodyFromJson(Map<String, dynamic> json) {
  return _PaymentAppleBody.fromJson(json);
}

/// @nodoc
class _$PaymentAppleBodyTearOff {
  const _$PaymentAppleBodyTearOff();

  _PaymentAppleBody call(
      {String tourId = '', String language = '', String? appleReceipt = ''}) {
    return _PaymentAppleBody(
      tourId: tourId,
      language: language,
      appleReceipt: appleReceipt,
    );
  }

  PaymentAppleBody fromJson(Map<String, Object> json) {
    return PaymentAppleBody.fromJson(json);
  }
}

/// @nodoc
const $PaymentAppleBody = _$PaymentAppleBodyTearOff();

/// @nodoc
mixin _$PaymentAppleBody {
  String get tourId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get appleReceipt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentAppleBodyCopyWith<PaymentAppleBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAppleBodyCopyWith<$Res> {
  factory $PaymentAppleBodyCopyWith(
          PaymentAppleBody value, $Res Function(PaymentAppleBody) then) =
      _$PaymentAppleBodyCopyWithImpl<$Res>;
  $Res call({String tourId, String language, String? appleReceipt});
}

/// @nodoc
class _$PaymentAppleBodyCopyWithImpl<$Res>
    implements $PaymentAppleBodyCopyWith<$Res> {
  _$PaymentAppleBodyCopyWithImpl(this._value, this._then);

  final PaymentAppleBody _value;
  // ignore: unused_field
  final $Res Function(PaymentAppleBody) _then;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
    Object? appleReceipt = freezed,
  }) {
    return _then(_value.copyWith(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      appleReceipt: appleReceipt == freezed
          ? _value.appleReceipt
          : appleReceipt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentAppleBodyCopyWith<$Res>
    implements $PaymentAppleBodyCopyWith<$Res> {
  factory _$PaymentAppleBodyCopyWith(
          _PaymentAppleBody value, $Res Function(_PaymentAppleBody) then) =
      __$PaymentAppleBodyCopyWithImpl<$Res>;
  @override
  $Res call({String tourId, String language, String? appleReceipt});
}

/// @nodoc
class __$PaymentAppleBodyCopyWithImpl<$Res>
    extends _$PaymentAppleBodyCopyWithImpl<$Res>
    implements _$PaymentAppleBodyCopyWith<$Res> {
  __$PaymentAppleBodyCopyWithImpl(
      _PaymentAppleBody _value, $Res Function(_PaymentAppleBody) _then)
      : super(_value, (v) => _then(v as _PaymentAppleBody));

  @override
  _PaymentAppleBody get _value => super._value as _PaymentAppleBody;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
    Object? appleReceipt = freezed,
  }) {
    return _then(_PaymentAppleBody(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      appleReceipt: appleReceipt == freezed
          ? _value.appleReceipt
          : appleReceipt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentAppleBody implements _PaymentAppleBody {
  _$_PaymentAppleBody(
      {this.tourId = '', this.language = '', this.appleReceipt = ''});

  factory _$_PaymentAppleBody.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentAppleBodyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String tourId;
  @JsonKey(defaultValue: '')
  @override
  final String language;
  @JsonKey(defaultValue: '')
  @override
  final String? appleReceipt;

  @override
  String toString() {
    return 'PaymentAppleBody(tourId: $tourId, language: $language, appleReceipt: $appleReceipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentAppleBody &&
            (identical(other.tourId, tourId) ||
                const DeepCollectionEquality().equals(other.tourId, tourId)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.appleReceipt, appleReceipt) ||
                const DeepCollectionEquality()
                    .equals(other.appleReceipt, appleReceipt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tourId) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(appleReceipt);

  @JsonKey(ignore: true)
  @override
  _$PaymentAppleBodyCopyWith<_PaymentAppleBody> get copyWith =>
      __$PaymentAppleBodyCopyWithImpl<_PaymentAppleBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentAppleBodyToJson(this);
  }
}

abstract class _PaymentAppleBody implements PaymentAppleBody {
  factory _PaymentAppleBody(
      {String tourId,
      String language,
      String? appleReceipt}) = _$_PaymentAppleBody;

  factory _PaymentAppleBody.fromJson(Map<String, dynamic> json) =
      _$_PaymentAppleBody.fromJson;

  @override
  String get tourId => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String? get appleReceipt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentAppleBodyCopyWith<_PaymentAppleBody> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentFreeBody _$PaymentFreeBodyFromJson(Map<String, dynamic> json) {
  return _PaymentFreeBody.fromJson(json);
}

/// @nodoc
class _$PaymentFreeBodyTearOff {
  const _$PaymentFreeBodyTearOff();

  _PaymentFreeBody call({String tourId = '', String language = ''}) {
    return _PaymentFreeBody(
      tourId: tourId,
      language: language,
    );
  }

  PaymentFreeBody fromJson(Map<String, Object> json) {
    return PaymentFreeBody.fromJson(json);
  }
}

/// @nodoc
const $PaymentFreeBody = _$PaymentFreeBodyTearOff();

/// @nodoc
mixin _$PaymentFreeBody {
  String get tourId => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentFreeBodyCopyWith<PaymentFreeBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFreeBodyCopyWith<$Res> {
  factory $PaymentFreeBodyCopyWith(
          PaymentFreeBody value, $Res Function(PaymentFreeBody) then) =
      _$PaymentFreeBodyCopyWithImpl<$Res>;
  $Res call({String tourId, String language});
}

/// @nodoc
class _$PaymentFreeBodyCopyWithImpl<$Res>
    implements $PaymentFreeBodyCopyWith<$Res> {
  _$PaymentFreeBodyCopyWithImpl(this._value, this._then);

  final PaymentFreeBody _value;
  // ignore: unused_field
  final $Res Function(PaymentFreeBody) _then;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentFreeBodyCopyWith<$Res>
    implements $PaymentFreeBodyCopyWith<$Res> {
  factory _$PaymentFreeBodyCopyWith(
          _PaymentFreeBody value, $Res Function(_PaymentFreeBody) then) =
      __$PaymentFreeBodyCopyWithImpl<$Res>;
  @override
  $Res call({String tourId, String language});
}

/// @nodoc
class __$PaymentFreeBodyCopyWithImpl<$Res>
    extends _$PaymentFreeBodyCopyWithImpl<$Res>
    implements _$PaymentFreeBodyCopyWith<$Res> {
  __$PaymentFreeBodyCopyWithImpl(
      _PaymentFreeBody _value, $Res Function(_PaymentFreeBody) _then)
      : super(_value, (v) => _then(v as _PaymentFreeBody));

  @override
  _PaymentFreeBody get _value => super._value as _PaymentFreeBody;

  @override
  $Res call({
    Object? tourId = freezed,
    Object? language = freezed,
  }) {
    return _then(_PaymentFreeBody(
      tourId: tourId == freezed
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentFreeBody implements _PaymentFreeBody {
  _$_PaymentFreeBody({this.tourId = '', this.language = ''});

  factory _$_PaymentFreeBody.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentFreeBodyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String tourId;
  @JsonKey(defaultValue: '')
  @override
  final String language;

  @override
  String toString() {
    return 'PaymentFreeBody(tourId: $tourId, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentFreeBody &&
            (identical(other.tourId, tourId) ||
                const DeepCollectionEquality().equals(other.tourId, tourId)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tourId) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$PaymentFreeBodyCopyWith<_PaymentFreeBody> get copyWith =>
      __$PaymentFreeBodyCopyWithImpl<_PaymentFreeBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentFreeBodyToJson(this);
  }
}

abstract class _PaymentFreeBody implements PaymentFreeBody {
  factory _PaymentFreeBody({String tourId, String language}) =
      _$_PaymentFreeBody;

  factory _PaymentFreeBody.fromJson(Map<String, dynamic> json) =
      _$_PaymentFreeBody.fromJson;

  @override
  String get tourId => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentFreeBodyCopyWith<_PaymentFreeBody> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoCodeBody _$PromoCodeBodyFromJson(Map<String, dynamic> json) {
  return _PromoCodeBody.fromJson(json);
}

/// @nodoc
class _$PromoCodeBodyTearOff {
  const _$PromoCodeBodyTearOff();

  _PromoCodeBody call(
      {String promocod = '', String language = '', int audioTour = 0}) {
    return _PromoCodeBody(
      promocod: promocod,
      language: language,
      audioTour: audioTour,
    );
  }

  PromoCodeBody fromJson(Map<String, Object> json) {
    return PromoCodeBody.fromJson(json);
  }
}

/// @nodoc
const $PromoCodeBody = _$PromoCodeBodyTearOff();

/// @nodoc
mixin _$PromoCodeBody {
  String get promocod => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get audioTour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCodeBodyCopyWith<PromoCodeBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCodeBodyCopyWith<$Res> {
  factory $PromoCodeBodyCopyWith(
          PromoCodeBody value, $Res Function(PromoCodeBody) then) =
      _$PromoCodeBodyCopyWithImpl<$Res>;
  $Res call({String promocod, String language, int audioTour});
}

/// @nodoc
class _$PromoCodeBodyCopyWithImpl<$Res>
    implements $PromoCodeBodyCopyWith<$Res> {
  _$PromoCodeBodyCopyWithImpl(this._value, this._then);

  final PromoCodeBody _value;
  // ignore: unused_field
  final $Res Function(PromoCodeBody) _then;

  @override
  $Res call({
    Object? promocod = freezed,
    Object? language = freezed,
    Object? audioTour = freezed,
  }) {
    return _then(_value.copyWith(
      promocod: promocod == freezed
          ? _value.promocod
          : promocod // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      audioTour: audioTour == freezed
          ? _value.audioTour
          : audioTour // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PromoCodeBodyCopyWith<$Res>
    implements $PromoCodeBodyCopyWith<$Res> {
  factory _$PromoCodeBodyCopyWith(
          _PromoCodeBody value, $Res Function(_PromoCodeBody) then) =
      __$PromoCodeBodyCopyWithImpl<$Res>;
  @override
  $Res call({String promocod, String language, int audioTour});
}

/// @nodoc
class __$PromoCodeBodyCopyWithImpl<$Res>
    extends _$PromoCodeBodyCopyWithImpl<$Res>
    implements _$PromoCodeBodyCopyWith<$Res> {
  __$PromoCodeBodyCopyWithImpl(
      _PromoCodeBody _value, $Res Function(_PromoCodeBody) _then)
      : super(_value, (v) => _then(v as _PromoCodeBody));

  @override
  _PromoCodeBody get _value => super._value as _PromoCodeBody;

  @override
  $Res call({
    Object? promocod = freezed,
    Object? language = freezed,
    Object? audioTour = freezed,
  }) {
    return _then(_PromoCodeBody(
      promocod: promocod == freezed
          ? _value.promocod
          : promocod // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      audioTour: audioTour == freezed
          ? _value.audioTour
          : audioTour // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoCodeBody implements _PromoCodeBody {
  _$_PromoCodeBody(
      {this.promocod = '', this.language = '', this.audioTour = 0});

  factory _$_PromoCodeBody.fromJson(Map<String, dynamic> json) =>
      _$_$_PromoCodeBodyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String promocod;
  @JsonKey(defaultValue: '')
  @override
  final String language;
  @JsonKey(defaultValue: 0)
  @override
  final int audioTour;

  @override
  String toString() {
    return 'PromoCodeBody(promocod: $promocod, language: $language, audioTour: $audioTour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoCodeBody &&
            (identical(other.promocod, promocod) ||
                const DeepCollectionEquality()
                    .equals(other.promocod, promocod)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.audioTour, audioTour) ||
                const DeepCollectionEquality()
                    .equals(other.audioTour, audioTour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(promocod) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(audioTour);

  @JsonKey(ignore: true)
  @override
  _$PromoCodeBodyCopyWith<_PromoCodeBody> get copyWith =>
      __$PromoCodeBodyCopyWithImpl<_PromoCodeBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoCodeBodyToJson(this);
  }
}

abstract class _PromoCodeBody implements PromoCodeBody {
  factory _PromoCodeBody({String promocod, String language, int audioTour}) =
      _$_PromoCodeBody;

  factory _PromoCodeBody.fromJson(Map<String, dynamic> json) =
      _$_PromoCodeBody.fromJson;

  @override
  String get promocod => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get audioTour => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoCodeBodyCopyWith<_PromoCodeBody> get copyWith =>
      throw _privateConstructorUsedError;
}

PromoCodeData _$PromoCodeDataFromJson(Map<String, dynamic> json) {
  return _PromoCodeData.fromJson(json);
}

/// @nodoc
class _$PromoCodeDataTearOff {
  const _$PromoCodeDataTearOff();

  _PromoCodeData call(
      {String type = '',
      String appleProductId = '',
      String googleProductId = '',
      int amountOfUses = 0,
      int percentage = 0,
      String startTermOfWork = '',
      String endTermOfWork = '',
      Tour? audioTour = null}) {
    return _PromoCodeData(
      type: type,
      appleProductId: appleProductId,
      googleProductId: googleProductId,
      amountOfUses: amountOfUses,
      percentage: percentage,
      startTermOfWork: startTermOfWork,
      endTermOfWork: endTermOfWork,
      audioTour: audioTour,
    );
  }

  PromoCodeData fromJson(Map<String, Object> json) {
    return PromoCodeData.fromJson(json);
  }
}

/// @nodoc
const $PromoCodeData = _$PromoCodeDataTearOff();

/// @nodoc
mixin _$PromoCodeData {
  String get type => throw _privateConstructorUsedError;
  String get appleProductId => throw _privateConstructorUsedError;
  String get googleProductId => throw _privateConstructorUsedError;
  int get amountOfUses => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  String get startTermOfWork => throw _privateConstructorUsedError;
  String get endTermOfWork => throw _privateConstructorUsedError;
  Tour? get audioTour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromoCodeDataCopyWith<PromoCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoCodeDataCopyWith<$Res> {
  factory $PromoCodeDataCopyWith(
          PromoCodeData value, $Res Function(PromoCodeData) then) =
      _$PromoCodeDataCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String appleProductId,
      String googleProductId,
      int amountOfUses,
      int percentage,
      String startTermOfWork,
      String endTermOfWork,
      Tour? audioTour});

  $TourCopyWith<$Res>? get audioTour;
}

/// @nodoc
class _$PromoCodeDataCopyWithImpl<$Res>
    implements $PromoCodeDataCopyWith<$Res> {
  _$PromoCodeDataCopyWithImpl(this._value, this._then);

  final PromoCodeData _value;
  // ignore: unused_field
  final $Res Function(PromoCodeData) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? appleProductId = freezed,
    Object? googleProductId = freezed,
    Object? amountOfUses = freezed,
    Object? percentage = freezed,
    Object? startTermOfWork = freezed,
    Object? endTermOfWork = freezed,
    Object? audioTour = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      appleProductId: appleProductId == freezed
          ? _value.appleProductId
          : appleProductId // ignore: cast_nullable_to_non_nullable
              as String,
      googleProductId: googleProductId == freezed
          ? _value.googleProductId
          : googleProductId // ignore: cast_nullable_to_non_nullable
              as String,
      amountOfUses: amountOfUses == freezed
          ? _value.amountOfUses
          : amountOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      startTermOfWork: startTermOfWork == freezed
          ? _value.startTermOfWork
          : startTermOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      endTermOfWork: endTermOfWork == freezed
          ? _value.endTermOfWork
          : endTermOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      audioTour: audioTour == freezed
          ? _value.audioTour
          : audioTour // ignore: cast_nullable_to_non_nullable
              as Tour?,
    ));
  }

  @override
  $TourCopyWith<$Res>? get audioTour {
    if (_value.audioTour == null) {
      return null;
    }

    return $TourCopyWith<$Res>(_value.audioTour!, (value) {
      return _then(_value.copyWith(audioTour: value));
    });
  }
}

/// @nodoc
abstract class _$PromoCodeDataCopyWith<$Res>
    implements $PromoCodeDataCopyWith<$Res> {
  factory _$PromoCodeDataCopyWith(
          _PromoCodeData value, $Res Function(_PromoCodeData) then) =
      __$PromoCodeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String appleProductId,
      String googleProductId,
      int amountOfUses,
      int percentage,
      String startTermOfWork,
      String endTermOfWork,
      Tour? audioTour});

  @override
  $TourCopyWith<$Res>? get audioTour;
}

/// @nodoc
class __$PromoCodeDataCopyWithImpl<$Res>
    extends _$PromoCodeDataCopyWithImpl<$Res>
    implements _$PromoCodeDataCopyWith<$Res> {
  __$PromoCodeDataCopyWithImpl(
      _PromoCodeData _value, $Res Function(_PromoCodeData) _then)
      : super(_value, (v) => _then(v as _PromoCodeData));

  @override
  _PromoCodeData get _value => super._value as _PromoCodeData;

  @override
  $Res call({
    Object? type = freezed,
    Object? appleProductId = freezed,
    Object? googleProductId = freezed,
    Object? amountOfUses = freezed,
    Object? percentage = freezed,
    Object? startTermOfWork = freezed,
    Object? endTermOfWork = freezed,
    Object? audioTour = freezed,
  }) {
    return _then(_PromoCodeData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      appleProductId: appleProductId == freezed
          ? _value.appleProductId
          : appleProductId // ignore: cast_nullable_to_non_nullable
              as String,
      googleProductId: googleProductId == freezed
          ? _value.googleProductId
          : googleProductId // ignore: cast_nullable_to_non_nullable
              as String,
      amountOfUses: amountOfUses == freezed
          ? _value.amountOfUses
          : amountOfUses // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      startTermOfWork: startTermOfWork == freezed
          ? _value.startTermOfWork
          : startTermOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      endTermOfWork: endTermOfWork == freezed
          ? _value.endTermOfWork
          : endTermOfWork // ignore: cast_nullable_to_non_nullable
              as String,
      audioTour: audioTour == freezed
          ? _value.audioTour
          : audioTour // ignore: cast_nullable_to_non_nullable
              as Tour?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromoCodeData implements _PromoCodeData {
  _$_PromoCodeData(
      {this.type = '',
      this.appleProductId = '',
      this.googleProductId = '',
      this.amountOfUses = 0,
      this.percentage = 0,
      this.startTermOfWork = '',
      this.endTermOfWork = '',
      this.audioTour = null});

  factory _$_PromoCodeData.fromJson(Map<String, dynamic> json) =>
      _$_$_PromoCodeDataFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String appleProductId;
  @JsonKey(defaultValue: '')
  @override
  final String googleProductId;
  @JsonKey(defaultValue: 0)
  @override
  final int amountOfUses;
  @JsonKey(defaultValue: 0)
  @override
  final int percentage;
  @JsonKey(defaultValue: '')
  @override
  final String startTermOfWork;
  @JsonKey(defaultValue: '')
  @override
  final String endTermOfWork;
  @JsonKey(defaultValue: null)
  @override
  final Tour? audioTour;

  @override
  String toString() {
    return 'PromoCodeData(type: $type, appleProductId: $appleProductId, googleProductId: $googleProductId, amountOfUses: $amountOfUses, percentage: $percentage, startTermOfWork: $startTermOfWork, endTermOfWork: $endTermOfWork, audioTour: $audioTour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromoCodeData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.appleProductId, appleProductId) ||
                const DeepCollectionEquality()
                    .equals(other.appleProductId, appleProductId)) &&
            (identical(other.googleProductId, googleProductId) ||
                const DeepCollectionEquality()
                    .equals(other.googleProductId, googleProductId)) &&
            (identical(other.amountOfUses, amountOfUses) ||
                const DeepCollectionEquality()
                    .equals(other.amountOfUses, amountOfUses)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)) &&
            (identical(other.startTermOfWork, startTermOfWork) ||
                const DeepCollectionEquality()
                    .equals(other.startTermOfWork, startTermOfWork)) &&
            (identical(other.endTermOfWork, endTermOfWork) ||
                const DeepCollectionEquality()
                    .equals(other.endTermOfWork, endTermOfWork)) &&
            (identical(other.audioTour, audioTour) ||
                const DeepCollectionEquality()
                    .equals(other.audioTour, audioTour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(appleProductId) ^
      const DeepCollectionEquality().hash(googleProductId) ^
      const DeepCollectionEquality().hash(amountOfUses) ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(startTermOfWork) ^
      const DeepCollectionEquality().hash(endTermOfWork) ^
      const DeepCollectionEquality().hash(audioTour);

  @JsonKey(ignore: true)
  @override
  _$PromoCodeDataCopyWith<_PromoCodeData> get copyWith =>
      __$PromoCodeDataCopyWithImpl<_PromoCodeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromoCodeDataToJson(this);
  }
}

abstract class _PromoCodeData implements PromoCodeData {
  factory _PromoCodeData(
      {String type,
      String appleProductId,
      String googleProductId,
      int amountOfUses,
      int percentage,
      String startTermOfWork,
      String endTermOfWork,
      Tour? audioTour}) = _$_PromoCodeData;

  factory _PromoCodeData.fromJson(Map<String, dynamic> json) =
      _$_PromoCodeData.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get appleProductId => throw _privateConstructorUsedError;
  @override
  String get googleProductId => throw _privateConstructorUsedError;
  @override
  int get amountOfUses => throw _privateConstructorUsedError;
  @override
  int get percentage => throw _privateConstructorUsedError;
  @override
  String get startTermOfWork => throw _privateConstructorUsedError;
  @override
  String get endTermOfWork => throw _privateConstructorUsedError;
  @override
  Tour? get audioTour => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromoCodeDataCopyWith<_PromoCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

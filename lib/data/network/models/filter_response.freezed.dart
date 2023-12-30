// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filter_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterTourCategoriesByCityIdResponse
    _$FilterTourCategoriesByCityIdResponseFromJson(Map<String, dynamic> json) {
  return _FilterTourCategoriesByCityIdResponse.fromJson(json);
}

/// @nodoc
class _$FilterTourCategoriesByCityIdResponseTearOff {
  const _$FilterTourCategoriesByCityIdResponseTearOff();

  _FilterTourCategoriesByCityIdResponse call(
      {List<FilterCategory> filterCategories = const [],
      List<LanguageCode> languageCodes = const []}) {
    return _FilterTourCategoriesByCityIdResponse(
      filterCategories: filterCategories,
      languageCodes: languageCodes,
    );
  }

  FilterTourCategoriesByCityIdResponse fromJson(Map<String, Object> json) {
    return FilterTourCategoriesByCityIdResponse.fromJson(json);
  }
}

/// @nodoc
const $FilterTourCategoriesByCityIdResponse =
    _$FilterTourCategoriesByCityIdResponseTearOff();

/// @nodoc
mixin _$FilterTourCategoriesByCityIdResponse {
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  List<LanguageCode> get languageCodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterTourCategoriesByCityIdResponseCopyWith<
          FilterTourCategoriesByCityIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterTourCategoriesByCityIdResponseCopyWith<$Res> {
  factory $FilterTourCategoriesByCityIdResponseCopyWith(
          FilterTourCategoriesByCityIdResponse value,
          $Res Function(FilterTourCategoriesByCityIdResponse) then) =
      _$FilterTourCategoriesByCityIdResponseCopyWithImpl<$Res>;
  $Res call(
      {List<FilterCategory> filterCategories,
      List<LanguageCode> languageCodes});
}

/// @nodoc
class _$FilterTourCategoriesByCityIdResponseCopyWithImpl<$Res>
    implements $FilterTourCategoriesByCityIdResponseCopyWith<$Res> {
  _$FilterTourCategoriesByCityIdResponseCopyWithImpl(this._value, this._then);

  final FilterTourCategoriesByCityIdResponse _value;
  // ignore: unused_field
  final $Res Function(FilterTourCategoriesByCityIdResponse) _then;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? languageCodes = freezed,
  }) {
    return _then(_value.copyWith(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      languageCodes: languageCodes == freezed
          ? _value.languageCodes
          : languageCodes // ignore: cast_nullable_to_non_nullable
              as List<LanguageCode>,
    ));
  }
}

/// @nodoc
abstract class _$FilterTourCategoriesByCityIdResponseCopyWith<$Res>
    implements $FilterTourCategoriesByCityIdResponseCopyWith<$Res> {
  factory _$FilterTourCategoriesByCityIdResponseCopyWith(
          _FilterTourCategoriesByCityIdResponse value,
          $Res Function(_FilterTourCategoriesByCityIdResponse) then) =
      __$FilterTourCategoriesByCityIdResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FilterCategory> filterCategories,
      List<LanguageCode> languageCodes});
}

/// @nodoc
class __$FilterTourCategoriesByCityIdResponseCopyWithImpl<$Res>
    extends _$FilterTourCategoriesByCityIdResponseCopyWithImpl<$Res>
    implements _$FilterTourCategoriesByCityIdResponseCopyWith<$Res> {
  __$FilterTourCategoriesByCityIdResponseCopyWithImpl(
      _FilterTourCategoriesByCityIdResponse _value,
      $Res Function(_FilterTourCategoriesByCityIdResponse) _then)
      : super(_value, (v) => _then(v as _FilterTourCategoriesByCityIdResponse));

  @override
  _FilterTourCategoriesByCityIdResponse get _value =>
      super._value as _FilterTourCategoriesByCityIdResponse;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? languageCodes = freezed,
  }) {
    return _then(_FilterTourCategoriesByCityIdResponse(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      languageCodes: languageCodes == freezed
          ? _value.languageCodes
          : languageCodes // ignore: cast_nullable_to_non_nullable
              as List<LanguageCode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterTourCategoriesByCityIdResponse
    implements _FilterTourCategoriesByCityIdResponse {
  _$_FilterTourCategoriesByCityIdResponse(
      {this.filterCategories = const [], this.languageCodes = const []});

  factory _$_FilterTourCategoriesByCityIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_FilterTourCategoriesByCityIdResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<FilterCategory> filterCategories;
  @JsonKey(defaultValue: const [])
  @override
  final List<LanguageCode> languageCodes;

  @override
  String toString() {
    return 'FilterTourCategoriesByCityIdResponse(filterCategories: $filterCategories, languageCodes: $languageCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterTourCategoriesByCityIdResponse &&
            (identical(other.filterCategories, filterCategories) ||
                const DeepCollectionEquality()
                    .equals(other.filterCategories, filterCategories)) &&
            (identical(other.languageCodes, languageCodes) ||
                const DeepCollectionEquality()
                    .equals(other.languageCodes, languageCodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filterCategories) ^
      const DeepCollectionEquality().hash(languageCodes);

  @JsonKey(ignore: true)
  @override
  _$FilterTourCategoriesByCityIdResponseCopyWith<
          _FilterTourCategoriesByCityIdResponse>
      get copyWith => __$FilterTourCategoriesByCityIdResponseCopyWithImpl<
          _FilterTourCategoriesByCityIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterTourCategoriesByCityIdResponseToJson(this);
  }
}

abstract class _FilterTourCategoriesByCityIdResponse
    implements FilterTourCategoriesByCityIdResponse {
  factory _FilterTourCategoriesByCityIdResponse(
          {List<FilterCategory> filterCategories,
          List<LanguageCode> languageCodes}) =
      _$_FilterTourCategoriesByCityIdResponse;

  factory _FilterTourCategoriesByCityIdResponse.fromJson(
          Map<String, dynamic> json) =
      _$_FilterTourCategoriesByCityIdResponse.fromJson;

  @override
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  @override
  List<LanguageCode> get languageCodes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterTourCategoriesByCityIdResponseCopyWith<
          _FilterTourCategoriesByCityIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

LanguageCode _$LanguageCodeFromJson(Map<String, dynamic> json) {
  return _LanguageCode.fromJson(json);
}

/// @nodoc
class _$LanguageCodeTearOff {
  const _$LanguageCodeTearOff();

  _LanguageCode call({String languageCode = '', String flag = ''}) {
    return _LanguageCode(
      languageCode: languageCode,
      flag: flag,
    );
  }

  LanguageCode fromJson(Map<String, Object> json) {
    return LanguageCode.fromJson(json);
  }
}

/// @nodoc
const $LanguageCode = _$LanguageCodeTearOff();

/// @nodoc
mixin _$LanguageCode {
  String get languageCode => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCodeCopyWith<LanguageCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCodeCopyWith<$Res> {
  factory $LanguageCodeCopyWith(
          LanguageCode value, $Res Function(LanguageCode) then) =
      _$LanguageCodeCopyWithImpl<$Res>;
  $Res call({String languageCode, String flag});
}

/// @nodoc
class _$LanguageCodeCopyWithImpl<$Res> implements $LanguageCodeCopyWith<$Res> {
  _$LanguageCodeCopyWithImpl(this._value, this._then);

  final LanguageCode _value;
  // ignore: unused_field
  final $Res Function(LanguageCode) _then;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCodeCopyWith<$Res>
    implements $LanguageCodeCopyWith<$Res> {
  factory _$LanguageCodeCopyWith(
          _LanguageCode value, $Res Function(_LanguageCode) then) =
      __$LanguageCodeCopyWithImpl<$Res>;
  @override
  $Res call({String languageCode, String flag});
}

/// @nodoc
class __$LanguageCodeCopyWithImpl<$Res> extends _$LanguageCodeCopyWithImpl<$Res>
    implements _$LanguageCodeCopyWith<$Res> {
  __$LanguageCodeCopyWithImpl(
      _LanguageCode _value, $Res Function(_LanguageCode) _then)
      : super(_value, (v) => _then(v as _LanguageCode));

  @override
  _LanguageCode get _value => super._value as _LanguageCode;

  @override
  $Res call({
    Object? languageCode = freezed,
    Object? flag = freezed,
  }) {
    return _then(_LanguageCode(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageCode implements _LanguageCode {
  _$_LanguageCode({this.languageCode = '', this.flag = ''});

  factory _$_LanguageCode.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageCodeFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String languageCode;
  @JsonKey(defaultValue: '')
  @override
  final String flag;

  @override
  String toString() {
    return 'LanguageCode(languageCode: $languageCode, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageCode &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(flag);

  @JsonKey(ignore: true)
  @override
  _$LanguageCodeCopyWith<_LanguageCode> get copyWith =>
      __$LanguageCodeCopyWithImpl<_LanguageCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageCodeToJson(this);
  }
}

abstract class _LanguageCode implements LanguageCode {
  factory _LanguageCode({String languageCode, String flag}) = _$_LanguageCode;

  factory _LanguageCode.fromJson(Map<String, dynamic> json) =
      _$_LanguageCode.fromJson;

  @override
  String get languageCode => throw _privateConstructorUsedError;
  @override
  String get flag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCodeCopyWith<_LanguageCode> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterTourCategoriesByGuideIdResponse
    _$FilterTourCategoriesByGuideIdResponseFromJson(Map<String, dynamic> json) {
  return _FilterTourCategoriesByGuideIdResponse.fromJson(json);
}

/// @nodoc
class _$FilterTourCategoriesByGuideIdResponseTearOff {
  const _$FilterTourCategoriesByGuideIdResponseTearOff();

  _FilterTourCategoriesByGuideIdResponse call(
      {List<FilterCategory> filterCategories = const [],
      List<String> codes = const []}) {
    return _FilterTourCategoriesByGuideIdResponse(
      filterCategories: filterCategories,
      codes: codes,
    );
  }

  FilterTourCategoriesByGuideIdResponse fromJson(Map<String, Object> json) {
    return FilterTourCategoriesByGuideIdResponse.fromJson(json);
  }
}

/// @nodoc
const $FilterTourCategoriesByGuideIdResponse =
    _$FilterTourCategoriesByGuideIdResponseTearOff();

/// @nodoc
mixin _$FilterTourCategoriesByGuideIdResponse {
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  List<String> get codes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterTourCategoriesByGuideIdResponseCopyWith<
          FilterTourCategoriesByGuideIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterTourCategoriesByGuideIdResponseCopyWith<$Res> {
  factory $FilterTourCategoriesByGuideIdResponseCopyWith(
          FilterTourCategoriesByGuideIdResponse value,
          $Res Function(FilterTourCategoriesByGuideIdResponse) then) =
      _$FilterTourCategoriesByGuideIdResponseCopyWithImpl<$Res>;
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class _$FilterTourCategoriesByGuideIdResponseCopyWithImpl<$Res>
    implements $FilterTourCategoriesByGuideIdResponseCopyWith<$Res> {
  _$FilterTourCategoriesByGuideIdResponseCopyWithImpl(this._value, this._then);

  final FilterTourCategoriesByGuideIdResponse _value;
  // ignore: unused_field
  final $Res Function(FilterTourCategoriesByGuideIdResponse) _then;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_value.copyWith(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterTourCategoriesByGuideIdResponseCopyWith<$Res>
    implements $FilterTourCategoriesByGuideIdResponseCopyWith<$Res> {
  factory _$FilterTourCategoriesByGuideIdResponseCopyWith(
          _FilterTourCategoriesByGuideIdResponse value,
          $Res Function(_FilterTourCategoriesByGuideIdResponse) then) =
      __$FilterTourCategoriesByGuideIdResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class __$FilterTourCategoriesByGuideIdResponseCopyWithImpl<$Res>
    extends _$FilterTourCategoriesByGuideIdResponseCopyWithImpl<$Res>
    implements _$FilterTourCategoriesByGuideIdResponseCopyWith<$Res> {
  __$FilterTourCategoriesByGuideIdResponseCopyWithImpl(
      _FilterTourCategoriesByGuideIdResponse _value,
      $Res Function(_FilterTourCategoriesByGuideIdResponse) _then)
      : super(
            _value, (v) => _then(v as _FilterTourCategoriesByGuideIdResponse));

  @override
  _FilterTourCategoriesByGuideIdResponse get _value =>
      super._value as _FilterTourCategoriesByGuideIdResponse;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_FilterTourCategoriesByGuideIdResponse(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterTourCategoriesByGuideIdResponse
    implements _FilterTourCategoriesByGuideIdResponse {
  _$_FilterTourCategoriesByGuideIdResponse(
      {this.filterCategories = const [], this.codes = const []});

  factory _$_FilterTourCategoriesByGuideIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_FilterTourCategoriesByGuideIdResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<FilterCategory> filterCategories;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> codes;

  @override
  String toString() {
    return 'FilterTourCategoriesByGuideIdResponse(filterCategories: $filterCategories, codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterTourCategoriesByGuideIdResponse &&
            (identical(other.filterCategories, filterCategories) ||
                const DeepCollectionEquality()
                    .equals(other.filterCategories, filterCategories)) &&
            (identical(other.codes, codes) ||
                const DeepCollectionEquality().equals(other.codes, codes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filterCategories) ^
      const DeepCollectionEquality().hash(codes);

  @JsonKey(ignore: true)
  @override
  _$FilterTourCategoriesByGuideIdResponseCopyWith<
          _FilterTourCategoriesByGuideIdResponse>
      get copyWith => __$FilterTourCategoriesByGuideIdResponseCopyWithImpl<
          _FilterTourCategoriesByGuideIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterTourCategoriesByGuideIdResponseToJson(this);
  }
}

abstract class _FilterTourCategoriesByGuideIdResponse
    implements FilterTourCategoriesByGuideIdResponse {
  factory _FilterTourCategoriesByGuideIdResponse(
      {List<FilterCategory> filterCategories,
      List<String> codes}) = _$_FilterTourCategoriesByGuideIdResponse;

  factory _FilterTourCategoriesByGuideIdResponse.fromJson(
          Map<String, dynamic> json) =
      _$_FilterTourCategoriesByGuideIdResponse.fromJson;

  @override
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  @override
  List<String> get codes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterTourCategoriesByGuideIdResponseCopyWith<
          _FilterTourCategoriesByGuideIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

FilterTourCategoriesBySightIdResponse
    _$FilterTourCategoriesBySightIdResponseFromJson(Map<String, dynamic> json) {
  return _FilterTourCategoriesBySightIdResponse.fromJson(json);
}

/// @nodoc
class _$FilterTourCategoriesBySightIdResponseTearOff {
  const _$FilterTourCategoriesBySightIdResponseTearOff();

  _FilterTourCategoriesBySightIdResponse call(
      {List<FilterCategory> filterCategories = const [],
      List<String> codes = const []}) {
    return _FilterTourCategoriesBySightIdResponse(
      filterCategories: filterCategories,
      codes: codes,
    );
  }

  FilterTourCategoriesBySightIdResponse fromJson(Map<String, Object> json) {
    return FilterTourCategoriesBySightIdResponse.fromJson(json);
  }
}

/// @nodoc
const $FilterTourCategoriesBySightIdResponse =
    _$FilterTourCategoriesBySightIdResponseTearOff();

/// @nodoc
mixin _$FilterTourCategoriesBySightIdResponse {
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  List<String> get codes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterTourCategoriesBySightIdResponseCopyWith<
          FilterTourCategoriesBySightIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterTourCategoriesBySightIdResponseCopyWith<$Res> {
  factory $FilterTourCategoriesBySightIdResponseCopyWith(
          FilterTourCategoriesBySightIdResponse value,
          $Res Function(FilterTourCategoriesBySightIdResponse) then) =
      _$FilterTourCategoriesBySightIdResponseCopyWithImpl<$Res>;
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class _$FilterTourCategoriesBySightIdResponseCopyWithImpl<$Res>
    implements $FilterTourCategoriesBySightIdResponseCopyWith<$Res> {
  _$FilterTourCategoriesBySightIdResponseCopyWithImpl(this._value, this._then);

  final FilterTourCategoriesBySightIdResponse _value;
  // ignore: unused_field
  final $Res Function(FilterTourCategoriesBySightIdResponse) _then;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_value.copyWith(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterTourCategoriesBySightIdResponseCopyWith<$Res>
    implements $FilterTourCategoriesBySightIdResponseCopyWith<$Res> {
  factory _$FilterTourCategoriesBySightIdResponseCopyWith(
          _FilterTourCategoriesBySightIdResponse value,
          $Res Function(_FilterTourCategoriesBySightIdResponse) then) =
      __$FilterTourCategoriesBySightIdResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class __$FilterTourCategoriesBySightIdResponseCopyWithImpl<$Res>
    extends _$FilterTourCategoriesBySightIdResponseCopyWithImpl<$Res>
    implements _$FilterTourCategoriesBySightIdResponseCopyWith<$Res> {
  __$FilterTourCategoriesBySightIdResponseCopyWithImpl(
      _FilterTourCategoriesBySightIdResponse _value,
      $Res Function(_FilterTourCategoriesBySightIdResponse) _then)
      : super(
            _value, (v) => _then(v as _FilterTourCategoriesBySightIdResponse));

  @override
  _FilterTourCategoriesBySightIdResponse get _value =>
      super._value as _FilterTourCategoriesBySightIdResponse;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_FilterTourCategoriesBySightIdResponse(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterTourCategoriesBySightIdResponse
    implements _FilterTourCategoriesBySightIdResponse {
  _$_FilterTourCategoriesBySightIdResponse(
      {this.filterCategories = const [], this.codes = const []});

  factory _$_FilterTourCategoriesBySightIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_FilterTourCategoriesBySightIdResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<FilterCategory> filterCategories;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> codes;

  @override
  String toString() {
    return 'FilterTourCategoriesBySightIdResponse(filterCategories: $filterCategories, codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterTourCategoriesBySightIdResponse &&
            (identical(other.filterCategories, filterCategories) ||
                const DeepCollectionEquality()
                    .equals(other.filterCategories, filterCategories)) &&
            (identical(other.codes, codes) ||
                const DeepCollectionEquality().equals(other.codes, codes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filterCategories) ^
      const DeepCollectionEquality().hash(codes);

  @JsonKey(ignore: true)
  @override
  _$FilterTourCategoriesBySightIdResponseCopyWith<
          _FilterTourCategoriesBySightIdResponse>
      get copyWith => __$FilterTourCategoriesBySightIdResponseCopyWithImpl<
          _FilterTourCategoriesBySightIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterTourCategoriesBySightIdResponseToJson(this);
  }
}

abstract class _FilterTourCategoriesBySightIdResponse
    implements FilterTourCategoriesBySightIdResponse {
  factory _FilterTourCategoriesBySightIdResponse(
      {List<FilterCategory> filterCategories,
      List<String> codes}) = _$_FilterTourCategoriesBySightIdResponse;

  factory _FilterTourCategoriesBySightIdResponse.fromJson(
          Map<String, dynamic> json) =
      _$_FilterTourCategoriesBySightIdResponse.fromJson;

  @override
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  @override
  List<String> get codes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterTourCategoriesBySightIdResponseCopyWith<
          _FilterTourCategoriesBySightIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

FilterSightCategoriesBySightIdResponse
    _$FilterSightCategoriesBySightIdResponseFromJson(
        Map<String, dynamic> json) {
  return _FilterSightCategoriesBySightIdResponse.fromJson(json);
}

/// @nodoc
class _$FilterSightCategoriesBySightIdResponseTearOff {
  const _$FilterSightCategoriesBySightIdResponseTearOff();

  _FilterSightCategoriesBySightIdResponse call(
      {List<FilterCategory> filterCategories = const [],
      List<String> codes = const []}) {
    return _FilterSightCategoriesBySightIdResponse(
      filterCategories: filterCategories,
      codes: codes,
    );
  }

  FilterSightCategoriesBySightIdResponse fromJson(Map<String, Object> json) {
    return FilterSightCategoriesBySightIdResponse.fromJson(json);
  }
}

/// @nodoc
const $FilterSightCategoriesBySightIdResponse =
    _$FilterSightCategoriesBySightIdResponseTearOff();

/// @nodoc
mixin _$FilterSightCategoriesBySightIdResponse {
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  List<String> get codes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterSightCategoriesBySightIdResponseCopyWith<
          FilterSightCategoriesBySightIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSightCategoriesBySightIdResponseCopyWith<$Res> {
  factory $FilterSightCategoriesBySightIdResponseCopyWith(
          FilterSightCategoriesBySightIdResponse value,
          $Res Function(FilterSightCategoriesBySightIdResponse) then) =
      _$FilterSightCategoriesBySightIdResponseCopyWithImpl<$Res>;
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class _$FilterSightCategoriesBySightIdResponseCopyWithImpl<$Res>
    implements $FilterSightCategoriesBySightIdResponseCopyWith<$Res> {
  _$FilterSightCategoriesBySightIdResponseCopyWithImpl(this._value, this._then);

  final FilterSightCategoriesBySightIdResponse _value;
  // ignore: unused_field
  final $Res Function(FilterSightCategoriesBySightIdResponse) _then;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_value.copyWith(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterSightCategoriesBySightIdResponseCopyWith<$Res>
    implements $FilterSightCategoriesBySightIdResponseCopyWith<$Res> {
  factory _$FilterSightCategoriesBySightIdResponseCopyWith(
          _FilterSightCategoriesBySightIdResponse value,
          $Res Function(_FilterSightCategoriesBySightIdResponse) then) =
      __$FilterSightCategoriesBySightIdResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<FilterCategory> filterCategories, List<String> codes});
}

/// @nodoc
class __$FilterSightCategoriesBySightIdResponseCopyWithImpl<$Res>
    extends _$FilterSightCategoriesBySightIdResponseCopyWithImpl<$Res>
    implements _$FilterSightCategoriesBySightIdResponseCopyWith<$Res> {
  __$FilterSightCategoriesBySightIdResponseCopyWithImpl(
      _FilterSightCategoriesBySightIdResponse _value,
      $Res Function(_FilterSightCategoriesBySightIdResponse) _then)
      : super(
            _value, (v) => _then(v as _FilterSightCategoriesBySightIdResponse));

  @override
  _FilterSightCategoriesBySightIdResponse get _value =>
      super._value as _FilterSightCategoriesBySightIdResponse;

  @override
  $Res call({
    Object? filterCategories = freezed,
    Object? codes = freezed,
  }) {
    return _then(_FilterSightCategoriesBySightIdResponse(
      filterCategories: filterCategories == freezed
          ? _value.filterCategories
          : filterCategories // ignore: cast_nullable_to_non_nullable
              as List<FilterCategory>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterSightCategoriesBySightIdResponse
    implements _FilterSightCategoriesBySightIdResponse {
  _$_FilterSightCategoriesBySightIdResponse(
      {this.filterCategories = const [], this.codes = const []});

  factory _$_FilterSightCategoriesBySightIdResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_FilterSightCategoriesBySightIdResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<FilterCategory> filterCategories;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> codes;

  @override
  String toString() {
    return 'FilterSightCategoriesBySightIdResponse(filterCategories: $filterCategories, codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterSightCategoriesBySightIdResponse &&
            (identical(other.filterCategories, filterCategories) ||
                const DeepCollectionEquality()
                    .equals(other.filterCategories, filterCategories)) &&
            (identical(other.codes, codes) ||
                const DeepCollectionEquality().equals(other.codes, codes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filterCategories) ^
      const DeepCollectionEquality().hash(codes);

  @JsonKey(ignore: true)
  @override
  _$FilterSightCategoriesBySightIdResponseCopyWith<
          _FilterSightCategoriesBySightIdResponse>
      get copyWith => __$FilterSightCategoriesBySightIdResponseCopyWithImpl<
          _FilterSightCategoriesBySightIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterSightCategoriesBySightIdResponseToJson(this);
  }
}

abstract class _FilterSightCategoriesBySightIdResponse
    implements FilterSightCategoriesBySightIdResponse {
  factory _FilterSightCategoriesBySightIdResponse(
      {List<FilterCategory> filterCategories,
      List<String> codes}) = _$_FilterSightCategoriesBySightIdResponse;

  factory _FilterSightCategoriesBySightIdResponse.fromJson(
          Map<String, dynamic> json) =
      _$_FilterSightCategoriesBySightIdResponse.fromJson;

  @override
  List<FilterCategory> get filterCategories =>
      throw _privateConstructorUsedError;
  @override
  List<String> get codes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterSightCategoriesBySightIdResponseCopyWith<
          _FilterSightCategoriesBySightIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

FilterSightBody _$FilterSightBodyFromJson(Map<String, dynamic> json) {
  return _FilterSightBody.fromJson(json);
}

/// @nodoc
class _$FilterSightBodyTearOff {
  const _$FilterSightBodyTearOff();

  _FilterSightBody call(String language, String sightId) {
    return _FilterSightBody(
      language,
      sightId,
    );
  }

  FilterSightBody fromJson(Map<String, Object> json) {
    return FilterSightBody.fromJson(json);
  }
}

/// @nodoc
const $FilterSightBody = _$FilterSightBodyTearOff();

/// @nodoc
mixin _$FilterSightBody {
  String get language => throw _privateConstructorUsedError;
  String get sightId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterSightBodyCopyWith<FilterSightBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterSightBodyCopyWith<$Res> {
  factory $FilterSightBodyCopyWith(
          FilterSightBody value, $Res Function(FilterSightBody) then) =
      _$FilterSightBodyCopyWithImpl<$Res>;
  $Res call({String language, String sightId});
}

/// @nodoc
class _$FilterSightBodyCopyWithImpl<$Res>
    implements $FilterSightBodyCopyWith<$Res> {
  _$FilterSightBodyCopyWithImpl(this._value, this._then);

  final FilterSightBody _value;
  // ignore: unused_field
  final $Res Function(FilterSightBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? sightId = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sightId: sightId == freezed
          ? _value.sightId
          : sightId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilterSightBodyCopyWith<$Res>
    implements $FilterSightBodyCopyWith<$Res> {
  factory _$FilterSightBodyCopyWith(
          _FilterSightBody value, $Res Function(_FilterSightBody) then) =
      __$FilterSightBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String sightId});
}

/// @nodoc
class __$FilterSightBodyCopyWithImpl<$Res>
    extends _$FilterSightBodyCopyWithImpl<$Res>
    implements _$FilterSightBodyCopyWith<$Res> {
  __$FilterSightBodyCopyWithImpl(
      _FilterSightBody _value, $Res Function(_FilterSightBody) _then)
      : super(_value, (v) => _then(v as _FilterSightBody));

  @override
  _FilterSightBody get _value => super._value as _FilterSightBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? sightId = freezed,
  }) {
    return _then(_FilterSightBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      sightId == freezed
          ? _value.sightId
          : sightId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterSightBody implements _FilterSightBody {
  _$_FilterSightBody(this.language, this.sightId);

  factory _$_FilterSightBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterSightBodyFromJson(json);

  @override
  final String language;
  @override
  final String sightId;

  @override
  String toString() {
    return 'FilterSightBody(language: $language, sightId: $sightId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterSightBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.sightId, sightId) ||
                const DeepCollectionEquality().equals(other.sightId, sightId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(sightId);

  @JsonKey(ignore: true)
  @override
  _$FilterSightBodyCopyWith<_FilterSightBody> get copyWith =>
      __$FilterSightBodyCopyWithImpl<_FilterSightBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterSightBodyToJson(this);
  }
}

abstract class _FilterSightBody implements FilterSightBody {
  factory _FilterSightBody(String language, String sightId) =
      _$_FilterSightBody;

  factory _FilterSightBody.fromJson(Map<String, dynamic> json) =
      _$_FilterSightBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get sightId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterSightBodyCopyWith<_FilterSightBody> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterCityBody _$FilterCityBodyFromJson(Map<String, dynamic> json) {
  return _FilterCityBody.fromJson(json);
}

/// @nodoc
class _$FilterCityBodyTearOff {
  const _$FilterCityBodyTearOff();

  _FilterCityBody call(String language, String cityId) {
    return _FilterCityBody(
      language,
      cityId,
    );
  }

  FilterCityBody fromJson(Map<String, Object> json) {
    return FilterCityBody.fromJson(json);
  }
}

/// @nodoc
const $FilterCityBody = _$FilterCityBodyTearOff();

/// @nodoc
mixin _$FilterCityBody {
  String get language => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCityBodyCopyWith<FilterCityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCityBodyCopyWith<$Res> {
  factory $FilterCityBodyCopyWith(
          FilterCityBody value, $Res Function(FilterCityBody) then) =
      _$FilterCityBodyCopyWithImpl<$Res>;
  $Res call({String language, String cityId});
}

/// @nodoc
class _$FilterCityBodyCopyWithImpl<$Res>
    implements $FilterCityBodyCopyWith<$Res> {
  _$FilterCityBodyCopyWithImpl(this._value, this._then);

  final FilterCityBody _value;
  // ignore: unused_field
  final $Res Function(FilterCityBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilterCityBodyCopyWith<$Res>
    implements $FilterCityBodyCopyWith<$Res> {
  factory _$FilterCityBodyCopyWith(
          _FilterCityBody value, $Res Function(_FilterCityBody) then) =
      __$FilterCityBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String cityId});
}

/// @nodoc
class __$FilterCityBodyCopyWithImpl<$Res>
    extends _$FilterCityBodyCopyWithImpl<$Res>
    implements _$FilterCityBodyCopyWith<$Res> {
  __$FilterCityBodyCopyWithImpl(
      _FilterCityBody _value, $Res Function(_FilterCityBody) _then)
      : super(_value, (v) => _then(v as _FilterCityBody));

  @override
  _FilterCityBody get _value => super._value as _FilterCityBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_FilterCityBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterCityBody implements _FilterCityBody {
  _$_FilterCityBody(this.language, this.cityId);

  factory _$_FilterCityBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterCityBodyFromJson(json);

  @override
  final String language;
  @override
  final String cityId;

  @override
  String toString() {
    return 'FilterCityBody(language: $language, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterCityBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$FilterCityBodyCopyWith<_FilterCityBody> get copyWith =>
      __$FilterCityBodyCopyWithImpl<_FilterCityBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterCityBodyToJson(this);
  }
}

abstract class _FilterCityBody implements FilterCityBody {
  factory _FilterCityBody(String language, String cityId) = _$_FilterCityBody;

  factory _FilterCityBody.fromJson(Map<String, dynamic> json) =
      _$_FilterCityBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterCityBodyCopyWith<_FilterCityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterGuideBody _$FilterGuideBodyFromJson(Map<String, dynamic> json) {
  return _FilterGuideBody.fromJson(json);
}

/// @nodoc
class _$FilterGuideBodyTearOff {
  const _$FilterGuideBodyTearOff();

  _FilterGuideBody call(String language, String guideId) {
    return _FilterGuideBody(
      language,
      guideId,
    );
  }

  FilterGuideBody fromJson(Map<String, Object> json) {
    return FilterGuideBody.fromJson(json);
  }
}

/// @nodoc
const $FilterGuideBody = _$FilterGuideBodyTearOff();

/// @nodoc
mixin _$FilterGuideBody {
  String get language => throw _privateConstructorUsedError;
  String get guideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterGuideBodyCopyWith<FilterGuideBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterGuideBodyCopyWith<$Res> {
  factory $FilterGuideBodyCopyWith(
          FilterGuideBody value, $Res Function(FilterGuideBody) then) =
      _$FilterGuideBodyCopyWithImpl<$Res>;
  $Res call({String language, String guideId});
}

/// @nodoc
class _$FilterGuideBodyCopyWithImpl<$Res>
    implements $FilterGuideBodyCopyWith<$Res> {
  _$FilterGuideBodyCopyWithImpl(this._value, this._then);

  final FilterGuideBody _value;
  // ignore: unused_field
  final $Res Function(FilterGuideBody) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? guideId = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      guideId: guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilterGuideBodyCopyWith<$Res>
    implements $FilterGuideBodyCopyWith<$Res> {
  factory _$FilterGuideBodyCopyWith(
          _FilterGuideBody value, $Res Function(_FilterGuideBody) then) =
      __$FilterGuideBodyCopyWithImpl<$Res>;
  @override
  $Res call({String language, String guideId});
}

/// @nodoc
class __$FilterGuideBodyCopyWithImpl<$Res>
    extends _$FilterGuideBodyCopyWithImpl<$Res>
    implements _$FilterGuideBodyCopyWith<$Res> {
  __$FilterGuideBodyCopyWithImpl(
      _FilterGuideBody _value, $Res Function(_FilterGuideBody) _then)
      : super(_value, (v) => _then(v as _FilterGuideBody));

  @override
  _FilterGuideBody get _value => super._value as _FilterGuideBody;

  @override
  $Res call({
    Object? language = freezed,
    Object? guideId = freezed,
  }) {
    return _then(_FilterGuideBody(
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterGuideBody implements _FilterGuideBody {
  _$_FilterGuideBody(this.language, this.guideId);

  factory _$_FilterGuideBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterGuideBodyFromJson(json);

  @override
  final String language;
  @override
  final String guideId;

  @override
  String toString() {
    return 'FilterGuideBody(language: $language, guideId: $guideId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterGuideBody &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.guideId, guideId) ||
                const DeepCollectionEquality().equals(other.guideId, guideId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(guideId);

  @JsonKey(ignore: true)
  @override
  _$FilterGuideBodyCopyWith<_FilterGuideBody> get copyWith =>
      __$FilterGuideBodyCopyWithImpl<_FilterGuideBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterGuideBodyToJson(this);
  }
}

abstract class _FilterGuideBody implements FilterGuideBody {
  factory _FilterGuideBody(String language, String guideId) =
      _$_FilterGuideBody;

  factory _FilterGuideBody.fromJson(Map<String, dynamic> json) =
      _$_FilterGuideBody.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get guideId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterGuideBodyCopyWith<_FilterGuideBody> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterApplySightBody _$FilterApplySightBodyFromJson(Map<String, dynamic> json) {
  return _FilterApplySightBody.fromJson(json);
}

/// @nodoc
class _$FilterApplySightBodyTearOff {
  const _$FilterApplySightBodyTearOff();

  _FilterApplySightBody call(String sightId, String sortBy, String language,
      List<String> categoriesSelected, List<String> languagesSelected) {
    return _FilterApplySightBody(
      sightId,
      sortBy,
      language,
      categoriesSelected,
      languagesSelected,
    );
  }

  FilterApplySightBody fromJson(Map<String, Object> json) {
    return FilterApplySightBody.fromJson(json);
  }
}

/// @nodoc
const $FilterApplySightBody = _$FilterApplySightBodyTearOff();

/// @nodoc
mixin _$FilterApplySightBody {
  String get sightId => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  List<String> get languagesSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterApplySightBodyCopyWith<FilterApplySightBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterApplySightBodyCopyWith<$Res> {
  factory $FilterApplySightBodyCopyWith(FilterApplySightBody value,
          $Res Function(FilterApplySightBody) then) =
      _$FilterApplySightBodyCopyWithImpl<$Res>;
  $Res call(
      {String sightId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class _$FilterApplySightBodyCopyWithImpl<$Res>
    implements $FilterApplySightBodyCopyWith<$Res> {
  _$FilterApplySightBodyCopyWithImpl(this._value, this._then);

  final FilterApplySightBody _value;
  // ignore: unused_field
  final $Res Function(FilterApplySightBody) _then;

  @override
  $Res call({
    Object? sightId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_value.copyWith(
      sightId: sightId == freezed
          ? _value.sightId
          : sightId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected: categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected: languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterApplySightBodyCopyWith<$Res>
    implements $FilterApplySightBodyCopyWith<$Res> {
  factory _$FilterApplySightBodyCopyWith(_FilterApplySightBody value,
          $Res Function(_FilterApplySightBody) then) =
      __$FilterApplySightBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sightId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class __$FilterApplySightBodyCopyWithImpl<$Res>
    extends _$FilterApplySightBodyCopyWithImpl<$Res>
    implements _$FilterApplySightBodyCopyWith<$Res> {
  __$FilterApplySightBodyCopyWithImpl(
      _FilterApplySightBody _value, $Res Function(_FilterApplySightBody) _then)
      : super(_value, (v) => _then(v as _FilterApplySightBody));

  @override
  _FilterApplySightBody get _value => super._value as _FilterApplySightBody;

  @override
  $Res call({
    Object? sightId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_FilterApplySightBody(
      sightId == freezed
          ? _value.sightId
          : sightId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterApplySightBody implements _FilterApplySightBody {
  _$_FilterApplySightBody(this.sightId, this.sortBy, this.language,
      this.categoriesSelected, this.languagesSelected);

  factory _$_FilterApplySightBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterApplySightBodyFromJson(json);

  @override
  final String sightId;
  @override
  final String sortBy;
  @override
  final String language;
  @override
  final List<String> categoriesSelected;
  @override
  final List<String> languagesSelected;

  @override
  String toString() {
    return 'FilterApplySightBody(sightId: $sightId, sortBy: $sortBy, language: $language, categoriesSelected: $categoriesSelected, languagesSelected: $languagesSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterApplySightBody &&
            (identical(other.sightId, sightId) ||
                const DeepCollectionEquality()
                    .equals(other.sightId, sightId)) &&
            (identical(other.sortBy, sortBy) ||
                const DeepCollectionEquality().equals(other.sortBy, sortBy)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.categoriesSelected, categoriesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.categoriesSelected, categoriesSelected)) &&
            (identical(other.languagesSelected, languagesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.languagesSelected, languagesSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sightId) ^
      const DeepCollectionEquality().hash(sortBy) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(categoriesSelected) ^
      const DeepCollectionEquality().hash(languagesSelected);

  @JsonKey(ignore: true)
  @override
  _$FilterApplySightBodyCopyWith<_FilterApplySightBody> get copyWith =>
      __$FilterApplySightBodyCopyWithImpl<_FilterApplySightBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterApplySightBodyToJson(this);
  }
}

abstract class _FilterApplySightBody implements FilterApplySightBody {
  factory _FilterApplySightBody(
      String sightId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected) = _$_FilterApplySightBody;

  factory _FilterApplySightBody.fromJson(Map<String, dynamic> json) =
      _$_FilterApplySightBody.fromJson;

  @override
  String get sightId => throw _privateConstructorUsedError;
  @override
  String get sortBy => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  @override
  List<String> get languagesSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterApplySightBodyCopyWith<_FilterApplySightBody> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterApplyCityBody _$FilterApplyCityBodyFromJson(Map<String, dynamic> json) {
  return _FilterApplyCityBody.fromJson(json);
}

/// @nodoc
class _$FilterApplyCityBodyTearOff {
  const _$FilterApplyCityBodyTearOff();

  _FilterApplyCityBody call(String cityId, String sortBy, String language,
      List<String> categoriesSelected, List<String> languagesSelected) {
    return _FilterApplyCityBody(
      cityId,
      sortBy,
      language,
      categoriesSelected,
      languagesSelected,
    );
  }

  FilterApplyCityBody fromJson(Map<String, Object> json) {
    return FilterApplyCityBody.fromJson(json);
  }
}

/// @nodoc
const $FilterApplyCityBody = _$FilterApplyCityBodyTearOff();

/// @nodoc
mixin _$FilterApplyCityBody {
  String get cityId => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  List<String> get languagesSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterApplyCityBodyCopyWith<FilterApplyCityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterApplyCityBodyCopyWith<$Res> {
  factory $FilterApplyCityBodyCopyWith(
          FilterApplyCityBody value, $Res Function(FilterApplyCityBody) then) =
      _$FilterApplyCityBodyCopyWithImpl<$Res>;
  $Res call(
      {String cityId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class _$FilterApplyCityBodyCopyWithImpl<$Res>
    implements $FilterApplyCityBodyCopyWith<$Res> {
  _$FilterApplyCityBodyCopyWithImpl(this._value, this._then);

  final FilterApplyCityBody _value;
  // ignore: unused_field
  final $Res Function(FilterApplyCityBody) _then;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected: categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected: languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterApplyCityBodyCopyWith<$Res>
    implements $FilterApplyCityBodyCopyWith<$Res> {
  factory _$FilterApplyCityBodyCopyWith(_FilterApplyCityBody value,
          $Res Function(_FilterApplyCityBody) then) =
      __$FilterApplyCityBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class __$FilterApplyCityBodyCopyWithImpl<$Res>
    extends _$FilterApplyCityBodyCopyWithImpl<$Res>
    implements _$FilterApplyCityBodyCopyWith<$Res> {
  __$FilterApplyCityBodyCopyWithImpl(
      _FilterApplyCityBody _value, $Res Function(_FilterApplyCityBody) _then)
      : super(_value, (v) => _then(v as _FilterApplyCityBody));

  @override
  _FilterApplyCityBody get _value => super._value as _FilterApplyCityBody;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_FilterApplyCityBody(
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterApplyCityBody implements _FilterApplyCityBody {
  _$_FilterApplyCityBody(this.cityId, this.sortBy, this.language,
      this.categoriesSelected, this.languagesSelected);

  factory _$_FilterApplyCityBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterApplyCityBodyFromJson(json);

  @override
  final String cityId;
  @override
  final String sortBy;
  @override
  final String language;
  @override
  final List<String> categoriesSelected;
  @override
  final List<String> languagesSelected;

  @override
  String toString() {
    return 'FilterApplyCityBody(cityId: $cityId, sortBy: $sortBy, language: $language, categoriesSelected: $categoriesSelected, languagesSelected: $languagesSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterApplyCityBody &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.sortBy, sortBy) ||
                const DeepCollectionEquality().equals(other.sortBy, sortBy)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.categoriesSelected, categoriesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.categoriesSelected, categoriesSelected)) &&
            (identical(other.languagesSelected, languagesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.languagesSelected, languagesSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(sortBy) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(categoriesSelected) ^
      const DeepCollectionEquality().hash(languagesSelected);

  @JsonKey(ignore: true)
  @override
  _$FilterApplyCityBodyCopyWith<_FilterApplyCityBody> get copyWith =>
      __$FilterApplyCityBodyCopyWithImpl<_FilterApplyCityBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterApplyCityBodyToJson(this);
  }
}

abstract class _FilterApplyCityBody implements FilterApplyCityBody {
  factory _FilterApplyCityBody(
      String cityId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected) = _$_FilterApplyCityBody;

  factory _FilterApplyCityBody.fromJson(Map<String, dynamic> json) =
      _$_FilterApplyCityBody.fromJson;

  @override
  String get cityId => throw _privateConstructorUsedError;
  @override
  String get sortBy => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  @override
  List<String> get languagesSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterApplyCityBodyCopyWith<_FilterApplyCityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterApplyGuideBody _$FilterApplyGuideBodyFromJson(Map<String, dynamic> json) {
  return _FilterApplyGuideBody.fromJson(json);
}

/// @nodoc
class _$FilterApplyGuideBodyTearOff {
  const _$FilterApplyGuideBodyTearOff();

  _FilterApplyGuideBody call(String guideId, String sortBy, String language,
      List<String> categoriesSelected, List<String> languagesSelected) {
    return _FilterApplyGuideBody(
      guideId,
      sortBy,
      language,
      categoriesSelected,
      languagesSelected,
    );
  }

  FilterApplyGuideBody fromJson(Map<String, Object> json) {
    return FilterApplyGuideBody.fromJson(json);
  }
}

/// @nodoc
const $FilterApplyGuideBody = _$FilterApplyGuideBodyTearOff();

/// @nodoc
mixin _$FilterApplyGuideBody {
  String get guideId => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  List<String> get languagesSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterApplyGuideBodyCopyWith<FilterApplyGuideBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterApplyGuideBodyCopyWith<$Res> {
  factory $FilterApplyGuideBodyCopyWith(FilterApplyGuideBody value,
          $Res Function(FilterApplyGuideBody) then) =
      _$FilterApplyGuideBodyCopyWithImpl<$Res>;
  $Res call(
      {String guideId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class _$FilterApplyGuideBodyCopyWithImpl<$Res>
    implements $FilterApplyGuideBodyCopyWith<$Res> {
  _$FilterApplyGuideBodyCopyWithImpl(this._value, this._then);

  final FilterApplyGuideBody _value;
  // ignore: unused_field
  final $Res Function(FilterApplyGuideBody) _then;

  @override
  $Res call({
    Object? guideId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_value.copyWith(
      guideId: guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected: categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected: languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FilterApplyGuideBodyCopyWith<$Res>
    implements $FilterApplyGuideBodyCopyWith<$Res> {
  factory _$FilterApplyGuideBodyCopyWith(_FilterApplyGuideBody value,
          $Res Function(_FilterApplyGuideBody) then) =
      __$FilterApplyGuideBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String guideId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected});
}

/// @nodoc
class __$FilterApplyGuideBodyCopyWithImpl<$Res>
    extends _$FilterApplyGuideBodyCopyWithImpl<$Res>
    implements _$FilterApplyGuideBodyCopyWith<$Res> {
  __$FilterApplyGuideBodyCopyWithImpl(
      _FilterApplyGuideBody _value, $Res Function(_FilterApplyGuideBody) _then)
      : super(_value, (v) => _then(v as _FilterApplyGuideBody));

  @override
  _FilterApplyGuideBody get _value => super._value as _FilterApplyGuideBody;

  @override
  $Res call({
    Object? guideId = freezed,
    Object? sortBy = freezed,
    Object? language = freezed,
    Object? categoriesSelected = freezed,
    Object? languagesSelected = freezed,
  }) {
    return _then(_FilterApplyGuideBody(
      guideId == freezed
          ? _value.guideId
          : guideId // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesSelected == freezed
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languagesSelected == freezed
          ? _value.languagesSelected
          : languagesSelected // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterApplyGuideBody implements _FilterApplyGuideBody {
  _$_FilterApplyGuideBody(this.guideId, this.sortBy, this.language,
      this.categoriesSelected, this.languagesSelected);

  factory _$_FilterApplyGuideBody.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterApplyGuideBodyFromJson(json);

  @override
  final String guideId;
  @override
  final String sortBy;
  @override
  final String language;
  @override
  final List<String> categoriesSelected;
  @override
  final List<String> languagesSelected;

  @override
  String toString() {
    return 'FilterApplyGuideBody(guideId: $guideId, sortBy: $sortBy, language: $language, categoriesSelected: $categoriesSelected, languagesSelected: $languagesSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterApplyGuideBody &&
            (identical(other.guideId, guideId) ||
                const DeepCollectionEquality()
                    .equals(other.guideId, guideId)) &&
            (identical(other.sortBy, sortBy) ||
                const DeepCollectionEquality().equals(other.sortBy, sortBy)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.categoriesSelected, categoriesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.categoriesSelected, categoriesSelected)) &&
            (identical(other.languagesSelected, languagesSelected) ||
                const DeepCollectionEquality()
                    .equals(other.languagesSelected, languagesSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guideId) ^
      const DeepCollectionEquality().hash(sortBy) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(categoriesSelected) ^
      const DeepCollectionEquality().hash(languagesSelected);

  @JsonKey(ignore: true)
  @override
  _$FilterApplyGuideBodyCopyWith<_FilterApplyGuideBody> get copyWith =>
      __$FilterApplyGuideBodyCopyWithImpl<_FilterApplyGuideBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterApplyGuideBodyToJson(this);
  }
}

abstract class _FilterApplyGuideBody implements FilterApplyGuideBody {
  factory _FilterApplyGuideBody(
      String guideId,
      String sortBy,
      String language,
      List<String> categoriesSelected,
      List<String> languagesSelected) = _$_FilterApplyGuideBody;

  factory _FilterApplyGuideBody.fromJson(Map<String, dynamic> json) =
      _$_FilterApplyGuideBody.fromJson;

  @override
  String get guideId => throw _privateConstructorUsedError;
  @override
  String get sortBy => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  List<String> get categoriesSelected => throw _privateConstructorUsedError;
  @override
  List<String> get languagesSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterApplyGuideBodyCopyWith<_FilterApplyGuideBody> get copyWith =>
      throw _privateConstructorUsedError;
}

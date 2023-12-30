// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_language_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TourLanguageInfo _$TourLanguageInfoFromJson(Map<String, dynamic> json) {
  return _TourLanguageInfo.fromJson(json);
}

/// @nodoc
class _$TourLanguageInfoTearOff {
  const _$TourLanguageInfoTearOff();

  _TourLanguageInfo call(
      {@HiveField(0) String language = '',
      @HiveField(1) List<String> url = const [],
      @HiveField(2) String size = ''}) {
    return _TourLanguageInfo(
      language: language,
      url: url,
      size: size,
    );
  }

  TourLanguageInfo fromJson(Map<String, Object> json) {
    return TourLanguageInfo.fromJson(json);
  }
}

/// @nodoc
const $TourLanguageInfo = _$TourLanguageInfoTearOff();

/// @nodoc
mixin _$TourLanguageInfo {
  @HiveField(0)
  String get language => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get url => throw _privateConstructorUsedError;
  @HiveField(2)
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourLanguageInfoCopyWith<TourLanguageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourLanguageInfoCopyWith<$Res> {
  factory $TourLanguageInfoCopyWith(
          TourLanguageInfo value, $Res Function(TourLanguageInfo) then) =
      _$TourLanguageInfoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String language,
      @HiveField(1) List<String> url,
      @HiveField(2) String size});
}

/// @nodoc
class _$TourLanguageInfoCopyWithImpl<$Res>
    implements $TourLanguageInfoCopyWith<$Res> {
  _$TourLanguageInfoCopyWithImpl(this._value, this._then);

  final TourLanguageInfo _value;
  // ignore: unused_field
  final $Res Function(TourLanguageInfo) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TourLanguageInfoCopyWith<$Res>
    implements $TourLanguageInfoCopyWith<$Res> {
  factory _$TourLanguageInfoCopyWith(
          _TourLanguageInfo value, $Res Function(_TourLanguageInfo) then) =
      __$TourLanguageInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String language,
      @HiveField(1) List<String> url,
      @HiveField(2) String size});
}

/// @nodoc
class __$TourLanguageInfoCopyWithImpl<$Res>
    extends _$TourLanguageInfoCopyWithImpl<$Res>
    implements _$TourLanguageInfoCopyWith<$Res> {
  __$TourLanguageInfoCopyWithImpl(
      _TourLanguageInfo _value, $Res Function(_TourLanguageInfo) _then)
      : super(_value, (v) => _then(v as _TourLanguageInfo));

  @override
  _TourLanguageInfo get _value => super._value as _TourLanguageInfo;

  @override
  $Res call({
    Object? language = freezed,
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_TourLanguageInfo(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.tourLanguageInfo)
class _$_TourLanguageInfo implements _TourLanguageInfo {
  _$_TourLanguageInfo(
      {@HiveField(0) this.language = '',
      @HiveField(1) this.url = const [],
      @HiveField(2) this.size = ''});

  factory _$_TourLanguageInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_TourLanguageInfoFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  @HiveField(0)
  final String language;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(1)
  final List<String> url;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String size;

  @override
  String toString() {
    return 'TourLanguageInfo(language: $language, url: $url, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TourLanguageInfo &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$TourLanguageInfoCopyWith<_TourLanguageInfo> get copyWith =>
      __$TourLanguageInfoCopyWithImpl<_TourLanguageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TourLanguageInfoToJson(this);
  }
}

abstract class _TourLanguageInfo implements TourLanguageInfo {
  factory _TourLanguageInfo(
      {@HiveField(0) String language,
      @HiveField(1) List<String> url,
      @HiveField(2) String size}) = _$_TourLanguageInfo;

  factory _TourLanguageInfo.fromJson(Map<String, dynamic> json) =
      _$_TourLanguageInfo.fromJson;

  @override
  @HiveField(0)
  String get language => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  List<String> get url => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourLanguageInfoCopyWith<_TourLanguageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

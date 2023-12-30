// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_tour_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadTourResponse _$DownloadTourResponseFromJson(Map<String, dynamic> json) {
  return _DownloadTourResponse.fromJson(json);
}

/// @nodoc
class _$DownloadTourResponseTearOff {
  const _$DownloadTourResponseTearOff();

  _DownloadTourResponse call(
      {@HiveField(0) List<TourLanguageInfo> tourLanguages = const []}) {
    return _DownloadTourResponse(
      tourLanguages: tourLanguages,
    );
  }

  DownloadTourResponse fromJson(Map<String, Object> json) {
    return DownloadTourResponse.fromJson(json);
  }
}

/// @nodoc
const $DownloadTourResponse = _$DownloadTourResponseTearOff();

/// @nodoc
mixin _$DownloadTourResponse {
  @HiveField(0)
  List<TourLanguageInfo> get tourLanguages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadTourResponseCopyWith<DownloadTourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTourResponseCopyWith<$Res> {
  factory $DownloadTourResponseCopyWith(DownloadTourResponse value,
          $Res Function(DownloadTourResponse) then) =
      _$DownloadTourResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<TourLanguageInfo> tourLanguages});
}

/// @nodoc
class _$DownloadTourResponseCopyWithImpl<$Res>
    implements $DownloadTourResponseCopyWith<$Res> {
  _$DownloadTourResponseCopyWithImpl(this._value, this._then);

  final DownloadTourResponse _value;
  // ignore: unused_field
  final $Res Function(DownloadTourResponse) _then;

  @override
  $Res call({
    Object? tourLanguages = freezed,
  }) {
    return _then(_value.copyWith(
      tourLanguages: tourLanguages == freezed
          ? _value.tourLanguages
          : tourLanguages // ignore: cast_nullable_to_non_nullable
              as List<TourLanguageInfo>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadTourResponseCopyWith<$Res>
    implements $DownloadTourResponseCopyWith<$Res> {
  factory _$DownloadTourResponseCopyWith(_DownloadTourResponse value,
          $Res Function(_DownloadTourResponse) then) =
      __$DownloadTourResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<TourLanguageInfo> tourLanguages});
}

/// @nodoc
class __$DownloadTourResponseCopyWithImpl<$Res>
    extends _$DownloadTourResponseCopyWithImpl<$Res>
    implements _$DownloadTourResponseCopyWith<$Res> {
  __$DownloadTourResponseCopyWithImpl(
      _DownloadTourResponse _value, $Res Function(_DownloadTourResponse) _then)
      : super(_value, (v) => _then(v as _DownloadTourResponse));

  @override
  _DownloadTourResponse get _value => super._value as _DownloadTourResponse;

  @override
  $Res call({
    Object? tourLanguages = freezed,
  }) {
    return _then(_DownloadTourResponse(
      tourLanguages: tourLanguages == freezed
          ? _value.tourLanguages
          : tourLanguages // ignore: cast_nullable_to_non_nullable
              as List<TourLanguageInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.downloadTourInfo)
class _$_DownloadTourResponse implements _DownloadTourResponse {
  _$_DownloadTourResponse({@HiveField(0) this.tourLanguages = const []});

  factory _$_DownloadTourResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DownloadTourResponseFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  @HiveField(0)
  final List<TourLanguageInfo> tourLanguages;

  @override
  String toString() {
    return 'DownloadTourResponse(tourLanguages: $tourLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadTourResponse &&
            (identical(other.tourLanguages, tourLanguages) ||
                const DeepCollectionEquality()
                    .equals(other.tourLanguages, tourLanguages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tourLanguages);

  @JsonKey(ignore: true)
  @override
  _$DownloadTourResponseCopyWith<_DownloadTourResponse> get copyWith =>
      __$DownloadTourResponseCopyWithImpl<_DownloadTourResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DownloadTourResponseToJson(this);
  }
}

abstract class _DownloadTourResponse implements DownloadTourResponse {
  factory _DownloadTourResponse(
          {@HiveField(0) List<TourLanguageInfo> tourLanguages}) =
      _$_DownloadTourResponse;

  factory _DownloadTourResponse.fromJson(Map<String, dynamic> json) =
      _$_DownloadTourResponse.fromJson;

  @override
  @HiveField(0)
  List<TourLanguageInfo> get tourLanguages =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadTourResponseCopyWith<_DownloadTourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

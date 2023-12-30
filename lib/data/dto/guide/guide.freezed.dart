// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guide _$GuideFromJson(Map<String, dynamic> json) {
  return _Guide.fromJson(json);
}

/// @nodoc
class _$GuideTearOff {
  const _$GuideTearOff();

  _Guide call(
      {@HiveField(0) int id = 0,
      @HiveField(1) String name = '',
      @HiveField(9) String surname = '',
      @HiveField(2) String imageUrl = '',
      @HiveField(3) String videoUrl = '',
      @HiveField(4) int numberOfTours = 0,
      @HiveField(5) double averageRate = 0.0,
      @HiveField(6) String description = '',
      @HiveField(7) List<Achievement> achievements = const [],
      @HiveField(8) List<Tour> tours = const [],
      @HiveField(10) SocialNetworks? socialNetworks = null,
      @HiveField(11) bool atLeastOneTourBought = false}) {
    return _Guide(
      id: id,
      name: name,
      surname: surname,
      imageUrl: imageUrl,
      videoUrl: videoUrl,
      numberOfTours: numberOfTours,
      averageRate: averageRate,
      description: description,
      achievements: achievements,
      tours: tours,
      socialNetworks: socialNetworks,
      atLeastOneTourBought: atLeastOneTourBought,
    );
  }

  Guide fromJson(Map<String, Object> json) {
    return Guide.fromJson(json);
  }
}

/// @nodoc
const $Guide = _$GuideTearOff();

/// @nodoc
mixin _$Guide {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(9)
  String get surname => throw _privateConstructorUsedError;
  @HiveField(2)
  String get imageUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  String get videoUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  int get numberOfTours => throw _privateConstructorUsedError;
  @HiveField(5)
  double get averageRate => throw _privateConstructorUsedError;
  @HiveField(6)
  String get description => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Achievement> get achievements => throw _privateConstructorUsedError;
  @HiveField(8)
  List<Tour> get tours => throw _privateConstructorUsedError;
  @HiveField(10)
  SocialNetworks? get socialNetworks => throw _privateConstructorUsedError;
  @HiveField(11)
  bool get atLeastOneTourBought => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideCopyWith<Guide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideCopyWith<$Res> {
  factory $GuideCopyWith(Guide value, $Res Function(Guide) then) =
      _$GuideCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(9) String surname,
      @HiveField(2) String imageUrl,
      @HiveField(3) String videoUrl,
      @HiveField(4) int numberOfTours,
      @HiveField(5) double averageRate,
      @HiveField(6) String description,
      @HiveField(7) List<Achievement> achievements,
      @HiveField(8) List<Tour> tours,
      @HiveField(10) SocialNetworks? socialNetworks,
      @HiveField(11) bool atLeastOneTourBought});

  $SocialNetworksCopyWith<$Res>? get socialNetworks;
}

/// @nodoc
class _$GuideCopyWithImpl<$Res> implements $GuideCopyWith<$Res> {
  _$GuideCopyWithImpl(this._value, this._then);

  final Guide _value;
  // ignore: unused_field
  final $Res Function(Guide) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? numberOfTours = freezed,
    Object? averageRate = freezed,
    Object? description = freezed,
    Object? achievements = freezed,
    Object? tours = freezed,
    Object? socialNetworks = freezed,
    Object? atLeastOneTourBought = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTours: numberOfTours == freezed
          ? _value.numberOfTours
          : numberOfTours // ignore: cast_nullable_to_non_nullable
              as int,
      averageRate: averageRate == freezed
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      achievements: achievements == freezed
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      tours: tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      socialNetworks: socialNetworks == freezed
          ? _value.socialNetworks
          : socialNetworks // ignore: cast_nullable_to_non_nullable
              as SocialNetworks?,
      atLeastOneTourBought: atLeastOneTourBought == freezed
          ? _value.atLeastOneTourBought
          : atLeastOneTourBought // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SocialNetworksCopyWith<$Res>? get socialNetworks {
    if (_value.socialNetworks == null) {
      return null;
    }

    return $SocialNetworksCopyWith<$Res>(_value.socialNetworks!, (value) {
      return _then(_value.copyWith(socialNetworks: value));
    });
  }
}

/// @nodoc
abstract class _$GuideCopyWith<$Res> implements $GuideCopyWith<$Res> {
  factory _$GuideCopyWith(_Guide value, $Res Function(_Guide) then) =
      __$GuideCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(9) String surname,
      @HiveField(2) String imageUrl,
      @HiveField(3) String videoUrl,
      @HiveField(4) int numberOfTours,
      @HiveField(5) double averageRate,
      @HiveField(6) String description,
      @HiveField(7) List<Achievement> achievements,
      @HiveField(8) List<Tour> tours,
      @HiveField(10) SocialNetworks? socialNetworks,
      @HiveField(11) bool atLeastOneTourBought});

  @override
  $SocialNetworksCopyWith<$Res>? get socialNetworks;
}

/// @nodoc
class __$GuideCopyWithImpl<$Res> extends _$GuideCopyWithImpl<$Res>
    implements _$GuideCopyWith<$Res> {
  __$GuideCopyWithImpl(_Guide _value, $Res Function(_Guide) _then)
      : super(_value, (v) => _then(v as _Guide));

  @override
  _Guide get _value => super._value as _Guide;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? imageUrl = freezed,
    Object? videoUrl = freezed,
    Object? numberOfTours = freezed,
    Object? averageRate = freezed,
    Object? description = freezed,
    Object? achievements = freezed,
    Object? tours = freezed,
    Object? socialNetworks = freezed,
    Object? atLeastOneTourBought = freezed,
  }) {
    return _then(_Guide(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfTours: numberOfTours == freezed
          ? _value.numberOfTours
          : numberOfTours // ignore: cast_nullable_to_non_nullable
              as int,
      averageRate: averageRate == freezed
          ? _value.averageRate
          : averageRate // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      achievements: achievements == freezed
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<Achievement>,
      tours: tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      socialNetworks: socialNetworks == freezed
          ? _value.socialNetworks
          : socialNetworks // ignore: cast_nullable_to_non_nullable
              as SocialNetworks?,
      atLeastOneTourBought: atLeastOneTourBought == freezed
          ? _value.atLeastOneTourBought
          : atLeastOneTourBought // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.guide)
class _$_Guide implements _Guide {
  _$_Guide(
      {@HiveField(0) this.id = 0,
      @HiveField(1) this.name = '',
      @HiveField(9) this.surname = '',
      @HiveField(2) this.imageUrl = '',
      @HiveField(3) this.videoUrl = '',
      @HiveField(4) this.numberOfTours = 0,
      @HiveField(5) this.averageRate = 0.0,
      @HiveField(6) this.description = '',
      @HiveField(7) this.achievements = const [],
      @HiveField(8) this.tours = const [],
      @HiveField(10) this.socialNetworks = null,
      @HiveField(11) this.atLeastOneTourBought = false});

  factory _$_Guide.fromJson(Map<String, dynamic> json) =>
      _$_$_GuideFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  @HiveField(0)
  final int id;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String name;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(9)
  final String surname;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String imageUrl;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(3)
  final String videoUrl;
  @JsonKey(defaultValue: 0)
  @override
  @HiveField(4)
  final int numberOfTours;
  @JsonKey(defaultValue: 0.0)
  @override
  @HiveField(5)
  final double averageRate;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(6)
  final String description;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(7)
  final List<Achievement> achievements;
  @JsonKey(defaultValue: const [])
  @override
  @HiveField(8)
  final List<Tour> tours;
  @JsonKey(defaultValue: null)
  @override
  @HiveField(10)
  final SocialNetworks? socialNetworks;
  @JsonKey(defaultValue: false)
  @override
  @HiveField(11)
  final bool atLeastOneTourBought;

  @override
  String toString() {
    return 'Guide(id: $id, name: $name, surname: $surname, imageUrl: $imageUrl, videoUrl: $videoUrl, numberOfTours: $numberOfTours, averageRate: $averageRate, description: $description, achievements: $achievements, tours: $tours, socialNetworks: $socialNetworks, atLeastOneTourBought: $atLeastOneTourBought)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Guide &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.numberOfTours, numberOfTours) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfTours, numberOfTours)) &&
            (identical(other.averageRate, averageRate) ||
                const DeepCollectionEquality()
                    .equals(other.averageRate, averageRate)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.achievements, achievements) ||
                const DeepCollectionEquality()
                    .equals(other.achievements, achievements)) &&
            (identical(other.tours, tours) ||
                const DeepCollectionEquality().equals(other.tours, tours)) &&
            (identical(other.socialNetworks, socialNetworks) ||
                const DeepCollectionEquality()
                    .equals(other.socialNetworks, socialNetworks)) &&
            (identical(other.atLeastOneTourBought, atLeastOneTourBought) ||
                const DeepCollectionEquality()
                    .equals(other.atLeastOneTourBought, atLeastOneTourBought)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(numberOfTours) ^
      const DeepCollectionEquality().hash(averageRate) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(achievements) ^
      const DeepCollectionEquality().hash(tours) ^
      const DeepCollectionEquality().hash(socialNetworks) ^
      const DeepCollectionEquality().hash(atLeastOneTourBought);

  @JsonKey(ignore: true)
  @override
  _$GuideCopyWith<_Guide> get copyWith =>
      __$GuideCopyWithImpl<_Guide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GuideToJson(this);
  }
}

abstract class _Guide implements Guide {
  factory _Guide(
      {@HiveField(0) int id,
      @HiveField(1) String name,
      @HiveField(9) String surname,
      @HiveField(2) String imageUrl,
      @HiveField(3) String videoUrl,
      @HiveField(4) int numberOfTours,
      @HiveField(5) double averageRate,
      @HiveField(6) String description,
      @HiveField(7) List<Achievement> achievements,
      @HiveField(8) List<Tour> tours,
      @HiveField(10) SocialNetworks? socialNetworks,
      @HiveField(11) bool atLeastOneTourBought}) = _$_Guide;

  factory _Guide.fromJson(Map<String, dynamic> json) = _$_Guide.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  String get surname => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  int get numberOfTours => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  double get averageRate => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  List<Achievement> get achievements => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  List<Tour> get tours => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  SocialNetworks? get socialNetworks => throw _privateConstructorUsedError;
  @override
  @HiveField(11)
  bool get atLeastOneTourBought => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GuideCopyWith<_Guide> get copyWith => throw _privateConstructorUsedError;
}

SocialNetworks _$SocialNetworksFromJson(Map<String, dynamic> json) {
  return _SocialNetworks.fromJson(json);
}

/// @nodoc
class _$SocialNetworksTearOff {
  const _$SocialNetworksTearOff();

  _SocialNetworks call(
      {@HiveField(0) String Vkontakte = '',
      @HiveField(1) String Twitter = '',
      @HiveField(2) String Instagram = '',
      @HiveField(3) String Facebook = ''}) {
    return _SocialNetworks(
      Vkontakte: Vkontakte,
      Twitter: Twitter,
      Instagram: Instagram,
      Facebook: Facebook,
    );
  }

  SocialNetworks fromJson(Map<String, Object> json) {
    return SocialNetworks.fromJson(json);
  }
}

/// @nodoc
const $SocialNetworks = _$SocialNetworksTearOff();

/// @nodoc
mixin _$SocialNetworks {
  @HiveField(0)
  String get Vkontakte => throw _privateConstructorUsedError;
  @HiveField(1)
  String get Twitter => throw _privateConstructorUsedError;
  @HiveField(2)
  String get Instagram => throw _privateConstructorUsedError;
  @HiveField(3)
  String get Facebook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialNetworksCopyWith<SocialNetworks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialNetworksCopyWith<$Res> {
  factory $SocialNetworksCopyWith(
          SocialNetworks value, $Res Function(SocialNetworks) then) =
      _$SocialNetworksCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String Vkontakte,
      @HiveField(1) String Twitter,
      @HiveField(2) String Instagram,
      @HiveField(3) String Facebook});
}

/// @nodoc
class _$SocialNetworksCopyWithImpl<$Res>
    implements $SocialNetworksCopyWith<$Res> {
  _$SocialNetworksCopyWithImpl(this._value, this._then);

  final SocialNetworks _value;
  // ignore: unused_field
  final $Res Function(SocialNetworks) _then;

  @override
  $Res call({
    Object? Vkontakte = freezed,
    Object? Twitter = freezed,
    Object? Instagram = freezed,
    Object? Facebook = freezed,
  }) {
    return _then(_value.copyWith(
      Vkontakte: Vkontakte == freezed
          ? _value.Vkontakte
          : Vkontakte // ignore: cast_nullable_to_non_nullable
              as String,
      Twitter: Twitter == freezed
          ? _value.Twitter
          : Twitter // ignore: cast_nullable_to_non_nullable
              as String,
      Instagram: Instagram == freezed
          ? _value.Instagram
          : Instagram // ignore: cast_nullable_to_non_nullable
              as String,
      Facebook: Facebook == freezed
          ? _value.Facebook
          : Facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SocialNetworksCopyWith<$Res>
    implements $SocialNetworksCopyWith<$Res> {
  factory _$SocialNetworksCopyWith(
          _SocialNetworks value, $Res Function(_SocialNetworks) then) =
      __$SocialNetworksCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String Vkontakte,
      @HiveField(1) String Twitter,
      @HiveField(2) String Instagram,
      @HiveField(3) String Facebook});
}

/// @nodoc
class __$SocialNetworksCopyWithImpl<$Res>
    extends _$SocialNetworksCopyWithImpl<$Res>
    implements _$SocialNetworksCopyWith<$Res> {
  __$SocialNetworksCopyWithImpl(
      _SocialNetworks _value, $Res Function(_SocialNetworks) _then)
      : super(_value, (v) => _then(v as _SocialNetworks));

  @override
  _SocialNetworks get _value => super._value as _SocialNetworks;

  @override
  $Res call({
    Object? Vkontakte = freezed,
    Object? Twitter = freezed,
    Object? Instagram = freezed,
    Object? Facebook = freezed,
  }) {
    return _then(_SocialNetworks(
      Vkontakte: Vkontakte == freezed
          ? _value.Vkontakte
          : Vkontakte // ignore: cast_nullable_to_non_nullable
              as String,
      Twitter: Twitter == freezed
          ? _value.Twitter
          : Twitter // ignore: cast_nullable_to_non_nullable
              as String,
      Instagram: Instagram == freezed
          ? _value.Instagram
          : Instagram // ignore: cast_nullable_to_non_nullable
              as String,
      Facebook: Facebook == freezed
          ? _value.Facebook
          : Facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.socialNetworks)
class _$_SocialNetworks implements _SocialNetworks {
  _$_SocialNetworks(
      {@HiveField(0) this.Vkontakte = '',
      @HiveField(1) this.Twitter = '',
      @HiveField(2) this.Instagram = '',
      @HiveField(3) this.Facebook = ''});

  factory _$_SocialNetworks.fromJson(Map<String, dynamic> json) =>
      _$_$_SocialNetworksFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  @HiveField(0)
  final String Vkontakte;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String Twitter;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(2)
  final String Instagram;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(3)
  final String Facebook;

  @override
  String toString() {
    return 'SocialNetworks(Vkontakte: $Vkontakte, Twitter: $Twitter, Instagram: $Instagram, Facebook: $Facebook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocialNetworks &&
            (identical(other.Vkontakte, Vkontakte) ||
                const DeepCollectionEquality()
                    .equals(other.Vkontakte, Vkontakte)) &&
            (identical(other.Twitter, Twitter) ||
                const DeepCollectionEquality()
                    .equals(other.Twitter, Twitter)) &&
            (identical(other.Instagram, Instagram) ||
                const DeepCollectionEquality()
                    .equals(other.Instagram, Instagram)) &&
            (identical(other.Facebook, Facebook) ||
                const DeepCollectionEquality()
                    .equals(other.Facebook, Facebook)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(Vkontakte) ^
      const DeepCollectionEquality().hash(Twitter) ^
      const DeepCollectionEquality().hash(Instagram) ^
      const DeepCollectionEquality().hash(Facebook);

  @JsonKey(ignore: true)
  @override
  _$SocialNetworksCopyWith<_SocialNetworks> get copyWith =>
      __$SocialNetworksCopyWithImpl<_SocialNetworks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SocialNetworksToJson(this);
  }
}

abstract class _SocialNetworks implements SocialNetworks {
  factory _SocialNetworks(
      {@HiveField(0) String Vkontakte,
      @HiveField(1) String Twitter,
      @HiveField(2) String Instagram,
      @HiveField(3) String Facebook}) = _$_SocialNetworks;

  factory _SocialNetworks.fromJson(Map<String, dynamic> json) =
      _$_SocialNetworks.fromJson;

  @override
  @HiveField(0)
  String get Vkontakte => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get Twitter => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get Instagram => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get Facebook => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SocialNetworksCopyWith<_SocialNetworks> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
class _$AchievementTearOff {
  const _$AchievementTearOff();

  _Achievement call(
      {@HiveField(0) String imageUrl = '', @HiveField(1) String text = ''}) {
    return _Achievement(
      imageUrl: imageUrl,
      text: text,
    );
  }

  Achievement fromJson(Map<String, Object> json) {
    return Achievement.fromJson(json);
  }
}

/// @nodoc
const $Achievement = _$AchievementTearOff();

/// @nodoc
mixin _$Achievement {
  @HiveField(0)
  String get imageUrl => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
          Achievement value, $Res Function(Achievement) then) =
      _$AchievementCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String imageUrl, @HiveField(1) String text});
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res> implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  final Achievement _value;
  // ignore: unused_field
  final $Res Function(Achievement) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AchievementCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$AchievementCopyWith(
          _Achievement value, $Res Function(_Achievement) then) =
      __$AchievementCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String imageUrl, @HiveField(1) String text});
}

/// @nodoc
class __$AchievementCopyWithImpl<$Res> extends _$AchievementCopyWithImpl<$Res>
    implements _$AchievementCopyWith<$Res> {
  __$AchievementCopyWithImpl(
      _Achievement _value, $Res Function(_Achievement) _then)
      : super(_value, (v) => _then(v as _Achievement));

  @override
  _Achievement get _value => super._value as _Achievement;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? text = freezed,
  }) {
    return _then(_Achievement(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.achievement)
class _$_Achievement implements _Achievement {
  _$_Achievement(
      {@HiveField(0) this.imageUrl = '', @HiveField(1) this.text = ''});

  factory _$_Achievement.fromJson(Map<String, dynamic> json) =>
      _$_$_AchievementFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  @HiveField(0)
  final String imageUrl;
  @JsonKey(defaultValue: '')
  @override
  @HiveField(1)
  final String text;

  @override
  String toString() {
    return 'Achievement(imageUrl: $imageUrl, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Achievement &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$AchievementCopyWith<_Achievement> get copyWith =>
      __$AchievementCopyWithImpl<_Achievement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AchievementToJson(this);
  }
}

abstract class _Achievement implements Achievement {
  factory _Achievement(
      {@HiveField(0) String imageUrl,
      @HiveField(1) String text}) = _$_Achievement;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$_Achievement.fromJson;

  @override
  @HiveField(0)
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AchievementCopyWith<_Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

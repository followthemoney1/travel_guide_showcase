import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'guide.freezed.dart';

part 'guide.g.dart';

@freezed
class Guide with _$Guide {
  @HiveType(typeId: HiveTypes.guide)
  factory Guide({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default('') String name,
    @HiveField(9) @Default('') String surname,
    @HiveField(2) @Default('') String imageUrl,
    @HiveField(3) @Default('') String videoUrl,
    @HiveField(4) @Default(0) int numberOfTours,
    @HiveField(5) @Default(0.0) double averageRate,
    @HiveField(6) @Default('') String description,
    @HiveField(7) @Default([]) List<Achievement> achievements,
    @HiveField(8) @Default([]) List<Tour> tours,
    @HiveField(10) @Default(null) SocialNetworks? socialNetworks,
    @HiveField(11) @Default(false) bool atLeastOneTourBought,
  }) = _Guide;

  factory Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);
}

@freezed
class SocialNetworks with _$SocialNetworks {
  @HiveType(typeId: HiveTypes.socialNetworks)
  factory SocialNetworks({
    @HiveField(0) @Default('') String Vkontakte,
    @HiveField(1) @Default('') String Twitter,
    @HiveField(2) @Default('') String Instagram,
    @HiveField(3) @Default('') String Facebook,
  }) = _SocialNetworks;

  factory SocialNetworks.fromJson(Map<String, dynamic> json) => _$SocialNetworksFromJson(json);
}

@freezed
class Achievement with _$Achievement {
  @HiveType(typeId: HiveTypes.achievement)
  factory Achievement({
    @HiveField(0) @Default('') String imageUrl,
    @HiveField(1) @Default('') String text,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) => _$AchievementFromJson(json);
}

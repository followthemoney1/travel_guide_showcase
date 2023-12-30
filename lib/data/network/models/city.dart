import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class CityResponse with _$CityResponse {
  @HiveType(typeId: HiveTypes.cityResponse)
  factory CityResponse({
    @HiveField(0) @Default(-1) int id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String description,
    @HiveField(3) @Default('') String imageUrl,
    @HiveField(4) @Default([]) List<ToursQuantity> toursQuantity,
    @HiveField(5) @Default([]) List<Tour> recommendedTours,
    @HiveField(6) @Default([]) List<Guide> guides,
    @HiveField(7) @Default([]) List<Sight> sights,
    @HiveField(8) @Default([]) List<City> citiesNearby,
  }) = _CityResponse;

  factory CityResponse.fromJson(Map<String, dynamic> json) => _$CityResponseFromJson(json);
}

@freezed
class ToursQuantity with _$ToursQuantity {
  @HiveType(typeId: HiveTypes.toursQuantity)
  factory ToursQuantity({
    @HiveField(0) @Default(-1) int tourTypeId,
    @HiveField(1) @Default('') String tourTypeName,
    @HiveField(2) @Default('') String tourTypeImageUrl,
    @HiveField(3) @Default(-1) int toursQuantity,
  }) = _ToursQuantity;

  factory ToursQuantity.fromJson(Map<String, dynamic> json) => _$ToursQuantityFromJson(json);
}

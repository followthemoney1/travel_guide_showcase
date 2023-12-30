import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';

part 'popular_city.freezed.dart';
part 'popular_city.g.dart';

@freezed
class PopularCityResponse with _$PopularCityResponse {
  @HiveType(typeId: HiveTypes.popularCities)
  factory PopularCityResponse({
    @HiveField(0) @Default([]) List<City> cities,
  }) = _PopularCityResponse;

  factory PopularCityResponse.fromJson(Map<String, dynamic> json) => _$PopularCityResponseFromJson(json);
}

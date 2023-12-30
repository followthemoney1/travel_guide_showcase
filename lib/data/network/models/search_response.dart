import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  @HiveType(typeId: HiveTypes.searchResponse)
  factory SearchResponse({
    @HiveField(0) @Default(null) City? result,
    @HiveField(1) @Default([]) List<City> citiesNearby,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);
}

@freezed
class GetPopularPlacesBody with _$GetPopularPlacesBody {
  factory GetPopularPlacesBody(String lang) = _GetPopularPlacesBody;
  factory GetPopularPlacesBody.fromJson(Map<String, dynamic> json) => _$GetPopularPlacesBodyFromJson(json);
}

@freezed
class GetCityByIdBody with _$GetCityByIdBody {
  factory GetCityByIdBody(
    String language,
    int cityId,
  ) = _GetCityByIdBody;
  factory GetCityByIdBody.fromJson(Map<String, dynamic> json) => _$GetCityByIdBodyFromJson(json);
}

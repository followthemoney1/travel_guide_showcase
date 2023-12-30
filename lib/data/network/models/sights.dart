import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';

part 'sights.freezed.dart';
part 'sights.g.dart';

@freezed
class CitySightsResponse with _$CitySightsResponse {
  @HiveType(typeId: HiveTypes.citySights)
  factory CitySightsResponse({
    @HiveField(0) @Default([]) List<Sight> sightsList,
  }) = _CitySightsResponse;

  factory CitySightsResponse.fromJson(Map<String, dynamic> json) => _$CitySightsResponseFromJson(json);
}

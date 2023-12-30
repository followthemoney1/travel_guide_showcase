import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'sight_response.freezed.dart';

part 'sight_response.g.dart';

@freezed
class SightResponse with _$SightResponse {
  @HiveType(typeId: HiveTypes.sightResponse)
  factory SightResponse({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default([]) List<String> imageUrl,
    @HiveField(2) @Default('') String name,
    @HiveField(3) @Default('') String description,
    @HiveField(4) @Default([]) List<Tour> recommendedTours,
  }) = _SightResponse;

  factory SightResponse.fromJson(Map<String, dynamic> json) => _$SightResponseFromJson(json);
}

@freezed
class GetSightDataBody with _$GetSightDataBody {
  factory GetSightDataBody(
    String language,
    String attractionId,
  ) = _GetSightDataBody;
  factory GetSightDataBody.fromJson(Map<String, dynamic> json) => _$GetSightDataBodyFromJson(json);
}

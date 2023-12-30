import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'recommended_tours.freezed.dart';
part 'recommended_tours.g.dart';

@freezed
class RecommendedToursResponse with _$RecommendedToursResponse {
  @HiveType(typeId: HiveTypes.recommendedToursResponse)
  factory RecommendedToursResponse({
    @HiveField(0) @Default([]) List<Tour> recommendedTours,
  }) = _RecommendedToursResponse;

  factory RecommendedToursResponse.fromJson(Map<String, dynamic> json) => _$RecommendedToursResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/sight_route_item.dart';

part 'tour_route.freezed.dart';

part 'tour_route.g.dart';

@freezed
class TourRouteResponse with _$TourRouteResponse {
  @HiveType(typeId: HiveTypes.tourRouteResponse)
  factory TourRouteResponse(
    @HiveField(0) List<SightRouteItem> sights,
    @HiveField(1) String polyline,
  ) = _TourRouteResponse;

  factory TourRouteResponse.fromJson(Map<String, dynamic> json) => _$TourRouteResponseFromJson(json);
}

@freezed
class TourRouteBody with _$TourRouteBody {
  factory TourRouteBody(
    String tourId,
    String language,
  ) = _TourRouteBody;

  factory TourRouteBody.fromJson(Map<String, dynamic> json) => _$TourRouteBodyFromJson(json);
}

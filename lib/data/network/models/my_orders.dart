import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'my_orders.freezed.dart';
part 'my_orders.g.dart';

@freezed
class ActiveOrdersResponse with _$ActiveOrdersResponse {
  @HiveType(typeId: HiveTypes.activeOrders)
  factory ActiveOrdersResponse({
    @HiveField(0) @Default([]) List<Tour> activeOrdersList,
  }) = _ActiveOrdersResponse;

  factory ActiveOrdersResponse.fromJson(Map<String, dynamic> json) => _$ActiveOrdersResponseFromJson(json);
}

@freezed
class ArchiveOrdersResponse with _$ArchiveOrdersResponse {
  @HiveType(typeId: HiveTypes.archiveOrders)
  factory ArchiveOrdersResponse({
    @HiveField(0) @Default([]) List<Tour> archiveOrdersList,
  }) = _ArchiveOrdersResponse;

  factory ArchiveOrdersResponse.fromJson(Map<String, dynamic> json) => _$ArchiveOrdersResponseFromJson(json);
}

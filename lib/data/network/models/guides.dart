import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';

part 'guides.freezed.dart';
part 'guides.g.dart';

@freezed
class GuidesResponse with _$GuidesResponse {
  @HiveType(typeId: HiveTypes.guidesResponse)
  factory GuidesResponse({
    @HiveField(0) @Default([]) List<Guide> guides,
  }) = _GuidesResponse;

  factory GuidesResponse.fromJson(Map<String, dynamic> json) => _$GuidesResponseFromJson(json);
}

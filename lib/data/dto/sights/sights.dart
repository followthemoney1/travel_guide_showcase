import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';

part 'sights.freezed.dart';

part 'sights.g.dart';

@freezed
class Sight with _$Sight {
  @HiveType(typeId: HiveTypes.sight)
  const factory Sight({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default([]) List<String> imageUrl,
    @HiveField(2) @Default('') String name,
    @HiveField(3) @Default('') String place,
    @HiveField(4) @Default('') String flagUrl,
    @HiveField(5) @Default(0) int inclusionNumber,
  }) = _Sight;

  factory Sight.fromJson(Map<String, dynamic> json) => _$SightFromJson(json);
}

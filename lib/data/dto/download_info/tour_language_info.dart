import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';

part 'tour_language_info.freezed.dart';
part 'tour_language_info.g.dart';

@freezed
class TourLanguageInfo with _$TourLanguageInfo {
  @HiveType(typeId: HiveTypes.tourLanguageInfo)
  factory TourLanguageInfo({
    @HiveField(0) @Default('') String language,
    @HiveField(1) @Default([]) List<String> url,
    @HiveField(2) @Default('') String size,
  }) = _TourLanguageInfo;

  factory TourLanguageInfo.fromJson(Map<String, dynamic> json) => _$TourLanguageInfoFromJson(json);
}

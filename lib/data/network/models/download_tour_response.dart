import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/download_info/tour_language_info.dart';

part 'download_tour_response.freezed.dart';
part 'download_tour_response.g.dart';

@freezed
class DownloadTourResponse with _$DownloadTourResponse {
  @HiveType(typeId: HiveTypes.downloadTourInfo)
  factory DownloadTourResponse({@HiveField(0) @Default([]) List<TourLanguageInfo> tourLanguages}) = _DownloadTourResponse;

  factory DownloadTourResponse.fromJson(Map<String, dynamic> json) => _$DownloadTourResponseFromJson(json);
}

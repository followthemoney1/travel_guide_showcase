import 'package:freezed_annotation/freezed_annotation.dart';

part 'guide.freezed.dart';

part 'guide.g.dart';

@freezed
class GuideDataBody with _$GuideDataBody {
  factory GuideDataBody(
    String id,
    String language,
  ) = _GuideDataBody;

  factory GuideDataBody.fromJson(Map<String, dynamic> json) => _$GuideDataBodyFromJson(json);
}

@freezed
class UpdateGuideRateBody with _$UpdateGuideRateBody {
  factory UpdateGuideRateBody(
    String guideId,
    double rate,
  ) = _UpdateGuideRateBody;

  factory UpdateGuideRateBody.fromJson(Map<String, dynamic> json) => _$UpdateGuideRateBodyFromJson(json);
}

@freezed
class UpdateRateResponse with _$UpdateRateResponse {
  factory UpdateRateResponse(double averageRate) = _UpdateRateResponse;
  factory UpdateRateResponse.fromJson(Map<String, dynamic> json) => _$UpdateRateResponseFromJson(json);
}

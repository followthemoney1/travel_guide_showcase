import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';

part 'filter_response.freezed.dart';

part 'filter_response.g.dart';

@freezed
class FilterTourCategoriesByCityIdResponse with _$FilterTourCategoriesByCityIdResponse {
  factory FilterTourCategoriesByCityIdResponse({
    @Default([]) List<FilterCategory> filterCategories,
    @Default([]) List<LanguageCode> languageCodes,
  }) = _FilterTourCategoriesByCityIdResponse;

  factory FilterTourCategoriesByCityIdResponse.fromJson(Map<String, dynamic> json) => _$FilterTourCategoriesByCityIdResponseFromJson(json);
}

@freezed
class LanguageCode with _$LanguageCode {
  factory LanguageCode({
    @Default('') String languageCode,
    @Default('') String flag,
  }) = _LanguageCode;

  factory LanguageCode.fromJson(Map<String, dynamic> json) => _$LanguageCodeFromJson(json);
}

@freezed
class FilterTourCategoriesByGuideIdResponse with _$FilterTourCategoriesByGuideIdResponse {
  factory FilterTourCategoriesByGuideIdResponse({
    @Default([]) List<FilterCategory> filterCategories,
    @Default([]) List<String> codes,
  }) = _FilterTourCategoriesByGuideIdResponse;

  factory FilterTourCategoriesByGuideIdResponse.fromJson(Map<String, dynamic> json) => _$FilterTourCategoriesByGuideIdResponseFromJson(json);
}

@freezed
class FilterTourCategoriesBySightIdResponse with _$FilterTourCategoriesBySightIdResponse {
  factory FilterTourCategoriesBySightIdResponse({
    @Default([]) List<FilterCategory> filterCategories,
    @Default([]) List<String> codes,
  }) = _FilterTourCategoriesBySightIdResponse;

  factory FilterTourCategoriesBySightIdResponse.fromJson(Map<String, dynamic> json) => _$FilterTourCategoriesBySightIdResponseFromJson(json);
}

@freezed
class FilterSightCategoriesBySightIdResponse with _$FilterSightCategoriesBySightIdResponse {
  factory FilterSightCategoriesBySightIdResponse({
    @Default([]) List<FilterCategory> filterCategories,
    @Default([]) List<String> codes,
  }) = _FilterSightCategoriesBySightIdResponse;

  factory FilterSightCategoriesBySightIdResponse.fromJson(Map<String, dynamic> json) => _$FilterSightCategoriesBySightIdResponseFromJson(json);
}

@freezed
class FilterSightBody with _$FilterSightBody {
  factory FilterSightBody(
    String language,
    String sightId,
  ) = _FilterSightBody;

  factory FilterSightBody.fromJson(Map<String, dynamic> json) => _$FilterSightBodyFromJson(json);
}

@freezed
class FilterCityBody with _$FilterCityBody {
  factory FilterCityBody(
    String language,
    String cityId,
  ) = _FilterCityBody;

  factory FilterCityBody.fromJson(Map<String, dynamic> json) => _$FilterCityBodyFromJson(json);
}

@freezed
class FilterGuideBody with _$FilterGuideBody {
  factory FilterGuideBody(
    String language,
    String guideId,
  ) = _FilterGuideBody;

  factory FilterGuideBody.fromJson(Map<String, dynamic> json) => _$FilterGuideBodyFromJson(json);
}

@freezed
class FilterApplySightBody with _$FilterApplySightBody {
  factory FilterApplySightBody(
    String sightId,
    String sortBy,
    String language,
    List<String> categoriesSelected,
    List<String> languagesSelected,
  ) = _FilterApplySightBody;

  factory FilterApplySightBody.fromJson(Map<String, dynamic> json) => _$FilterApplySightBodyFromJson(json);
}

@freezed
class FilterApplyCityBody with _$FilterApplyCityBody {
  factory FilterApplyCityBody(
    String cityId,
    String sortBy,
    String language,
    List<String> categoriesSelected,
    List<String> languagesSelected,
  ) = _FilterApplyCityBody;

  factory FilterApplyCityBody.fromJson(Map<String, dynamic> json) => _$FilterApplyCityBodyFromJson(json);
}

@freezed
class FilterApplyGuideBody with _$FilterApplyGuideBody {
  factory FilterApplyGuideBody(
    String guideId,
    String sortBy,
    String language,
    List<String> categoriesSelected,
    List<String> languagesSelected,
  ) = _FilterApplyGuideBody;

  factory FilterApplyGuideBody.fromJson(Map<String, dynamic> json) => _$FilterApplyGuideBodyFromJson(json);
}

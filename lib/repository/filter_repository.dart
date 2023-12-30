import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/en_string.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/filter_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';
import 'package:mapo_travel_guide/data/network/models/sights.dart';

@singleton
class FilterRepository {
  final FilterApiClient _apiClient;

  // final HiveBoxConfigurator<FilterGuideTourTypeResponse> _guideBoxManager;
  // final HiveBoxConfigurator<FilterSightTourTypeResponse> _sightBoxManager;
  // final HiveBoxConfigurator<FilterCityTourTypeResponse> _cityBoxManager;

  FilterRepository(
    this._apiClient,
    // this._guideBoxManager,
    // this._sightBoxManager,
    // this._cityBoxManager,
  );

  Future<Either<ErrorResponse, FilterTourCategoriesByCityIdResponse>> getToursCategoriesByCityId(
    String cityId,
  ) async {
    return await _apiClient.getToursCategoriesByCityId(cityId);
  }

  Future<Either<ErrorResponse, FilterTourCategoriesByGuideIdResponse>> getToursCategoriesByGuideId(
    String guideId,
  ) async {
    return await _apiClient.getToursCategoriesByGuideId(guideId);
  }

  Future<Either<ErrorResponse, FilterTourCategoriesBySightIdResponse>> getToursCategoriesBySightId(
    String sightId,
  ) async {
    return await _apiClient.getToursCategoriesBySightId(sightId);
  }

  Future<Either<ErrorResponse, FilterSightCategoriesBySightIdResponse>> getSightsCategoriesBySightId(
    String sightId,
  ) async {
    return await _apiClient.getSightsCategoriesBySightId(sightId);
  }

  Set<SortOrder> fetchSortOrders() => {
        SortOrder(name: defaultSort),
        SortOrder(name: byRating),
        SortOrder(name: newest),
        SortOrder(name: priceLowHigh),
        SortOrder(name: priceHighLow),
      };

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithCityId(
    int cityId,
    FilterDto filter,
  ) async {
    return _apiClient.applyFilterForToursWithCityId(cityId, filter);
  }

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithSightId(
    int sightId,
    FilterDto filter,
  ) async =>
      _apiClient.applyFilterForToursWithSightId(sightId, filter);

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithGuideId(
    int guideId,
    FilterDto filter,
  ) async =>
      _apiClient.applyFilterForToursWithGuideId(guideId, filter);

  Future<Either<ErrorResponse, CitySightsResponse>> applySightFilter(
    String cityId,
    SortOrder sortBy,
    Set<FilterCategory> categoriesSelected,
    Set<Language> languagesSelected,
  ) async {
    final response = await _apiClient.applySightsFilter(
      cityId,
      sortBy,
      categoriesSelected,
      languagesSelected,
    );
    return response;
  }
}

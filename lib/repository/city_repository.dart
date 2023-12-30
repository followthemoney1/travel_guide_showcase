import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/network/city_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/guides.dart';
import 'package:mapo_travel_guide/data/network/models/recommended_tours.dart';
import 'package:mapo_travel_guide/data/network/models/tours_and_type.dart';

@singleton
class CityRepository {
  final CityApiClient _api;
  final HiveBoxConfigurator<CityResponse> cityResponseBox;
  final HiveBoxConfigurator<RecommendedToursResponse> _recommendedToursResponseBox;
  final HiveBoxConfigurator<GuidesResponse> _guidesResponseBox;

  CityRepository(this._api, this.cityResponseBox, this._recommendedToursResponseBox, this._guidesResponseBox);

  Future<Either<ErrorResponse, CityResponse>> getCityData(
    int cityId,
    List<String> languagesSelected,
  ) async {
    final cityData = await _api.getCityData(
      cityId,
      languagesSelected,
    );
    return cityData.fold(
      (err) {
        var cityResponse = cityResponseBox.get(cityId);
        if (cityResponse == null) {
          return Left(err);
        }
        return Right(cityResponse);
      },
      (response) {
        cityResponseBox.put(response.id, response);
        return Right(response);
      },
    );
  }

  Future<Either<ErrorResponse, RecommendedToursResponse>> getRecommendedTours(
    int cityId,
    List<String> languagesSelected,
  ) async {
    final recommendedTours = await _api.getRecommendedTours(cityId, languagesSelected);
    return recommendedTours.fold(
      (err) {
        final recommendedToursResponse = _recommendedToursResponseBox.get(cityId);
        if (recommendedToursResponse == null) {
          return Left(err);
        }
        return Right(recommendedToursResponse);
      },
      (response) {
        _recommendedToursResponseBox.put(cityId, response);
        return Right(response);
      },
    );
  }

  Future<Either<ErrorResponse, ToursAndType>> getToursByCategory(int? cityId, int? sightId, int? guideId, String? categoryId) async {
    return await _api.getToursByCategory(cityId, sightId, guideId, categoryId);
  }

  Future<Either<ErrorResponse, GuidesResponse>> getGuides(int cityId) async {
    final guides = await _api.getGuides(cityId);
    return guides.fold(
      (err) {
        final guidesResponse = _guidesResponseBox.get(cityId);
        if (guidesResponse == null) {
          return Left(err);
        }
        return Right(guidesResponse);
      },
      (response) {
        _guidesResponseBox.put(cityId, response);
        return Right(response);
      },
    );
  }
}

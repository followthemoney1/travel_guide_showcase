import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/popular_city.dart';
import 'package:mapo_travel_guide/data/network/models/search_response.dart';
import 'package:mapo_travel_guide/data/network/search_api_client.dart';

@lazySingleton
class SearchRepository {
  final SearchApiClient _api;
  final HiveBoxConfigurator<SearchResponse> _searchResponseBox;
  final HiveBoxConfigurator<PopularCityResponse> _popularCityResponseBox;

  SearchRepository(this._api, this._searchResponseBox, this._popularCityResponseBox);

  Future<Either<ErrorResponse, PopularCityResponse>> fetchPopularPlaces(String countryCode) async {
    final resultEither = await _api.fetchPopularPlaces(countryCode);
    return resultEither.fold(
      (err) {
        final popularCityResponse = _popularCityResponseBox.get(0);
        return popularCityResponse == null ? Left(err) : Right(popularCityResponse);
      },
      (response) {
        _popularCityResponseBox.put(0, response);
        return Right(response);
      },
    );
  }

  Future<Either<ErrorResponse, SearchResponse?>> fetchCity(int cityId) async {
    final resultEither = await _api.fetchCity(cityId);
    return resultEither.fold(
      (err) {
        final searchResponse = _searchResponseBox.get(cityId);
        return searchResponse == null ? Left(err) : Right(searchResponse);
      },
      (response) {
        _searchResponseBox.put(cityId, response);
        return Right(response);
      },
    );
  }

  Future<Either<ErrorResponse, List<City>>> matchCities(String pattern) async {
    return await _api.matchCities(pattern);
  }
}

import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/main_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';

@singleton
class MainRepository {
  final MainApiClient _api;

  MainRepository(this._api);

  Future<Either<ErrorResponse, PopularToursResponse>> getPopularTours(
    String locality,
    List<String> languagesSelected,
  ) {
    return _api.getPopularTours(
      locality,
      languagesSelected,
    );
  }

  Future<Either<ErrorResponse, GetCityIdResponse>> getCityId(String? locality) {
    return _api.getCityId(locality);
  }

  Future<Either<ErrorResponse, FilterTourCategoriesByCityIdResponse>> getAllLanguages() {
    return _api.getAllLanguages();
  }
}

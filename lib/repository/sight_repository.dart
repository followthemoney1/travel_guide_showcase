import 'package:auto_route/auto_route.dart';
import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/sight_response.dart';
import 'package:mapo_travel_guide/data/network/models/sights.dart';
import 'package:mapo_travel_guide/data/network/sight_api_client.dart';

@singleton
class SightRepository {
  final SightApiClient _apiClient;
  final HiveBoxConfigurator<SightResponse> sightResponseBox;
  final HiveBoxConfigurator<CitySightsResponse> _citySightsBoxManager;

  SightRepository(this._apiClient, this.sightResponseBox, this._citySightsBoxManager);

  Future<Either<ErrorResponse, SightResponse>> getSightData(String sightId) async {
    final sightData = await _apiClient.getSightData(sightId);
    return sightData.fold(
      (err) {
        final sightResponse = sightResponseBox.get(sightId);
        if (sightResponse == null) {
          return Left(err);
        }
        return Right(sightResponse);
      },
      (response) {
        sightResponseBox.put(response.id, response);
        return Right(response);
      },
    );
  }

  Future<Either<ErrorResponse, CitySightsResponse>> getSightsList({required int cityId}) async {
    final response = await _apiClient.getCitySights(cityId: cityId.toString());
    return response.fold((error) {
      var citySightsResponse = _citySightsBoxManager.get(cityId);
      if (citySightsResponse != null) {
        return Right(citySightsResponse);
      }
      return Left(error);
    }, (result) {
      _citySightsBoxManager.put(cityId, result);
      return Right(result);
    });
  }
}

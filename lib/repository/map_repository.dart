import 'dart:io' show Platform;
import 'package:either_option/either_option.dart';
import 'package:google_maps_webservice/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/network/map_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/tour_route.dart';
import 'package:mapo_travel_guide/util/const.dart';

@singleton
class MapRepository {
  final MapApiClient _mapApiClient;
  final HiveBoxConfigurator<TourRouteResponse> _tourRouteResponseBox;

  MapRepository(this._mapApiClient, this._tourRouteResponseBox);

  final GoogleMapsGeocoding _mapsGeocoding = GoogleMapsGeocoding(apiKey: Platform.isAndroid ? androidMapsKey : iosMapsKey);

  Future<String> getCityBy(Location location) async {
    final result = await _mapsGeocoding.searchByLocation(location, language: Platform.localeName.substring(0, 2));
    print('City: ${result.results[0].addressComponents[3].longName}');
    return '';
  }

  Future<Either<ErrorResponse, TourRouteResponse>> getTourRoute(String tourId) async {
    final route = await _mapApiClient.getTourRoute(tourId);
    return route.fold(
      (err) {
        final toursResponse = _tourRouteResponseBox.get(tourId);
        if (toursResponse == null) {
          return Left(err);
        }
        return Right(toursResponse);
      },
      (response) {
        _tourRouteResponseBox.put(tourId, response);
        return Right(response);
      },
    );
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/models/tour_route.dart';
import 'package:mapo_travel_guide/util/const.dart';

import 'models/error_response.dart';

@singleton
class MapApiClient {
  Future<Either<ErrorResponse, TourRouteResponse>> getTourRoute(String tourId) async {
    final url = '$baseApiUrl/audio-tour/tour/getTourRoute';
    var language = await MLoc.getAppLanguage();
    final body = jsonEncode(TourRouteBody(tourId, language));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        return Right(TourRouteResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

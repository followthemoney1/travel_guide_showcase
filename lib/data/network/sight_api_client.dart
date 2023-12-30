import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/sight_response.dart';
import 'package:mapo_travel_guide/data/network/models/sights.dart';
import 'package:mapo_travel_guide/util/const.dart';

import 'models/error_response.dart';

@singleton
class SightApiClient {
  final AuthApiClient _authApi;

  SightApiClient(this._authApi);

  Future<Either<ErrorResponse, CitySightsResponse>> getCitySights({required String cityId}) async {
    var url = '$baseApiUrl/attractions/getByCityId';
    var language = await MLoc.getAppLanguage();
    var query = jsonEncode({'cityId': cityId, 'language': language});
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        return Right(CitySightsResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, SightResponse>> getSightData(String sightId) async {
    final token = await _authApi.getActualToken();

    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/attractions/getData/getSight' : '/attractions/getData/getSightDataWithToken';
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    var language = await MLoc.getAppLanguage();
    var query = jsonEncode({'attractionId': sightId, 'language': language});
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        return Right(SightResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

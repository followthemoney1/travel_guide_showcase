import 'dart:convert';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/guides.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';

import 'models/recommended_tours.dart';
import 'models/tours_and_type.dart';

@lazySingleton
class CityApiClient {
  final AuthApiClient _authApi;

  CityApiClient(this._authApi);

  Future<Either<ErrorResponse, CityResponse>> getCityData(
    int cityId,
    List<String> languagesSelected,
  ) async {
    final language = await MLoc.getAppLanguage();
    final token = await _authApi.getActualToken();

    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/cities/getCityData/v2' : '/cities/getCityData/withToken/v2';
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };

    final body = {
      'cityId': cityId.toString(),
      'language': language,
      'languagesSelected': languagesSelected,
    };
    final url = '$baseApiUrl$rootUrl';
    var response;
    try {
      response = await http.post(Uri.parse(url), body: jsonEncode(body), headers: headers);
      if (response.statusCode == HttpStatus.created) {
        var city = CityResponse.fromJson(jsonDecode(response.body));
        await FBEvents.instance.logEvent(
          name: 'Get city data',
          parameters: {
            'name': city.name,
            'id': city.id,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Get city data', {
          'name': city.name,
          'id': city.id,
        });
        return Right(city);
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, RecommendedToursResponse>> getRecommendedTours(
    int cityId,
    List<String> languagesSelected,
  ) async {
    final token = await _authApi.getActualToken();

    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/audio-tour/tours/getRecommendedTours/v2' : '/audio-tour/tours/getRecommendedToursWithToken/v2';
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final language = await MLoc.getAppLanguage();
    final query = jsonEncode({
      'language': language,
      'cityId': cityId.toString(),
      'languagesSelected': languagesSelected,
    });
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        return Right(RecommendedToursResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, ToursAndType>> getToursByCategory(
    int? cityId,
    int? sightId,
    int? guideId,
    String? categoryId,
  ) async {
    final token = await _authApi.getActualToken();

    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/audio-tour/tour/byCategory/GetToursByCategoryId' : '/audio-tour/tour/byCategory/GetToursByCategoryIdWithToken';
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final language = await MLoc.getAppLanguage();
    final query = cityId != null
        ? jsonEncode({
            'language': language,
            'cityId': cityId.toString(),
            if (categoryId != '0') 'categoryId': categoryId,
          })
        : sightId != null
            ? jsonEncode({
                'language': language,
                'sightId': sightId.toString(),
                if (categoryId != '0') 'categoryId': categoryId,
              })
            : jsonEncode({
                'language': language,
                'guideId': guideId.toString(),
                if (categoryId != '0') 'categoryId': categoryId,
              });
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        var toursAndType = ToursAndType.fromJson(jsonDecode(response.body));
        await FBEvents.instance.logEvent(
          name: 'Get tours by category',
          parameters: {
            'category': toursAndType.typeName,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Get tours by category', {
          'category': toursAndType.typeName,
        });
        return Right(toursAndType);
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, GuidesResponse>> getGuides(int cityId) async {
    final url = '$baseApiUrl/guide/getGuides/byCityId';
    final language = await MLoc.getAppLanguage();
    final query = jsonEncode({'language': language, 'cityId': cityId.toString()});
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        return Right(GuidesResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

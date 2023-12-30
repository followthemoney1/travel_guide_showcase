import 'dart:convert';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/utils.dart';

@singleton
class MainApiClient {
  final AuthApiClient _authApi;

  MainApiClient(this._authApi);

  Future<Either<ErrorResponse, PopularToursResponse>> getPopularTours(
    String locality,
    List<String> languagesSelected,
  ) async {
    final language = await MLoc.getAppLanguage();

    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return Left(ErrorResponse(0, MLoc.cacheErorrMessage(language)));
    }

    final token = await _authApi.getActualToken();
    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/audio-tour/tour/get/popular/getPopularTours/v2' : '/audio-tour/tour/get/popular/getPopularToursWithToken/v2';
    final headers = token == null
        ? {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          }
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final body = {
      'cityName': locality,
      'language': language,
      'languagesSelected': languagesSelected,
    };
    var response;
    try {
      response = await http.post(Uri.parse(url), body: jsonEncode(body), headers: headers);
      print(response.body);
      print(response.body);
      if (response.statusCode == HttpStatus.created) {
        return Right(PopularToursResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, GetCityIdResponse>> getCityId(String? locality) async {
    // var trimmedLat = lat != null ? trimCoordinate(lat) : '';
    // var trimmedLng = lng != null ? trimCoordinate(lng) : '';
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/cities/get/getByCoords';
    final body = {'cityName': locality};
    //final headers = {HttpHeaders.contentTypeHeader: ContentType.json.mimeType};
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body);
      if (response.statusCode == HttpStatus.created) {
        return Right(GetCityIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, FilterTourCategoriesByCityIdResponse>> getAllLanguages() async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/audio-tour/get/languages/for/all/tours';
    var response;
    try {
      response = await http.get(
        Uri.parse(url),
      );
      if (response.statusCode == HttpStatus.ok) {
        return Right(FilterTourCategoriesByCityIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/popular_city.dart';
import 'package:mapo_travel_guide/data/network/models/search_response.dart';
import 'package:mapo_travel_guide/util/const.dart';

@singleton
class SearchApiClient {
  Future<Either<ErrorResponse, PopularCityResponse>> fetchPopularPlaces(String countryCode) async {
    final url = Uri.parse('$baseApiUrl/cities/getPopularCities');
    final language = await MLoc.getAppLanguage();
    final query = jsonEncode({
      'countryId': countryCode,
      'language': language,
    });
    var response;
    try {
      response = await http.post(url,
          headers: {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          },
          body: query);
      if (response.statusCode == HttpStatus.created) {
        return Right(PopularCityResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, SearchResponse>> fetchCity(int cityId) async {
    final url = Uri.parse('$baseApiUrl/cities/get/getSearchResult');
    final language = await MLoc.getAppLanguage();
    final query = jsonEncode({
      'cityId': cityId.toString(),
      'language': language,
    });
    var response;
    try {
      response = await http.post(url, headers: {HttpHeaders.contentTypeHeader: 'application/json'}, body: query);
      if (response.statusCode == HttpStatus.created) {
        return Right(SearchResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, List<City>>> matchCities(String pattern) async {
    final uri = Uri.parse('$baseApiUrl/cities/matchCities');
    final language = await MLoc.getAppLanguage();
    final query = jsonEncode({
      'pattern': pattern,
      'language': language,
    });
    var response;
    try {
      response = await http.post(uri, body: query, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        final listDynamic = jsonDecode(response.body) as List;
        return Right(listDynamic.map((e) => City.fromJson(e)).toList());
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

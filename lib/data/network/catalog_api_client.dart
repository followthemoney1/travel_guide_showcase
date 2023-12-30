import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/country/country.dart';
import 'package:mapo_travel_guide/data/network/models/catalog.dart';
import 'package:mapo_travel_guide/util/const.dart';

import 'models/error_response.dart';

@lazySingleton
class CatalogApiClient {
  Future<Either<ErrorResponse, List<Country>>> fetchCountries(String language) async {
    final language = await MLoc.getAppLanguage();
    var query = jsonEncode({'language': language});
    var response;
    try {
      response = await http.post(Uri.parse('$baseApiUrl/countries/getCountries'), body: query, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        final listDynamic = jsonDecode(response.body) as List;
        return Right(listDynamic.map((e) => Country.fromJson(e)).toList());
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, List<City>>> matchCities(String pattern) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/cities/matchCities';
    final body = MatchCitiesBody(await MLoc.getAppLanguage(), pattern).toJson();
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body);
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

  Future<Either<ErrorResponse, Country>> fetchCountry(String cityId) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/countries/getCountry/byCityId';
    final body = GetCountryByCityIdBody(await MLoc.getAppLanguage(), cityId).toJson();
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body);
      if (response.statusCode == HttpStatus.created) {
        return Right(Country.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

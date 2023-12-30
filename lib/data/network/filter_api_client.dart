import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/en_string.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';
import 'package:mapo_travel_guide/util/const.dart';

import 'models/sights.dart';

@singleton
class FilterApiClient {
  final AuthApiClient _authApi;

  FilterApiClient(this._authApi);

  Future<Either<ErrorResponse, FilterTourCategoriesBySightIdResponse>> getToursCategoriesBySightId(String sightId) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/audio-tour/tour/category/getToursCategories';
    final body = jsonEncode(FilterSightBody(await MLoc.getAppLanguage(), sightId));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        return Right(FilterTourCategoriesBySightIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, FilterTourCategoriesByGuideIdResponse>> getToursCategoriesByGuideId(String guideId) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/audio-tour/tour/category/getToursCategories';
    final body = jsonEncode(FilterGuideBody(await MLoc.getAppLanguage(), guideId));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType});
      if (response.statusCode == HttpStatus.created) {
        return Right(FilterTourCategoriesByGuideIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, FilterTourCategoriesByCityIdResponse>> getToursCategoriesByCityId(String cityId) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/audio-tour/tour/category/getToursCategories';
    final body = jsonEncode(FilterCityBody(await MLoc.getAppLanguage(), cityId));
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: body,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(FilterTourCategoriesByCityIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, FilterSightCategoriesBySightIdResponse>> getSightsCategoriesBySightId(String sightId) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/attractions/getData/getSightByCity/getSightsFilter';
    final body = jsonEncode(FilterSightBody(await MLoc.getAppLanguage(), sightId));
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: body,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(FilterSightCategoriesBySightIdResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithCityId(
    int cityId,
    FilterDto filterDto,
  ) async {
    final token = await _authApi.getActualToken();

    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/audio-tour/tour/get/filter/andSort/filterTours' : '/audio-tour/tour/get/filter/andSort/filterToursWithToken';
    var language = await MLoc.getAppLanguage();
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final body = jsonEncode(FilterApplyCityBody(
      cityId.toString(),
      filterDto.sortBy.name == defaultSort ? byRating : filterDto.sortBy.name,
      language,
      filterDto.categoriesSelected.map((e) => e.id.toString()).toList(),
      filterDto.languagesSelected.map((e) => e.id).toList(),
    ));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        final listDynamic = jsonDecode(response.body) as List;
        return Right(listDynamic.map((e) => Tour.fromJson(e)).toList());
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithSightId(
    int sightId,
    FilterDto filterDto,
  ) async {
    final token = await _authApi.getActualToken();
    final rootUrl = token == null ? '/audio-tour/tour/get/filter/andSort/filterTours' : '/audio-tour/tour/get/filter/andSort/filterToursWithToken';
    var language = await MLoc.getAppLanguage();
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final body = jsonEncode(FilterApplySightBody(
      sightId.toString(),
      filterDto.sortBy.name == defaultSort ? byRating : filterDto.sortBy.name,
      language,
      filterDto.categoriesSelected.map((e) => e.id.toString()).toList(),
      filterDto.languagesSelected.map((e) => e.id).toList(),
    ));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        print(url);
        print(response.body);
        final listDynamic = jsonDecode(response.body) as List;
        return Right(listDynamic.map((e) => Tour.fromJson(e)).toList());
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, List<Tour>>> applyFilterForToursWithGuideId(
    int guideId,
    FilterDto filterDto,
  ) async {
    final token = await _authApi.getActualToken();
    final rootUrl = token == null ? '/audio-tour/tour/get/filter/andSort/filterTours' : '/audio-tour/tour/get/filter/andSort/filterToursWithToken';
    var language = await MLoc.getAppLanguage();
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final body = jsonEncode(FilterApplyGuideBody(
      guideId.toString(),
      filterDto.sortBy.name == defaultSort ? byRating : filterDto.sortBy.name,
      language,
      filterDto.categoriesSelected.map((e) => e.id.toString()).toList(),
      filterDto.languagesSelected.map((e) => e.id).toList(),
    ));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        final listDynamic = jsonDecode(response.body) as List;
        return Right(listDynamic.map((e) => Tour.fromJson(e)).toList());
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, CitySightsResponse>> applySightsFilter(
    String cityId,
    SortOrder sortBy,
    Set<FilterCategory> categoriesSelected,
    Set<Language> languagesSelected,
  ) async {
    final language = await MLoc.getAppLanguage();
    var url = '$baseApiUrl/attractions/getData/getSightByCity/getSightsFilter';
    var categoriesList = categoriesSelected.map((e) => e.id).toList();
    var languageList = languagesSelected.map((e) => e.id).toList();
    var query = jsonEncode({
      'cityId': cityId,
      'sortBy': sortBy.name == defaultSort ? byRating : sortBy.name,
      'categoriesSelected': categoriesList,
      'languagesSelected': languageList,
    });
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
}

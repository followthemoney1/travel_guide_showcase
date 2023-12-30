import 'dart:convert';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/tour.dart';

import '../../util/const.dart';
import 'models/error_response.dart';
import 'models/guide.dart';

@singleton
class TourApi {
  final AuthApiClient _authApi;

  TourApi(this._authApi);

  Future<Either<ErrorResponse, UpdateRateResponse>> updateTourRate(String tourId, double rate) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/audio-tour-rate';
    final body = jsonEncode(UpdateTourRateBody(tourId, rate));
    final token = await _authApi.getActualToken();
    var response;
    try {
      response = await http.post(Uri.parse(url),
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer $token',
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
          },
          body: body);
      if (response.statusCode == HttpStatus.created) {
        return Right(UpdateRateResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, Tour>> getTourData(String tourId, String language) async {
    final language = await MLoc.getAppLanguage();
    var url = '$baseApiUrl/audio-tour/tour/flutter/withoutToken/getTourData?tourId=$tourId&language=$language';
    final token = await _authApi.getActualToken();
    var connectivityResult = await (Connectivity().checkConnectivity());
    Response? response;
    try {
      if (connectivityResult == ConnectivityResult.none) {
        throw Exception();
      }
      if (token != null) {
        url = '$baseApiUrl/audio-tour/tour/flutter/getTourData?tourId=$tourId&language=$language';
        response = await http.get(Uri.parse(url), headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
      } else {
        response = await http.get(Uri.parse(url));
      }
      if (response.statusCode == HttpStatus.ok) {
        return Right(Tour.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, TourActivationResponse>> activateTour(String tourId) async {
    final token = await _authApi.getActualToken();
    final language = await MLoc.getAppLanguage();
    final body = {'tourId': tourId, 'language': language};
    Response? response;
    try {
      if (token != null) {
        var url = '$baseApiUrl/payment/activate';
        response = await http.post(
          Uri.parse(url),
          body: body,
          headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
        );
      }
      if (response!.statusCode == HttpStatus.created) {
        return Right(TourActivationResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, AddTourToFavoritesResponse>> updateTourFavoritesState(
    String tourId,
    bool isFavourite,
  ) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/favourite-tour/addTourToFavourites';
    final body = jsonEncode(
      AddTourToFavoritesBody(int.parse(tourId), isFavourite),
    );
    final token = await _authApi.getActualToken();
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
        body: body,
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(
          AddTourToFavoritesResponse.fromJson(jsonDecode(response.body)),
        );
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

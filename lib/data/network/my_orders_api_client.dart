import 'dart:convert';
import 'dart:io';

import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/my_orders.dart';
import 'package:mapo_travel_guide/util/const.dart';

import 'models/error_response.dart';

@singleton
class MyOrdersApiClient {
  final AuthApiClient _authApi;

  MyOrdersApiClient(this._authApi);

  Future<Either<ErrorResponse, ActiveOrdersResponse>> getActiveOrders() async {
    final url = '$baseApiUrl/audio-tour/tour/get/active/orders/getActiveOrders';
    final language = await MLoc.getAppLanguage();
    final token = await _authApi.getActualToken();
    final query = jsonEncode({'language': language});
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: query,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(ActiveOrdersResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, ArchiveOrdersResponse>> getArchiveOrders() async {
    final url = '$baseApiUrl/audio-tour/tour/get/archive/orders/getArchiveOrders';
    final language = await MLoc.getAppLanguage();
    final token = await _authApi.getActualToken();
    final query = jsonEncode({'language': language});
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: query,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $token',
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(ArchiveOrdersResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

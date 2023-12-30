import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/download_tour_response.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/util/const.dart';

@singleton
class DownloadApiClient {
  final AuthApiClient _authApi;

  DownloadApiClient(this._authApi);

  Future<Either<ErrorResponse, DownloadTourResponse>> getDownloadInfo({required String id}) async {
    final language = await MLoc.getAppLanguage();
    var url = '$baseApiUrl/points-audio/audios/byTourId/downloadAudioTour';
    var query = jsonEncode({'id': id});
    final token = await _authApi.getActualToken();
    final headers = {
      HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        return Right(DownloadTourResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

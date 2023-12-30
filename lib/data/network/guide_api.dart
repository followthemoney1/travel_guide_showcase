import 'dart:convert';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/guide.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';

@singleton
class GuideApi {
  final AuthApiClient _authApi;

  GuideApi(this._authApi);

  Future<Either<ErrorResponse, Guide>> getGuideData(String guideId, String language) async {
    final token = await _authApi.getActualToken();

    final language = await MLoc.getAppLanguage();
    //Force logout if token = logoutKey
    if (token == logoutKey) {
      return Left(ErrorResponse(-1, logoutKey));
    }

    final rootUrl = token == null ? '/guide/getOne/getGuideData' : '/guide/getOne/getGuideDataWithToken';
    final headers = token == null
        ? {HttpHeaders.contentTypeHeader: ContentType.json.mimeType}
        : {
            HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
            HttpHeaders.authorizationHeader: 'Bearer $token',
          };
    final url = '$baseApiUrl$rootUrl';
    final body = jsonEncode(GuideDataBody(guideId, language));
    var response;
    try {
      response = await http.post(Uri.parse(url), body: body, headers: headers);
      if (response.statusCode == HttpStatus.created) {
        var guide = Guide.fromJson(jsonDecode(response.body));
        await FBEvents.instance.logEvent(
          name: 'Get guide data',
          parameters: {
            'id': guide.id,
            'name': guide.name,
            'surname': guide.surname,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Get guide data', {
          'id': guide.id,
          'name': guide.name,
          'surname': guide.surname,
        });
        return Right(Guide.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, UpdateRateResponse>> updateGuideRate(String guideId, double rate) async {
    final language = await MLoc.getAppLanguage();
    final url = '$baseApiUrl/guide-rate';
    final body = jsonEncode(UpdateGuideRateBody(guideId, rate).toJson());
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
}

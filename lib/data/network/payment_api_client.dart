import 'dart:convert';
import 'dart:io';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/payment.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';

import 'models/error_response.dart';

@singleton
class PaymentApiClient {
  final AuthApiClient _authApi;

  PaymentApiClient(this._authApi);

  Future<Either<ErrorResponse, bool>> makePayment({
    String? paymentToken,
    required String tourId,
    String? platform,
    bool isFree = false,
    String? productId,
  }) async {
    final url = '$baseApiUrl/payment';
    final language = await MLoc.getAppLanguage();
    var query = {};
    if (isFree) {
      query = PaymentFreeBody(
        tourId: tourId,
        language: language,
      ).toJson();
    } else if (platform == apple) {
      query = PaymentAppleBody(
        tourId: tourId,
        language: language,
        appleReceipt: paymentToken,
      ).toJson();
    } else if (platform == google) {
      query = PaymentAndroidBody(
        tourId: tourId,
        language: language,
        purchaseToken: paymentToken,
        packageName: appBundleId,
        productId: productId,
      ).toJson();
    }
    print('payment query: $query');
    print('Getting actual token');
    final userToken = await _authApi.getActualToken();
    print('userToken: $userToken');
    var response;
    try {
      response = await http.post(Uri.parse(url), body: query, headers: {HttpHeaders.authorizationHeader: 'Bearer $userToken'});
      print('response body: ${response.body}');
      if (response.statusCode == HttpStatus.created) {
        return Right(true);
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      print('catched error: ${e.toString()}');
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, PromoCodeData>> checkPromoCode(String promoCode, int tourId) async {
    final url = '$baseApiUrl/promocods/check/promocod';
    final userToken = await _authApi.getActualToken();
    final language = await MLoc.getAppLanguage();
    final body = jsonEncode(PromoCodeBody(
      promocod: promoCode,
      language: language,
      audioTour: tourId,
    ));
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: body,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $userToken',
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(PromoCodeData.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, bool>> usePromoCode(String promoCode, int tourId) async {
    final url = '$baseApiUrl/promocods/use/promocod';
    final userToken = await _authApi.getActualToken();
    final language = await MLoc.getAppLanguage();
    final body = jsonEncode(PromoCodeBody(
      promocod: promoCode,
      language: language,
      audioTour: tourId,
    ));
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: body,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer $userToken',
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(true);
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:connectivity/connectivity.dart';
import 'package:either_option/either_option.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/profile.dart';
import 'package:mapo_travel_guide/data/network/models/questions_and_answers.dart';
import 'package:mapo_travel_guide/data/network/models/subscription_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';

import 'models/error_response.dart';
import 'models/questions_and_answers.dart';

@singleton
class ProfileApiClient {
  final AuthApiClient _authApi;

  ProfileApiClient(this._authApi);

  Future<Either<ErrorResponse, bool>> deleteProfile() async {
    var url = '$baseApiUrl/users/me';
    final token = await _authApi.getActualToken();
    var response = await http.delete(
      Uri.parse(url),
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
    );
    if (response.statusCode == HttpStatus.ok) {
      await FBEvents.instance.logEvent(
        name: 'Profile deleted',
      );
      await locator<AppsflyerSdk>().logEvent(
        'Profile deleted',
        {},
      );
      return Right(true);
    } else {
      return Left(ErrorResponse(response.statusCode, response.body));
    }
  }

  Future<Either<ErrorResponse, MeResponse>> getMyInfo() async {
    var url = '$baseApiUrl/users/me';
    final token = await _authApi.getActualToken();
    var language = await MLoc.getAppLanguage();

    var connectivityResult = await (Connectivity().checkConnectivity());
    http.Response? response;
    try {
      if (connectivityResult == ConnectivityResult.none) {
        throw Exception();
      }
      response = await http.get(
        Uri.parse(url),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
      );
      if (response.statusCode == HttpStatus.ok) {
        print('user/me = ${response.body}');
        return Right(MeResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, bool>> subscribeToTheNewsletter(bool subscribe) async {
    var url = '$baseApiUrl/subscribe-to-news-letter/subscribeToNewsletter';
    var query = SubscribeToTheNewsletterBody(subscribe: subscribe).toJson();
    final token = await _authApi.getActualToken();

    var response = await http.post(
      Uri.parse(url),
      body: query,
      headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
    );
    if (response.statusCode == HttpStatus.ok) {
      return Right(true);
    } else {
      return Left(ErrorResponse(response.statusCode, response.body));
    }
  }

  Future<Either<ErrorResponse, bool>> editProfile({
    String? name,
    String? surname,
    String? email,
    String? password,
    String? confirmedPassword,
    String? oldPassword,
  }) async {
    var url = '$baseApiUrl/users/me';
    final language = await MLoc.getAppLanguage();
    var query = {
      if (name != null && name.isNotEmpty) 'name': name,
      if (surname != null && surname.isNotEmpty) 'surname': surname,
      if (email != null && email.isNotEmpty) 'email': email,
      'language': language,
      if (password != null && password.isNotEmpty) 'hash': password,
      if (confirmedPassword != null && confirmedPassword.isNotEmpty) 'confirmedPassword': confirmedPassword,
      if (oldPassword != null && oldPassword.isNotEmpty) 'oldPassword': oldPassword,
    };
    final token = await _authApi.getActualToken();
    var response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: query,
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'},
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(true);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(response.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, SubscriptionResponse>> checkSubscription() async {
    var url = '$baseApiUrl/subscribe-to-news-letter/checkSubscription';
    final token = await _authApi.getActualToken();
    var response = await http.get(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == HttpStatus.ok) {
      return Right(SubscriptionResponse.fromJson(jsonDecode(response.body)));
    } else {
      return Left(ErrorResponse(response.statusCode, response.body));
    }
  }

  Future<Either<ErrorResponse, FavoritesResponse>> getFavoritesList() async {
    final url = '$baseApiUrl/favourite-tour/getFavouritesList';
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
        return Right(FavoritesResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, UserPromocodesResponse>> getPromocodes() async {
    var url = '$baseApiUrl/getPromocodes';
    var language = await MLoc.getAppLanguage();
    var query = jsonEncode({'lang': language});
    var response = await http.post(
      Uri.parse(url),
      body: query,
    );
    await Future.delayed(Duration(seconds: 2));
    if (response.statusCode == HttpStatus.ok) {
      return Right(UserPromocodesResponse.fromJson(jsonDecode(response.body)));
    } else {
      return Left(ErrorResponse(response.statusCode, response.body));
    }
  }

  Future<Either<ErrorResponse, QuestionAndAnswerResponse>> getQuestionsAndAnswers() async {
    var url = '$baseApiUrl/question-and-answer/getQuestionsAndAnswers';
    var lang = await MLoc.getAppLanguage();
    var query = jsonEncode({'language': lang});
    http.Response? response;
    try {
      response = await http.post(
        Uri.parse(url),
        body: query,
        headers: {HttpHeaders.contentTypeHeader: ContentType.json.mimeType},
      );
      if (response.statusCode == HttpStatus.created) {
        return Right(QuestionAndAnswerResponse.fromJson(jsonDecode(response.body)));
      } else {
        return Left(ErrorResponse(response.statusCode, response.body));
      }
    } catch (e) {
      return Left(ErrorResponse(response?.statusCode ?? 0, response?.body.toString() ?? MLoc.cacheErorrMessage(lang)));
    }
  }
}

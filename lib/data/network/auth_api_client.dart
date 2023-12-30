import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:connectivity/connectivity.dart';
import 'package:either_option/either_option.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/network/models/auth.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:sign_in_with_apple/src/authorization_credential.dart';
import 'package:synchronized/synchronized.dart';

@singleton
class AuthApiClient {
  final FlutterSecureStorage _secureStorage;
  final HiveBoxConfigurator<User> _userBoxConfigurator;

  AuthApiClient(this._secureStorage, this._userBoxConfigurator);

  Future<Either<ErrorResponse, SignInResponse>> signIn(String email, String password) async {
    final url = '$baseApiUrl/auth/login';
    final language = await MLoc.getAppLanguage();
    final body = SignInBody(email, password, language).toJson();
    var result;
    try {
      result = await http.post(
        Uri.parse(url),
        body: body,
      );
      if (result.statusCode == HttpStatus.created) {
        var response = SignInResponse.fromJson(jsonDecode(result.body));
        await FBEvents.instance.logEvent(
          name: 'Signed In with credentials',
          parameters: {
            'email': response.email,
            'name': response.name,
            'surname': response.surname,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Signed In with credentials', {
          'email': response.email,
          'name': response.name,
          'surname': response.surname,
        });
        return Right(response);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, bool>> signUp(
    String name,
    String surname,
    String email,
    String password,
  ) async {
    final url = '$baseApiUrl/auth/register';
    final role = 'USER';
    final language = await MLoc.getAppLanguage();
    final body = SignUpBody(name, surname, email, password, role, language).toJson();
    var result;
    try {
      result = await http.post(Uri.parse(url), body: body);
      if (result.statusCode == HttpStatus.created) {
        await FBEvents.instance.logEvent(
          name: 'Signed Up with credentials',
          parameters: {
            'email': email,
            'name': name,
            'surname': surname,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Signed Up with credentials', {
          'email': email,
          'name': name,
          'surname': surname,
        });
        return Right(true);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, bool>> verifyUserAccount(String requestId, String code, String token) async {
    final url = '$baseApiUrl/auth/verify';
    final headers = {
      'Authorization': 'Bearer $token',
    };
    final body = VerifyAccountBody(requestId, code).toJson();
    final result = await http.post(Uri.parse(url), headers: headers, body: body);
    if (result.statusCode == HttpStatus.created) {
      return Right(true);
    } else {
      return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
    }
  }

  Future<Either<ErrorResponse, ResendCodeResponse>> resendCode() async {
    final url = '$baseApiUrl/auth/resendCode';
    var token = await getActualToken();
    final language = await MLoc.getAppLanguage();
    final headers = {'Authorization': 'Bearer $token'};
    var result;
    try {
      result = await http.get(Uri.parse(url), headers: headers);
      if (result.statusCode == HttpStatus.ok) {
        return Right(ResendCodeResponse.fromJson(jsonDecode(result.body)));
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, bool>> resetUserPassword(String email) async {
    final url = '$baseApiUrl/auth/resetPassword';
    final language = await MLoc.getAppLanguage();
    final body = ResetPasswordBody(
      email,
      language,
    ).toJson();
    var result;
    try {
      result = await http.post(
        Uri.parse(url),
        body: body,
      );
      if (result.statusCode == HttpStatus.created) {
        return Right(true);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  var lock = Lock();

  Future<String?> getActualToken() async {
    return await lock.synchronized(() async {
      var token = await _secureStorage.read(key: SecuredStorage.token);
      print('GETACTUALTOKEN: $token');
      if (token == null) return null;
      var isExpired = JwtDecoder.isExpired(token);
      if (isExpired) {
        var connectivityResult = await (Connectivity().checkConnectivity());
        if (connectivityResult == ConnectivityResult.none) {
          return '';
        }
        var refreshToken = await _secureStorage.read(key: SecuredStorage.refreshToken);
        final url = '$baseApiUrl/auth/refreshToken';
        final body = {'token': refreshToken};
        final result = await http.post(Uri.parse(url), body: body);
        if (result.statusCode == HttpStatus.created) {
          var signInResponse = SignInResponse.fromJson(jsonDecode(result.body));
          token = signInResponse.accessToken;
          await _secureStorage.write(key: SecuredStorage.token, value: signInResponse.accessToken);
          await _secureStorage.write(key: SecuredStorage.refreshToken, value: signInResponse.refreshToken);
        } else {
          log('logout process...');
          await _userBoxConfigurator.delete(0);
          await _secureStorage.delete(key: SecuredStorage.token);
          await _secureStorage.delete(key: SecuredStorage.refreshToken);
          await MyRouter().root.pushAndPopUntil(AuthorizationScreenRoute(), predicate: (route)=> false);
          // await  AutoRouter.root.pushAndRemoveUntil(Routes.authorizationScreen, (route) => false);
          return logoutKey;
        }
      }
      return token;
    });
  }

  Future<Either<ErrorResponse, bool>> logout(String refreshToken) async {
    final url = '$baseApiUrl/auth/logout';
    final body = LogoutBody(refreshToken).toJson();
    final language = await MLoc.getAppLanguage();

    final token = await _secureStorage.read(key: SecuredStorage.token);
    var result;
    try {
      result = await http.post(Uri.parse(url), body: body, headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});

      if (result.statusCode == HttpStatus.created) {
        return Right(true);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }

  Future<Either<ErrorResponse, SignInResponse>> signInWithApple(AuthorizationCredentialAppleID credential) async {
    final url = '$baseApiUrl/auth/login/withAppleId';
    final language = await MLoc.getAppLanguage();
    final body = SignInWithAppleBody(
      credential.email ?? '',
      credential.givenName ?? '',
      credential.familyName ?? '',
      credential.userIdentifier!,
      language,
    ).toJson();

    print('apple sign in body $body');

    var result;
    try {
      result = await http.post(
        Uri.parse(url),
        body: body,
      );
      if (result.statusCode == HttpStatus.created) {
        var response = SignInResponse.fromJson(jsonDecode(result.body));
        await FBEvents.instance.logEvent(
          name: 'Signed In with apple',
          parameters: {
            'email': credential.email,
            'name': credential.givenName,
            'surname': credential.familyName,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Signed In with apple', {
          'email': credential.email,
          'name': credential.givenName,
          'surname': credential.familyName,
        });
        return Right(response);
      } else {
        return Left(ErrorResponse.fromJson(jsonDecode(result.body)));
      }
    } catch (e) {
      return Left(ErrorResponse(result?.statusCode ?? 0, result?.body?.toString() ?? MLoc.cacheErorrMessage(language)));
    }
  }
}

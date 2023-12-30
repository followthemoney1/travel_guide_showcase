
import 'package:either_option/either_option.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart' as db;
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/network/auth_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/auth.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@singleton
class AuthRepository {
  final HiveBoxConfigurator<db.User> userBoxManager;
  final AuthApiClient api;
  final FlutterSecureStorage _secureStorage;

  AuthRepository(this.userBoxManager, this.api, this._secureStorage);

  Future<Either<ErrorResponse, SignInResponse>> signInWithCredentials(String email, String password) async {
    final either = await api.signIn(email, password);
    either.fold((err) {
      /*Ignore at this stage*/
    }, (resp) {
      _secureStorage.write(key: SecuredStorage.token, value: resp.accessToken);
      _secureStorage.write(key: SecuredStorage.refreshToken, value: resp.refreshToken);
      userBoxManager.put(0, User(email: resp.email, username: resp.name, surname: resp.surname));
    });
    return either;
  }

  Future<Either<ErrorResponse, bool>> logout() async {
    final token = await _secureStorage.read(key: SecuredStorage.refreshToken);
    
    return await api.logout(token!);
  }

  Future<Either<ErrorResponse, bool>> signUpWithCredentials(
    String name,
    String surname,
    String email,
    String password,
  ) async {
    return api.signUp(
      name,
      surname,
      email,
      password,
    );
  }

  Future<Either<ErrorResponse, bool>> resetUserPassword(String email) {
    return api.resetUserPassword(email);
  }

  Future<Either<ErrorResponse, bool>> verifyUser(String code) async {
    final requestId = await _secureStorage.read(key: SecuredStorage.requestId);
    final token = await _secureStorage.read(key: SecuredStorage.token);
    return api.verifyUserAccount(requestId!, code, token!);
  }

  Future<Either<ErrorResponse, ResendCodeResponse>> resendCode() async {
    final either = await api.resendCode();
    await either.fold(
      (err) {
        /*Ignore at this stage*/
      },
      (resp) async {
        await _secureStorage.write(key: SecuredStorage.requestId, value: resp.requestId);
      },
    );
    return either;
  }

  Future<Either<ErrorResponse, SignInResponse>> signInWithApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    var either = await api.signInWithApple(credential);
    either.fold((err) {
      /*Ignore at this stage*/
    }, (resp) {
      _secureStorage.write(key: SecuredStorage.token, value: resp.accessToken);
      _secureStorage.write(key: SecuredStorage.refreshToken, value: resp.refreshToken);
      userBoxManager.put(0, User(email: resp.email, username: resp.name, surname: resp.surname,id: ''));
    });
    print('Signed in with Apple Email: ${credential}');
    return either;
  }
}

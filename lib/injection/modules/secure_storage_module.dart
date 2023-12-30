import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SecureStorageModule {
  @singleton
  FlutterSecureStorage get secureStorage => FlutterSecureStorage();
}

@module
abstract class SharedPrefsModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

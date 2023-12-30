import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppsFlyerModule {
  @singleton
  AppsflyerSdk initAppsFlyer() {
    var appsFlyerOptions = {
      'afDevKey': 'TpyxEzaqtmhWtrFnqDrVPE',
      'afAppId': 1550582242,
      'isDebug': false,
    };
    var appsflyerSdk = AppsflyerSdk(appsFlyerOptions);
    appsflyerSdk.initSdk(
      registerConversionDataCallback: true,
      registerOnAppOpenAttributionCallback: true,
    );
    return appsflyerSdk;
  }
}

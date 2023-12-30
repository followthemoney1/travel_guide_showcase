import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/change_language_event.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_screen_cubit.freezed.dart';

part 'settings_screen_state.dart';

@singleton
class SettingsScreenCubit extends Cubit<SettingsScreenState> {
  final FlutterSecureStorage _secureStorage;

  SettingsScreenCubit(this._secureStorage) : super(_Initial());

  Future<void> changeLanguage(String language) async {
    //clear filter items. They might be in another language
    var filterCubit = locator<FilterCubit>();
    filterCubit.clearFilter();

    var eventBus = locator<EventBus>();
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(SecuredStorage.appLanguage, language).then((value) => eventBus.fire(ChangeLanguageEvent(language)));
  }

  Future<void> enablePushNotification(bool val) async {
    await _secureStorage.write(
      key: SecuredStorage.settingsEnablePushNotification,
      value: val.toString(),
    );
  }

  Future<void> enableAudioCache(bool val) async {
    await _secureStorage.write(
      key: SecuredStorage.settingsEnableAudioCache,
      value: val.toString(),
    );
  }

  Future<void> clearCache() async {
    emit(_Loading());
    var appDir = await getApplicationDocumentsDirectory();
    var tourFiles = Directory('${appDir.path}').listSync();
    tourFiles.forEach((tourFolder) async {
      await tourFolder.delete(recursive: true);
    });
    emit(_CacheCleared());
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/repository/download_repository.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_screen_cubit.freezed.dart';

part 'splash_screen_state.dart';

@singleton
class SplashScreenCubit extends Cubit<SplashScreenState> {
  final SharedPreferences _sharedPreferences;
  final HiveBoxConfigurator<User> _userHiveRepository;
  final DownloadRepository _downloadRepository;

  SplashScreenCubit(
    this._sharedPreferences,
    this._userHiveRepository,
    this._downloadRepository,
  ) : super(SplashScreenState.inital()) {
    _initialization();
  }

  Future _initialization() async {
    await Firebase.initializeApp();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = (details) async {
      await FirebaseCrashlytics.instance.recordFlutterError(details);
    };
    await _authorized();
    _downloadRepository.checkForDownloadProblems();
    // await _uploadPayments();
  }

  Future<void> _authorized() async {
    try {
      final user = await Future.delayed(Duration(seconds: 6), () => _userHiveRepository.get(0));
      if (user == null) {
        final isShowOnboarding = await _sharedPreferences.getBool(SecuredStorage.showOnboarding);
        if (isShowOnboarding == false) {
          emit(_NonAuthorized());
        } else {
          emit(_Onboarding());
        }
      } else {
        emit(_Authorized());
      }
    } catch (e) {
      emit(_NonAuthorized());
    }
  }

  // Future<void> _uploadPayments() async {
  //   _paymentRepository.uploadPayments();
  // }
}

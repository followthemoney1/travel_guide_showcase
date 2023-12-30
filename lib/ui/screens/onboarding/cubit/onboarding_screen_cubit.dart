import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_screen_state.dart';
part 'onboarding_screen_cubit.freezed.dart';

@lazySingleton
class OnboardingScreenCubit extends Cubit<OnboardingScreenState> {
  final SharedPreferences _sharedPreferences;
  OnboardingScreenCubit(this._sharedPreferences) : super(_Initial());

  void changeTab(bool last) {
    if (last) {
      emit(OnboardingScreenState.lastTab());
    } else {
      emit(OnboardingScreenState.inital());
    }
  }

  void nextTab() {
    emit(OnboardingScreenState.nextTab());
  }
}

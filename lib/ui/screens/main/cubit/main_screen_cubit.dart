import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/main_repository.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

part 'main_screen_cubit.freezed.dart';

part 'main_screen_state.dart';

@injectable
class MainScreenCubit extends Cubit<MainScreenState> {
  final MainRepository _mainRepository;
  List<Tour> tours = [];
  String? _countryCode;
  int? cityId;
  bool isLocationDefined = false;
  String cityName = '';
  String? _contentLanguage;
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _sharedPreferences;
  final HiveBoxConfigurator<User> _userBoxConfigurator;
  late StreamSubscription<ConnectivityResult> subscription;
  final FilterCubit filterCubit;

  MainScreenCubit(
    this._mainRepository,
    this._secureStorage,
    this._sharedPreferences,
    this._userBoxConfigurator,
    this.filterCubit,
  ) : super(_Loading());

  void refresh() {
    _locationInit();
  }

  void listenNetworkConnection() {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        //emit(_Error(ErrorResponse(0, '')));
      } else {
        emit(_Initial());
      }
    });
  }

  Future<bool> isFirsLaunch() async {
    var wasOnboardingShown = await _sharedPreferences.getBool(SecuredStorage.showOnboarding);
    if (wasOnboardingShown == null || wasOnboardingShown) {
      await _sharedPreferences.setBool(SecuredStorage.showOnboarding, false);
      return true;
    }
    return false;
  }

  String? get countryCode => _countryCode;

  Future<void> _locationInit() async {
    isLocationDefined = await Geolocator.isLocationServiceEnabled();
    if (!isLocationDefined) {
      emit(_Loading());
      emit(_LocationPermission());
    } else {
      await getRecommendedTours();
    }
  }

  void checkLanguageChanging() async {
    isLocationDefined = await Geolocator.isLocationServiceEnabled();
    var currentLanguage = await MLoc.getAppLanguage();
    if (currentLanguage != _contentLanguage) {
      refresh();
    }
  }

  void continueWithoutGeolocation() async {
    emit(_LocationNotDefined());
  }

  Future<void> enableLocation() async {
    var isPermitted = await requestPermission();
    if (isPermitted) {
      var isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isLocationServiceEnabled) {
        await Geolocator.openLocationSettings();
      }
      await getRecommendedTours();
    }
  }

  Future<void> getCityId(String? locality) async {
    final result = await _mainRepository.getCityId(locality);
    result.fold((err) => cityId = null, (response) => cityId = response.id);
  }

  Future<bool> requestPermission() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      emit(_Loading());
      emit(_LocationDeniedForever());
      return false;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.always && permission != LocationPermission.whileInUse) {
        emit(_LocationPermission());
        return false;
      }
    }
    if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
      isLocationDefined = true;
      return true;
    }
    return false;
  }

  Future<void> getRecommendedTours() async {
    if (isLocationDefined) {
      try {
        var isPermitted = await requestPermission();
        if (!isPermitted) return;
        var position = await Geolocator.getCurrentPosition();
        var placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
        var address = placemarks.first;
        _countryCode = address.isoCountryCode ?? '';
        _contentLanguage = await MLoc.getAppLanguage();
        await getCityId(address.locality ?? '');
        cityName = address.locality?.trimRight()??'';
        print('CITY NAME: $cityName');
      } catch (e) {
        log(e.toString());
        _getPopularTours(isLocationDefined, cityName);
      }
    }
    _getPopularTours(isLocationDefined, cityName);
  }

  void _getPopularTours(bool locationDefined, String locality) async {
    var languagesParameter = ['en'];
    var languagesSelected = filterCubit.getLanguagesSelected();
    if (languagesSelected.isEmpty) {
      var response = await _mainRepository.getAllLanguages();
      languagesParameter = response.fold(
        (e) => ['en'],
        (resp) => resp.languageCodes.map((langCode) => langCode.languageCode).toList(),
      );
    } else {
      languagesParameter = languagesSelected.map((lang) => lang.id).toList();
    }
    final result = await _mainRepository.getPopularTours(
      locality,
      languagesParameter,
    );
    emit(_Loading());
    emit(result.fold((err) {
      //If error -> User doesn't exist, then logout
      if (err.code == 102) {
        _proceedLogout();
      }
      return /* _Error(err); */ _Initial();
    }, (resp) {
      tours = resp.popularTours;
      tours.insert(0, Tour(id: -1)); //It needs to add empty space at the start to respond design conditions
      tours.add(Tour(id: -1)); //It needs to add empty space at the end to respond design conditions
      tours.add(Tour(id: -1));
      return !locationDefined ? _LocationNotDefined() : _LocationDefined();
    }));
  }

  void dispose() {
    subscription.cancel();
  }

  void _proceedLogout() async {
    await _userBoxConfigurator.delete(0);
    await _secureStorage.delete(key: SecuredStorage.token);
    await _secureStorage.delete(key: SecuredStorage.refreshToken);
    emit(_ProceedLogout());
  }
}

import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/city_repository.dart';
import 'package:mapo_travel_guide/repository/main_repository.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:meta/meta.dart';

part 'city_cubit.freezed.dart';

part 'city_state.dart';

@injectable
class CityCubit extends Cubit<CityState> {
  final CityRepository _cityRepo;
  final MainRepository _mainRepo;
  final FilterCubit _filterCubit;
  late int _cityId;

  CityResponse? _cityData;

  CityCubit(
    this._cityRepo,
    this._mainRepo,
    this._filterCubit,
  ) : super(_Initial());

  CityResponse? get city => _cityData;

  set cityId(int cityId) {
    _cityId = cityId;
    initContent();
  }

  int get cityId => _cityId;

  List<Tour> get audioTours {
    log('_cityData?.recommendedTours length: ${_cityData?.recommendedTours.length}');
    return _cityData?.recommendedTours ?? [];
  }

  List<Guide> get guides => _cityData?.guides ?? [];

  List<Sight> get sights => _cityData?.sights ?? [];

  List<City> get cities => _cityData?.citiesNearby ?? [];

  void initContent() {
    _getCityData();
  }

  Future<void> _getCityData() async {
    emit(_ContentLoading());
    var languagesParameter = ['en'];
    var languagesSelected = _filterCubit.getLanguagesSelected();
    if (languagesSelected.isEmpty) {
      var response = await _mainRepo.getAllLanguages();
      languagesParameter = response.fold(
        (e) => ['en'],
        (resp) => resp.languageCodes.map((langCode) => langCode.languageCode).toList(),
      );
    } else {
      languagesParameter = languagesSelected.map((lang) => lang.id).toList();
    }

    final result = await _cityRepo.getCityData(
      cityId,
      languagesParameter,
    );
    emit(result.fold((err) => _Error(err), (cityDataResult) {
      if (cityDataResult.citiesNearby.isNotEmpty) {
        cityDataResult.citiesNearby.insert(0, City(id: -1)); //It needs to add empty space at the start to respond design conditions
        cityDataResult.citiesNearby.add(City(id: -1)); //It needs to add empty space at the end to respond design conditions
        cityDataResult.citiesNearby.add(City(id: -1));
      }
      if (cityDataResult.recommendedTours.isNotEmpty) {
        cityDataResult.recommendedTours.insert(0, Tour(id: -1)); //It needs to add empty space at the start to respond design conditions
        cityDataResult.recommendedTours.add(Tour(id: -1)); //It needs to add empty space at the end to respond design conditions
        cityDataResult.recommendedTours.add(Tour(id: -1));
      }
      _cityData = cityDataResult;
      return _ContentLoaded();
    }));
  }

  Future<Map<String, String>> prepareToursPrices() async {
    var _kIds = <String>{};
    switch (Platform.operatingSystem) {
      case ios:
        _cityData?.recommendedTours.forEach((tour) => _kIds.add(tour.appleProductId.isNotEmpty ? tour.appleProductId : '0'));
        break;
      case android:
        _cityData?.recommendedTours.forEach((tour) => _kIds.add(tour.googleProductId.isNotEmpty ? tour.googleProductId : '0'));
        break;
      default:
        _kIds = {'0'};
    }

    final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    var products = response.productDetails;

    return products.asMap().map((key, product) => MapEntry(product.id, Currencies.convertCodeToSymbol(product)));
  }
}

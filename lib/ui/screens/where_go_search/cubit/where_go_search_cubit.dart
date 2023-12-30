import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/search_repository.dart';

part 'where_go_search_cubit.freezed.dart';

part 'where_go_search_state.dart';

@injectable
class WhereGoSearchCubit extends Cubit<WhereGoSearchState> {
  final SearchRepository _searchRepository;
  late String _contentLanguage;

  WhereGoSearchCubit(this._searchRepository) : super(_Loading());

  List<City>? _popularCities;
  List<City>? _nearbyCities;
  City? _result;

  List<City> get popularCities => _popularCities ?? [];

  List<City> get nearbyCities => _nearbyCities ?? [];

  City get result => _result!;

  Future<void> getCity(int cityId) async {
    emit(_Loading());
    _contentLanguage = await MLoc.getAppLanguage();
    (await _searchRepository.fetchCity(cityId)).fold(
      (error) {
        emit(_Error(error));
      },
      (searchResponse) {
        _result = searchResponse?.result;
        _nearbyCities = searchResponse?.citiesNearby ?? [];
        emit(_Result());
      },
    );
  }

  void checkLanguageChanging(String countryCode) async {
    var currentLanguage = await MLoc.getAppLanguage();
    if (currentLanguage != _contentLanguage) {
      initState(countryCode);
    }
  }

  Future<List<City>?> matchCities(String pattern) async {
    _contentLanguage = await MLoc.getAppLanguage();
    final result = await _searchRepository.matchCities(pattern);
    return result.fold(
      (error) {
        emit(_Error(error));
        return null;
      },
      (cities) => cities,
    );
  }

  void initState(String countryCode) async {
    emit(_Loading());
    _contentLanguage = await MLoc.getAppLanguage();
    final result = await _searchRepository.fetchPopularPlaces(countryCode);
    result.fold(
      (error) => emit(_Error(error)),
      (popPlaces) {
        _popularCities = popPlaces.cities;
        emit(_Initial());
      },
    );
  }
}

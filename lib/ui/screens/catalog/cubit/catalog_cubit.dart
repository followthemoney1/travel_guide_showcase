import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/country/country.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/catalog_repository.dart';

part 'catalog_cubit.freezed.dart';

part 'catalog_state.dart';

@injectable
class CatalogCubit extends Cubit<CatalogState> {
  final CatalogRepository _catalogRepository;

  CatalogCubit(this._catalogRepository) : super(_Loading());

  late String _contentLanguage;
  List<Country>? _countries;
  Country? _searchResult;

  List<Country> get countries => _countries ?? [];

  Country get searchResult => _searchResult ?? Country();

  void initCatalog() async {
    _contentLanguage = await MLoc.getAppLanguage();
    emit(_Loading());
    await _catalogRepository.fetchCountries().then(
          (value) => value.fold(
            (error) => emit(_Error(error)),
            (countries) {
              _countries = countries;
              emit(_Initial());
            },
          ),
        );
  }

  void checkLanguageChanging() async {
    var currentLanguage = await MLoc.getAppLanguage();
    if (currentLanguage != _contentLanguage) {
      initCatalog();
    }
  }

  Future<List<City>?> matchPattern(String pattern) async {
    final result = await _catalogRepository.matchCities(pattern);
    return result.fold(
      (error) {
        emit(_Error(error));
        return null;
      },
      (cities) => cities,
    );
  }

  Future<void> getCountry(int cityId) async {
    emit(_ResultLoading());
    (await _catalogRepository.fetchCountry(cityId.toString())).fold(
      (error) {
        emit(_Error(error));
      },
      (searchResult) {
        _searchResult = searchResult;
        emit(_Result());
      },
    );
  }
}

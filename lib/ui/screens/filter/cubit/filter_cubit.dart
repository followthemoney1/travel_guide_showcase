import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'dart:developer';
import 'package:either_option/either_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/filter_repository.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'filter_cubit.freezed.dart';

part 'filter_state.dart';

enum FilterType {
  toursByCityId,
  toursBySightId,
  toursByGuideId,
  sightsByCityId,
}

@singleton
class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _filterRepository;
  final SharedPreferences _sharedPreferences = locator<SharedPreferences>();
  // var _languagesSelected = <Language>{};
  final _categoriesSelected = <String, Set<FilterCategory>>{};
  List<FilterCategory> _categories = [];
  late SortOrder _sortBy;

  late FilterType type;
  String? identifier;
  List<LanguageCode>? _languages;

  bool _debounceOn = false;

  FilterCubit(
    this._filterRepository,
  ) : super(_Loading()) {
    _sortBy = sortOrders.first;
  }

  Future<void> initCubit() async {
    if (_debounceOn) return;
    emit(_Loading());
    Future<Either<ErrorResponse, dynamic>> either() async {
      switch (type) {
        case FilterType.toursByCityId:
          return _filterRepository.getToursCategoriesByCityId(identifier!);
        case FilterType.toursBySightId:
          return _filterRepository.getToursCategoriesBySightId(identifier!);
        case FilterType.toursByGuideId:
          return _filterRepository.getToursCategoriesByGuideId(identifier!);
        case FilterType.sightsByCityId:
          return _filterRepository.getSightsCategoriesBySightId(identifier!);
        default:
          return _filterRepository.getToursCategoriesByCityId(identifier!);
      }
    }

    final result = await either();

    result.fold(
      (err) => emit(_Error(err)),
      (resp) {
        log(resp.toString());
        _categories = resp?.filterCategories as List<FilterCategory>? ?? [];
        _languages = resp?.languageCodes as List<LanguageCode>? ?? [];
        emit(_Initial());
      },
    );
    _debounceOn = true;
    Future.delayed(
      Duration(seconds: 2),
      () => _debounceOn = false,
    );
  }

  Set<FilterCategory> get categoriesSelected => _categoriesSelected[identifier] ?? {};

  Set<Language> get languagesSelected => getLanguagesSelected();

  SortOrder get sortBy => _sortBy;

  List<FilterCategory> get categories => _categories;

  Set<Language> get languages =>
      _languages
          ?.map(
            (langCode) => Language(
              id: langCode.languageCode,
              name: FullLang.getFullName(
                langCode.languageCode,
                nativeName: true,
              ),
              flagPath: langCode.flag,
            ),
          )
          .toSet() ??
      {};

  Set<SortOrder> get sortOrders => _filterRepository.fetchSortOrders();

  SortOrder get currentOrder => _sortBy;

  SortOrder get sortOrder => _sortBy;

  Set<Language> getLanguagesSelected() {
    var languagesJson = _sharedPreferences.getStringList(languagesSelectedKey);
    return languagesJson?.map((language) => Language.fromJson(jsonDecode(language))).toSet() ?? {};
  }

  Future<void> setSelectedLanguages(Set<Language> languages) async {
    var languagesList = languages.map((language) => jsonEncode(language.toJson())).toList();
    await _sharedPreferences.setStringList(languagesSelectedKey, languagesList);
  }

  void toggleInfoPopupForCity(String id, bool state) async {
    await _sharedPreferences.setBool('$infoPopup$id', state);
  }

  bool checkInfoPopupState(String id) {
    return _sharedPreferences.getBool('$infoPopup$id') ?? true;
  }

  void add(value) async {
    if (value is Language) {
      var selected = getLanguagesSelected();
      selected.add(value);
      await setSelectedLanguages(selected);
    } else if (value is FilterCategory) {
      // _categoriesSelected.add(value);
      _categoriesSelected[identifier!] ??= _categoriesSelected[identifier!] = {};
      _categoriesSelected[identifier]!.add(value);
    }
  }

  void setSortOrder(SortOrder? value) {
    if (value == null) return;
    _sortBy = value;
  }

  void remove(value) async {
    if (value is Language) {
      var selected = getLanguagesSelected();
      selected.remove(value);
      await setSelectedLanguages(selected);
    } else if (value is FilterCategory) {
      _categoriesSelected[identifier]!.remove(value);
    }
  }

  void clearFilter() {
    //_languagesSelected.clear();
    _categoriesSelected.clear();
    _sortBy = sortOrders.first;
    emit(_Clear());
    emit(_Initial());
  }

  FilterDto getFilterDto() {
    var selected = getLanguagesSelected();
    return FilterDto(
      identifier: identifier,
      sortBy: _sortBy,
      languagesSelected: selected.isNotEmpty ? selected : languages,
      categoriesSelected: _categoriesSelected[identifier] ?? {},
    );
  }
}

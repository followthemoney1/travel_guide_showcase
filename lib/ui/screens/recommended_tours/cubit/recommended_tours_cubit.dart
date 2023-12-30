import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/en_string.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/city_repository.dart';
import 'package:mapo_travel_guide/repository/filter_repository.dart';
import 'package:mapo_travel_guide/repository/main_repository.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'dart:developer';

part 'recommended_tours_cubit.freezed.dart';

part 'recommended_tours_state.dart';

@lazySingleton
class RecommendedToursCubit extends Cubit<RecommendedToursState> {
  final CityRepository _cityRepository;
  final FilterRepository _filterRepository;
  final MainRepository _mainRepo;
  final FilterCubit _filterCubit;
  bool _hadSameData = false;

  late List<Tour> tours;

  RecommendedToursCubit(
    this._cityRepository,
    this._filterRepository,
    this._mainRepo,
    this._filterCubit,
  ) : super(_Loading());

  late int _cityId;

  set cityId(int cityId) {
    _cityId = cityId;
    checkIfHadSameData(cityId);
    initContent();
  }

  void initContent() {
    emit(_Loading());
    _getTours();
  }

  void checkIfHadSameData(int cityId) {
    _hadSameData = cityId == _cityId;
  }

  String get identifier {
    var type = '';
    var identifier = '';
    type = FilterType.toursByCityId.toString();
    identifier = _cityId.toString();
    return '$type$identifier';
  }

  void provideInfo() async {
    var mId = _cityId.toString();
    var mType = FilterType.toursByCityId;

    _filterCubit.type = mType;
    _filterCubit.identifier = mId;
    await _filterCubit.initCubit();
    var languagesFromFllter = _filterCubit.languages;
    var languagesSelectedLocal = _filterCubit.languagesSelected;

    var intersection = languagesSelectedLocal.intersection(languagesFromFllter);
    var difference = languagesSelectedLocal.difference(intersection);

    if (intersection.isEmpty) {
      _hadSameData = false;
      var filterForDefaultSort = FilterDto(
        languagesSelected: languagesFromFllter,
        categoriesSelected: {
          FilterCategory(
            id: 0,
            name: MLoc.allString(await MLoc.getAppLanguage()),
          )
        },
        sortBy: SortOrder(name: defaultSort),
      );
      await Future.delayed(Duration(milliseconds: 500));
      await applyFilter(filterForDefaultSort);
    }
    showInfoDialog(languagesSelectedLocal, intersection, difference);
  }

  Future<void> _getTours() async {
    log('_getTours() cityId: $_cityId');
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

    final either = await _cityRepository.getRecommendedTours(
      _cityId,
      languagesParameter,
    );
    emit(
      either.fold(
        (err) => _Error(err),
        (response) {
          tours = response.recommendedTours;
          checkForEmptiness();
          provideInfo();
          return _Initial(response.recommendedTours);
        },
      ),
    );
  }

  void checkForEmptiness() async {
    if (tours.isEmpty) {
      var filterForDefaultSort = FilterDto(
        languagesSelected: {},
        categoriesSelected: {
          FilterCategory(
            id: 0,
            name: MLoc.allString(await MLoc.getAppLanguage()),
          )
        },
        sortBy: SortOrder(name: defaultSort),
      );
      await Future.delayed(Duration(milliseconds: 500));
      await applyFilter(filterForDefaultSort);
    }
  }

  void showInfoDialog(
    Set<Language> selectedByUser,
    Set<Language> intersection,
    Set<Language> difference,
  ) {
    var popupState = _filterCubit.checkInfoPopupState(identifier);
    if (popupState && !_hadSameData) {
      emit(
        _ShowInfoDialog(
          selectedByUser,
          intersection,
          difference,
        ),
      );
    }
  }

  Future<void> applyFilter(FilterDto filter) async {
    emit(_Loading());
    await _filterCubit.initCubit();
    var languagesFromFllter = _filterCubit.languages;
    if (filter.languagesSelected.isEmpty || !filter.languagesSelected.containsAll(languagesFromFllter)) {
      var response = await _mainRepo.getAllLanguages();
      filter.languagesSelected = response.fold(
        (e) => {Language(id: 'en', name: '', flagPath: '')},
        (resp) => resp.languageCodes
            .map(
              (langCode) => Language(id: langCode.languageCode, name: '', flagPath: ''),
            )
            .toSet(),
      );
    }

    final either = await _filterRepository.applyFilterForToursWithCityId(_cityId, filter);
    either.fold((err) => _Error(err), (res) {
      tours = res;
      checkForEmptiness();
      emit(_Initial(res));
    });
  }

  Future<Map<String, String>> prepareToursPrices() async {
    var _kIds = <String>{};
    if (Platform.isIOS) {
      tours.forEach((tour) => _kIds.add(tour.appleProductId));
    } else {
      tours.forEach((tour) => _kIds.add(tour.googleProductId));
    }

    final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    var products = response.productDetails;

    return products.asMap().map(
          (key, product) => MapEntry(
            product.id,
            Currencies.convertCodeToSymbol(product),
          ),
        );
  }
}

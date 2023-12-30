import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/en_string.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/city_repository.dart';
import 'package:mapo_travel_guide/repository/filter_repository.dart';
import 'package:mapo_travel_guide/repository/main_repository.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/currencies.dart';

part 'tour_list_cubit.freezed.dart';

part 'tour_list_state.dart';

@injectable
class TourListCubit extends Cubit<TourListState> {
  final CityRepository _cityRepository;
  final FilterRepository _filterRepository;
  final MainRepository _mainRepository;
  final FilterCubit _filterCubit;
  // BaseNavigatorManager baseNavMan = locator<BaseNavigatorManager>();
  //String _isInfoDialogShowingInCity = '';
  // int currentScreen;

  TourListCubit(
    this._cityRepository,
    this._filterRepository,
    this._mainRepository,
    this._filterCubit,
  ) : super(_Loading());

  ///If -1 category is 'All'
  String? _categoryId;
  City? _city;
  Sight? _sight;
  Guide? _guide;
  List<Tour>? _tours;
  List<String>? _tourTypesNames;
  Map<String, String> prices = {};
  //bool hadSameData = false;

  String get typesString => _tourTypesNames!.join(', ');

  void initContent({
    required City city,
    Sight? sight,
    Guide? guide,
    required String categoryId,
  }) {
    // if (currentScreen == null || currentScreen != baseNavMan.selectedMenuItem) {
    //   currentScreen = baseNavMan.selectedMenuItem;
    // } else {
    //   return;
    // }
    checkIfHadSameData(city, sight, guide);
    _city = city;
    _sight = sight;
    _guide = guide;
    _categoryId = categoryId;
    getTours();
  }

  void checkIfHadSameData(
    City? city,
    Sight? sight,
    Guide? guide,
  ) {
    // hadSameData = city != null
    //     ? _city?.id == city?.id
    //     : guide != null
    //         ? _guide?.id == guide?.id
    //         : sight != null
    //             ? _sight?.id == sight?.id
    //             : false;
  }

  Future<void> getTours() async {
    emit(_Loading());
    final either = await _cityRepository.getToursByCategory(
      _city?.id,
      _sight?.id,
      _guide?.id,
      _categoryId,
    );
    either.fold(
      (err) => emit(_Error(err)),
      (tours) async {
        _tourTypesNames = [tours.typeName];
        _tours = tours.tours;
        prices = await Currencies.prepareToursPrices(_tours!);
      },
    );
    await provideInfo();
  }

  String get identifier {
    var type = '';
    var identifier = '';
    if (_city != null) {
      type = FilterType.toursByCityId.toString();
      identifier = _city!.id.toString();
    } else if (_sight != null) {
      type = FilterType.toursBySightId.toString();
      identifier = _sight!.id.toString();
    } else if (_guide != null) {
      type = FilterType.toursByGuideId.toString();
      identifier = _guide!.id.toString();
    }
    return '$type$identifier';
  }

  Future<void> provideInfo() async {
    await initFilterCubit();
    var languagesFromFllter = _filterCubit.languages;
    var languagesSelectedLocal = _filterCubit.languagesSelected;

    var intersection = languagesSelectedLocal.intersection(languagesFromFllter);
    var difference = languagesSelectedLocal.difference(intersection);

    if (intersection.isEmpty) {
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
    } else {
      var filterDto = _filterCubit.getFilterDto();
      filterDto.languagesSelected = intersection;
      await applyFilter(filterDto);
    }
    showInfoDialog(languagesSelectedLocal, intersection, difference);
  }

  void showInfoDialog(
    Set<Language> selectedByUser,
    Set<Language> intersection,
    Set<Language> difference,
  ) {
    // _isInfoDialogShowingInCity = _city.id.toString();
    var popupState = _filterCubit.checkInfoPopupState(identifier);
    if (popupState /*  && !hadSameData */) {
      emit(
        _ShowInfoDialog(
          selectedByUser,
          intersection,
          difference,
        ),
      );
    }
  }

  Future<void> initFilterCubit() async {
    var mId;
    var mType;
    if (_city != null) {
      mType = FilterType.toursByCityId;
      mId = _city!.id.toString();
    } else if (_sight != null) {
      mType = FilterType.toursBySightId;
      mId = _sight!.id.toString();
    } else if (_guide != null) {
      mType = FilterType.toursByGuideId;
      mId = _guide!.id.toString();
    }
    _filterCubit.type = mType;
    _filterCubit.identifier = mId;
    await _filterCubit.initCubit();
  }

  Future<void> applyFilter(FilterDto filter) async {
    emit(_Loading());
    await initFilterCubit();
    // var languagesFromFllter = _filterCubit.languages;
    if (filter.languagesSelected.isEmpty /* || !languagesFromFllter.containsAll(filter.languagesSelected) */) {
      var response = await _mainRepository.getAllLanguages();
      filter.languagesSelected = response.fold(
        (e) => {Language(id: 'en', name: '', flagPath: '')},
        (resp) => resp.languageCodes
            .map(
              (langCode) => Language(id: langCode.languageCode, name: '', flagPath: ''),
            )
            .toSet(),
      );
    }

    final either = _city != null
        ? await _filterRepository.applyFilterForToursWithCityId(_city!.id!, filter)
        : _sight != null
            ? await _filterRepository.applyFilterForToursWithSightId(_sight!.id, filter)
            : await _filterRepository.applyFilterForToursWithGuideId(_guide!.id, filter);
    _tourTypesNames = filter.categoriesSelected.map((e) => e.name).toList();
    either.fold(
      (err) => emit(_Error(err)),
      (res) => emit(_Initial(res)),
    );
  }

  Future<void> hideInfo() async {
    emit(TourListState.hideInfoDialog());
  }
}

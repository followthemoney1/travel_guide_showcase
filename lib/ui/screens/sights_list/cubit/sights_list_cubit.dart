import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/en_string.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/filter_repository.dart';
import 'package:mapo_travel_guide/repository/sight_repository.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:meta/meta.dart';

part 'sights_list_cubit.freezed.dart';

part 'sights_list_state.dart';

@injectable
class SightsListCubit extends Cubit<SightsListState> {
  final SightRepository _sightRepository;
  final FilterRepository _filterRepository;
  final FilterCubit _filterCubit;

  SightsListCubit(
    this._sightRepository,
    this._filterRepository,
    this._filterCubit,
  ) : super(_Initial());

  Future<void> initialization({required int cityId}) async {
    emit(_Loading());
    var response = await _sightRepository.getSightsList(cityId: cityId);
    response.fold((error) => emit(_Error(error)), (result) {
      if (_filterCubit.languagesSelected.isEmpty) {
        emit(_Loaded(result.sightsList));
      }
    });

    await initFilterCubit(cityId);
  }

  Future<void> initFilterCubit(int cityId) async {
    _filterCubit.type = FilterType.toursByCityId;
    _filterCubit.identifier = cityId.toString();
    await _filterCubit.initCubit();
    var languagesFromFllter = _filterCubit.languages;
    var languagesSelectedLocal = _filterCubit.languagesSelected;

    var intersection = languagesSelectedLocal.intersection(languagesFromFllter);

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
      await Future.delayed(Duration(milliseconds: 300));
      await applyFilter(cityId, filterForDefaultSort);
    } else {
      var filterDto = _filterCubit.getFilterDto();
      filterDto.languagesSelected = intersection;
      await applyFilter(cityId, filterDto);
    }
  }

  Future<void> applyFilter(int id, FilterDto filter) async {
    emit(_Loading());
    var response = await _filterRepository.applySightFilter(
      id.toString(),
      filter.sortBy,
      filter.categoriesSelected,
      filter.languagesSelected,
    );
    response.fold((error) => emit(_Error(error)), (result) => emit(_Loaded(result.sightsList)));
  }
}

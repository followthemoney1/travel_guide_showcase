import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/city_repository.dart';

part 'city_guides_state.dart';
part 'city_guides_cubit.freezed.dart';

@lazySingleton
class CityGuidesCubit extends Cubit<CityGuidesState> {
  final CityRepository _cityRepository;
  CityGuidesCubit(this._cityRepository) : super(_Loading());
  late int _cityId;

  set cityId(int cityId) {
    _cityId = cityId;
    _initContent();
  }

  void _initContent() {
    emit(_Loading());
    _getGuides();
  }

  Future<void> _getGuides() async {
    final either = await _cityRepository.getGuides(_cityId);
    either.fold(
      (err) => emit(_Error(err)),
      (resp) => emit(_Initial(resp.guides)),
    );
  }
}

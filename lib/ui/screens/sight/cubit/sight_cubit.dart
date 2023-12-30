import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/sight_response.dart';
import 'package:mapo_travel_guide/repository/sight_repository.dart';

part 'sight_state.dart';
part 'sight_cubit.freezed.dart';

@lazySingleton
class SightCubit extends Cubit<SightState> {
  final SightRepository _sightRepository;
  SightCubit(this._sightRepository) : super(_Loading());
  late int _sightId;
  late SightResponse _sightResponse;
  Map<String, String> prices = {};

  String get sightName => _sightResponse.name;
  String get sightImageUrl => _sightResponse.imageUrl.first;
  String get sightDescription => _sightResponse.description;
  List<Tour> get recommendedTours => _sightResponse.recommendedTours;

  set sightId(int sightId) {
    _sightId = sightId;
    _initContent();
  }

  int get sightId => _sightId;

  void _initContent() {
    emit(_Loading());
    _getSightData();
  }

  void _getSightData() async {
    final result = await _sightRepository.getSightData(_sightId.toString());
    result.fold(
      (err) => emit(_Error(err)),
      (sightDataResult) {
        _sightResponse = sightDataResult;
        
        emit(_Loaded());
      },
    );
  }
}

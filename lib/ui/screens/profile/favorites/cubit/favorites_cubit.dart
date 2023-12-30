import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:meta/meta.dart';

part 'favorites_cubit.freezed.dart';

part 'favorites_state.dart';

@lazySingleton
class FavoritesCubit extends Cubit<FavoritesState> {
  final ProfileRepository _profileRepository;

  FavoritesCubit(this._profileRepository) : super(FavoritesState.initial()) {
    initialization();
  }

  List<Tour>? _tours;
  Map<String, String> prices = {};

  Future<void> initialization() async {
    emit(_FavoritesLoading());
    var response = await _profileRepository.getFavoritesList();
    response.fold((error) => emit(_FavoritesError(error)), (result) => _tours = result.favoriteTours);

    prices = await Currencies.prepareToursPrices(_tours!);
    emit(_Loaded(_tours!));
  }
}

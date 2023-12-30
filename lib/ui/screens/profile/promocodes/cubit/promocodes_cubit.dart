import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapo_travel_guide/util/currencies.dart';

part 'promocodes_state.dart';
part 'promocodes_cubit.freezed.dart';

@lazySingleton
class PromocodesCubit extends Cubit<PromocodesState> {
  final ProfileRepository _profileRepository;

  PromocodesCubit(this._profileRepository) : super(_Initial()){
    initialization();
  }

  List<Tour>? _tours;
  Map<String, String> prices = {};

  Future<void> initialization() async {
    emit(_PromocodesLoading());
    var response = await _profileRepository.getPromocodes();
    response.fold((error) => emit(_PromocodesError(error)), (result) => _tours = result.promoTours);

    prices = await Currencies.prepareToursPrices(_tours!);
    emit(_PromocodesLoaded(_tours!));
  }
}
import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/network/guide_api.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/guide.dart';

@singleton
class GuideRepository {
  final GuideApi _api;
  final HiveBoxConfigurator<Guide> _guideResponseBox;

  GuideRepository(this._api, this._guideResponseBox);

  Future<Either<ErrorResponse, Guide>> getGuideData(String guideId) async {
    var appLanguage = await MLoc.getAppLanguage();
    final result = await _api.getGuideData(guideId, appLanguage);
    return result.fold(
      (err) {
        var guide = _guideResponseBox.get(guideId);
        if (guide == null) return Left(err);
        return Right(guide);
      },
      (resp) {
        _guideResponseBox.put(guideId, resp);
        return Right(resp);
      },
    );
  }

  Future<Either<ErrorResponse, UpdateRateResponse>> updateGuideRate(String guideId, double rate) async {
    final updateGuideRate = await _api.updateGuideRate(guideId, rate);
    updateGuideRate.fold(
      (err) {},
      (resp) {
        var guide = _guideResponseBox.get(guideId);
        _guideResponseBox.put(guideId, guide!.copyWith.call(averageRate: resp.averageRate));
      },
    );
    return updateGuideRate;
  }
}

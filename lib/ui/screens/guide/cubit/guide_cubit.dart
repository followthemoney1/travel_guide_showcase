import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/guide_repository.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/in_app_review_service.dart';
import 'package:mapo_travel_guide/util/branch_link_provider.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';
import 'package:meta/meta.dart';
import 'package:share/share.dart';

part 'guide_state.dart';

part 'guide_cubit.freezed.dart';

@injectable
class GuideCubit extends Cubit<GuideState> {
  final GuideRepository _guideRepository = locator<GuideRepository>();
  final InAppReviewService _appReviewService;
  late String _guideId;
  double? _averageRate;
  late String cityName;
  Guide? guide;
  Map<String, String> prices = {};
  BranchLinkProvider _branchLinkProvider;

  GuideCubit(this._appReviewService, this._branchLinkProvider) : super(_GuideLoading());

  List<Achievement> get achievements => guide!.achievements;

  List<Tour> get tours => guide!.tours;

  set guideId(String gId) {
    _guideId = gId;
    getGuideData(gId);
  }

  double get averageRate => _averageRate ?? guide!.averageRate;

  Future<void> updateRate(double rate) async {
    emit(_GuideLoading());
    final result = await _guideRepository.updateGuideRate(_guideId, rate);
    emit(result.fold((err) => _Error(err), (resp) {
      _averageRate = resp.averageRate;
      if (rate > 3) {
        _appReviewService.showAppReviewDialog();
      }
      return _GuideInitial();
    }));
  }

  Future<void> shareGuide() async {
    emit(_GuideLoading());
    var generatedDeepLinkForAGuide = await _branchLinkProvider.generateDeepLinkForAGuide(
      guide!.id,
      cityName,
      guideName: guide!.name,
      imageUrl: guide!.imageUrl,
      guideDescription: guide!.description,
    );
    await FBEvents.instance.logEvent(
      name: 'Share guide',
      parameters: {
        'guideId': guide!.id,
        'guide name': guide!.name,
        'city name': cityName,
      },
    );
    await locator<AppsflyerSdk>().logEvent('Share guide', {
      'guideId': guide!.id,
      'guide name': guide!.name,
      'city name': cityName,
    });
    emit(_GuideInitial());
    await Share.share(generatedDeepLinkForAGuide);
  }

  Future<void> getGuideData(String guideId) async {
    final result = await _guideRepository.getGuideData(_guideId);
    result.fold(
      (err) => emit(_Error(err)),
      (guideRes) async {
        guide = guideRes;
        guide!.achievements.insert(0, Achievement(imageUrl: '-1', text: '-1'));
        guide!.achievements.add(Achievement(imageUrl: '-1', text: '-1'));
        guide!.achievements.add(Achievement(imageUrl: '-1', text: '-1'));
        _averageRate = guide!.averageRate;

        await FBEvents.instance.logEvent(
          name: 'Get guide data',
          parameters: {
            'guideId': guide!.id,
            'guide name': guide!.name,
          },
        );
        await locator<AppsflyerSdk>().logEvent('Get guide data', {
          'guideId': guide!.id,
          'guide name': guide!.name,
        });
        prices = await Currencies.prepareToursPrices(guide!.tours);
        emit(_GuideInitial());
      },
    );
  }
}

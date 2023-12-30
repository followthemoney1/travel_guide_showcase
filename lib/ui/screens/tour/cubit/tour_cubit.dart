import 'dart:async';
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/repository/download_repository.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/in_app_review_service.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:mapo_travel_guide/util/branch_link_provider.dart';
import 'package:mapo_travel_guide/util/facebook_events.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import '../../../../data/network/models/error_response.dart';
import '../../../../injection/injection.dart';
import '../../../../repository/tour_repository.dart';

part 'tour_cubit.freezed.dart';

part 'tour_state.dart';

enum PlayStatus { nothingToPlay, ok, moreThanOne, downloading }

@injectable
class TourCubit extends Cubit<TourState> {
  final BranchLinkProvider _dynamicLinkProvider;
  final InAppReviewService _appReviewService;
  final TourRepository _tourRepository = locator<TourRepository>();
  final DownloadRepository _downloadRepository = locator<DownloadRepository>();
  bool userNotEmpty = locator<HiveBoxConfigurator<User>>().isNotEmpty;
  late Tour tour;
  String price = '';
  late String _tourId;
  double? _averageRate;
  late String oneLanguage;
  String? _contentLanguage;
  int _activatedTourTimeRemains = 0;
  late bool isFavoriteTour;
  Map<String, int> _progress = {};

  TourCubit(this._appReviewService, this._dynamicLinkProvider) : super(_TourLoading());

  void setTourId(String tId) async {
    _tourId = tId;
    await _getTourData(tId);
    await _calculatePrice();
    listenProgress();
  }

  int get timeForTourRemains {
    return tour.timeForTourRemains ?? _activatedTourTimeRemains;
  }

  List<Sight> get sights => tour.sights;

  List<String> get images => tour.imageUrl;

  String get stopsAmount => tour.stopsAmount.toString();

  double get averageRate => _averageRate ?? tour.averageRate;

  bool get isInFavorites => tour.inFavorites;

  Future<bool> isStillLoading() {
    return _downloadRepository.hasUncompletedDownloads();
  }

  Future<void> updateRate(double rate) async {
    emit(_TourLoading());
    final result = await _tourRepository.updateTourRate(_tourId, rate);
    emit(result.fold((err) => _Error(err), (resp) {
      _averageRate = resp.averageRate;
      FBEvents.instance.logRated(
        valueToSum: rate,
      );
      FBEvents.instance.logEvent(
        name: 'Tour rated',
        parameters: {
          'tourId': tour.id,
          'tour name': tour.name,
          'user rated': rate,
          'totalRate': _averageRate,
        },
      );
      locator<AppsflyerSdk>().logEvent('Tour rated', {
        'tourId': tour.id,
        'tour name': tour.name,
        'user rated': rate,
        'totalRate': _averageRate,
      });
      if (rate > 3) {
        _appReviewService.showAppReviewDialog();
      }
      return _TourInitial();
    }));
  }

  void refreshData() {
    _getTourData(_tourId);
  }

  void checkLanguageChanging() async {
    var currentLanguage = await MLoc.getAppLanguage();
    if (currentLanguage != _contentLanguage) {
      await _getTourData(_tourId);
    }
  }

  void activateTour() async {
    //emit(_TourLoading());
    final result = await _tourRepository.activateTour(_tourId);
    emit(result.fold(
      (err) => _Error(err),
      (response) {
        _activatedTourTimeRemains = response.timeForTourRemains;
        return _TourActivated();
      },
    ));
  }

  Future<void> _getTourData(String tId) async {
    emit(_TourLoading());
    _contentLanguage = await MLoc.getAppLanguage();
    final result = await _tourRepository.getTourData(tId);
    emit(result.fold(
      (err) => _Error(err),
      (tourRes) {
        tour = tourRes;
        FBEvents.instance.logEvent(
          name: 'Tour opened',
          parameters: {
            'tourId': tour.id,
            'tour name': tour.name,
          },
        );
        locator<AppsflyerSdk>().logEvent('Tour opened', {
          'tourId': tour.id,
          'tour name': tour.name,
        });
        isFavoriteTour = tour.inFavorites;
        // tour = tour.copyWith.call(paid: false);
        _clearTourCacheIfExists();
        return _TourInitial();
      },
    ));
  }

  Future<void> shareLink() async {
    emit(_TourLoading());
    await FBEvents.instance.logEvent(
      name: 'Tour shared',
      parameters: {
        'tourId': tour.id,
        'tour name': tour.name,
      },
    );
    await locator<AppsflyerSdk>().logEvent('Tour shared', {
      'tourId': tour.id,
      'tour name': tour.name,
    });
    var dynamicLink = await _dynamicLinkProvider.generateDeepLinkForATour(
      tour.id!,
      tourName: tour.name,
      tourDescription: tour.description,
      imageUrl: tour.imageUrl[0],
    );
    emit(_TourInitial());
    await Share.share(dynamicLink.toString());
  }

  Future<void> _clearTourCacheIfExists() async {
    if (tour.paid == false) {
      try {
        final appDir = await getApplicationDocumentsDirectory();
        var path = '${appDir.path}/$_tourId';
        var exists = await Directory(path).exists();
        if (exists) {
          await Directory(path).delete(recursive: true);
        }
      } catch (e) {
        e.toString();
      }
    }
  }

  Future<void> updateTourFavoritesState() async {
    emit(_TourLoading());
    isFavoriteTour = !isFavoriteTour;
    tour = tour.copyWith.call(inFavorites: isFavoriteTour);
    emit(_TourInitial());
    if (isFavoriteTour) {
      await FBEvents.instance.logEvent(
        name: 'Added to favorites',
        parameters: {
          'tourId': tour.id,
          'tour name': tour.name,
        },
      );
      await locator<AppsflyerSdk>().logEvent('Added to favorites', {
        'tourId': tour.id,
        'tour name': tour.name,
      });
    }
    final result = await _tourRepository.updateTourFavoritesState(_tourId, isFavoriteTour);
    emit(result.fold((err) => _Error(err), (res) {
      //it needs to avoid loading
      emit(_TourLoading());
      return _TourInitial();
    }));
  }

  Future<PlayStatus> checkOpeningPossibility() async {
    var directoryList = await _getTourDirectory();
    if (directoryList != null) {
      switch (directoryList.length) {
        case 0:
          return PlayStatus.nothingToPlay;
        case 1:
          final hasUncompletedDownloads = await _downloadRepository.hasUncompletedDownloads();
          if (_downloadRepository.allDownloads.isEmpty || !hasUncompletedDownloads) {
            var list = await getDownloadedLanguages();
            oneLanguage = list.first;
            return PlayStatus.ok;
          } else {
            return PlayStatus.downloading;
          }
          break;
        default:
          return _getDefaultStatus(directoryList);
      }
    } else {
      return PlayStatus.nothingToPlay;
    }
  }

  Future<List<String>> getDownloadedLanguages() async {
    var directoryList = await _getTourDirectory();
    return directoryList!.map((directory) => directory.path.split('/').last).toList();
  }

  PlayStatus _getDefaultStatus(List<FileSystemEntity> directoryList) {
    if (_downloadRepository.allDownloads.isEmpty) {
      return PlayStatus.moreThanOne;
    } else {
      var languagesInDownload = <String>[];
      _downloadRepository.allDownloads.forEach((element) {
        if (!languagesInDownload.contains(element.languageName)) {
          languagesInDownload.add(element.languageName);
        }
      });
      switch (directoryList.length - languagesInDownload.length) {
        case 0:
          return PlayStatus.nothingToPlay;
        case 1:
          return PlayStatus.ok;
        default:
          return PlayStatus.moreThanOne;
      }
    }
  }

  Future<List<FileSystemEntity>?> _getTourDirectory() async {
    final appDir = await getApplicationDocumentsDirectory();
    var isExist = await Directory('${appDir.path}/$_tourId').exists();
    if (isExist) {
      return Directory('${appDir.path}/$_tourId').listSync();
    } else {
      return null;
    }
  }

  void listenProgress() {
    _downloadRepository.downloadProgressController.stream.listen(
      (progressPair) {
        MapoLog.log.v('listen progress = ${progressPair}');
        _progress[progressPair.first] = progressPair.second;
        emit(_TourLoading());
        emit(_UpdateProgress(_progress));
      },
    );
  }

  void listenDownloading() {
    _downloadRepository.downloadController.stream.listen((event) {
      if (event) {
        _downloadRepository.downloadController.close();
        emit(_TourLoading());
        emit(_TourDownloaded());
      }
    });
  }

  Future<void> _calculatePrice() async {
    Set<String> _kIds;
    switch (Platform.operatingSystem) {
      case ios:
        _kIds = {tour.appleProductId};
        break;
      case android:
        _kIds = {tour.googleProductId};
        break;
      default:
        _kIds = {'0'};
    }

    final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    if (response.notFoundIDs.isNotEmpty) {
      price = 'Unwn';
      return;
    }

    var products = response.productDetails;
    price = Currencies.convertCodeToSymbol(products.first);
    emit(_TourLoading());
    emit(_TourInitial());
  }
}

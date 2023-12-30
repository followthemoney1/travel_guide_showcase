import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/download_info/tour_language_info.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/download_repository.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:mapo_travel_guide/util/pair.dart';
import 'package:path_provider/path_provider.dart';

part 'download_cubit.freezed.dart';

part 'download_state.dart';

@injectable
class DownloadCubit extends Cubit<DownloadState> {
  final DownloadRepository _downloadRepository;
  late String _tourId;
  final Map<TourLanguageInfo, bool> _tourLanguagesMap = {};

  DownloadCubit(this._downloadRepository) : super(_Initial());

  Map<TourLanguageInfo, bool> get tourLanguagesMap => _tourLanguagesMap;

  set tourId(String tourId) {
    _tourId = tourId;
    _listenDownloadingProcess();
    _initialization();
  }

  Future<void> _initialization() async {
    emit(_Loading());
    var response = await _downloadRepository.getDownloadInfo(id: _tourId);
    response.fold((error) => emit(_Error(error)), (result) async {
      for (var element in result.tourLanguages) {
        var directory = await getTourDirectory(element);
        var isDirectoryExist = await Directory(directory).exists();
        _tourLanguagesMap[element] = isDirectoryExist;
      }
      emit(_LoadedLanguages(_tourLanguagesMap));
    });
  }

  // static void _downloadingCallback(id, status, progress) {
  //   var sendPort = IsolateNameServer.lookupPortByName('$downloadingPort');
  //   sendPort.send([id, status, progress]);
  // }

  void _listenDownloadingProcess() {
    MapoLog.log.d('started method listenDownloadingProcess');
    _downloadRepository.createStreams();
    IsolateNameServer.registerPortWithName(
      _downloadRepository.receivePort.sendPort,
      '$downloadingPort',
    );

    _downloadRepository.receivePort.listen((message) {
      MapoLog.log.v('downloadRepository.receivePort.listen message = $message');
      _downloadRepository.downloadProgressController.add(Pair(message[0], message[2]));
      _downloadRepository.allDownloads.forEach((element) {
        if (element.taskId == message[0]) {
          MapoLog.log.v('task with id: ${message[0]} progress updated, progress = ${message[2]}');
          element.status = message[1];
          element.progress = message[2];
        }
      });
      if (message[1] == DownloadTaskStatus.complete) {
        MapoLog.log.v('task with id: ${message[0]} has been completed');
        _downloadRepository.allDownloads.removeWhere((element) => element.taskId == message[0]);
        if (_downloadRepository.allDownloads.isEmpty) {
          MapoLog.log.v('download comleted');
          _downloadRepository.downloadController.add(true);
          _downloadRepository.receivePort.close();
          IsolateNameServer.removePortNameMapping('$downloadingPort');
        }
      }
    });
    FlutterDownloader.registerCallback(DownloadRepository.downloadingCallback);
  }

  Future<void> downloadTour(TourLanguageInfo languageInfo) async {
    MapoLog.log.d('Started donloading tour id: $_tourId');
    var path = await getTourDirectory(languageInfo);
    await Directory(path).create(recursive: true);
    languageInfo.url.forEach((element) async {
      MapoLog.log.v('Enqueue loading: $element');
      var taskId = await FlutterDownloader.enqueue(
        url: element,
        savedDir: path,
        openFileFromNotification: false,
      );
      _downloadRepository.allDownloads.add(
        DownloadInfo(
          taskId: taskId!,
          languageName: languageInfo.language,
        ),
      );
    });
    // _downloadRepository.receivePort.listen((message) {
    //   _downloadRepository.allDownloads.forEach((element) {
    //     if (element.taskId == message[0]) {
    //       element.status = message[1];
    //       element.progress = message[2];
    //     }
    //   });
    //   if (message[1] == DownloadTaskStatus.complete) {
    //     _downloadRepository.allDownloads.removeWhere((element) => element.taskId == message[0]);
    //     if (_downloadRepository.allDownloads.isEmpty) {
    //       _downloadRepository.downloadController.add(true);
    //       _downloadRepository.receivePort.close();
    //       IsolateNameServer.removePortNameMapping(downloadingPort);
    //     }
    //   }
    // });
  }

  Future<String> getTourDirectory(TourLanguageInfo languageInfo) async {
    final appDir = await getApplicationDocumentsDirectory();
    return '${appDir.path}/$_tourId/${languageInfo.language}';
  }

  Future<void> removeAudioTour(TourLanguageInfo tourLanguageInfo) async {
    var path = await getTourDirectory(tourLanguageInfo);
    await Directory(path).delete(recursive: true);
  }
}

import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:either_option/either_option.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/network/download_api_client.dart';
import 'package:mapo_travel_guide/data/network/models/download_tour_response.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:mapo_travel_guide/util/pair.dart';

@singleton
class DownloadRepository {
  final DownloadApiClient _api;
  final HiveBoxConfigurator<DownloadTourResponse> _downloadTourResponseBoxManager;
  late ReceivePort _receivePort;
  List<DownloadInfo> allDownloads = [];
  late StreamController<bool> _downloadController;
  StreamController<Pair<String, int>> _downloadProgressController = StreamController<Pair<String, int>>.broadcast();

  DownloadRepository(this._api, this._downloadTourResponseBoxManager);

  ReceivePort get receivePort => _receivePort;

  StreamController<bool> get downloadController => _downloadController;
  StreamController<Pair<String, int>> get downloadProgressController => _downloadProgressController;

  static void downloadingCallback(id, status, progress) {
    var sendPort = IsolateNameServer.lookupPortByName(downloadingPort);
    sendPort!.send([id, status, progress]);
  }

  void checkForDownloadProblems() async {
    MapoLog.log.d('checkForDownloadProblems');
    final tasks = await FlutterDownloader.loadTasks();
    MapoLog.log.d(tasks.toString());
    tasks?.forEach(
      (task) {
        if (task.status == DownloadTaskStatus.canceled || task.status == DownloadTaskStatus.failed /* || task.status == DownloadTaskStatus.undefined */) {
          MapoLog.log.v('Task downloading retry ${task.status.toString()}');
          FlutterDownloader.retry(taskId: task.taskId);
        }
      },
    );
  }

  Future<bool> hasUncompletedDownloads() async {
    final tasks = await FlutterDownloader.loadTasks();
    var result = tasks!.where((task) => task.status == DownloadTaskStatus.running).isNotEmpty;
    MapoLog.log.d('hasUncompletedDownloads = $result');
    return result;
  }

  Future<Either<ErrorResponse, DownloadTourResponse>> getDownloadInfo({required String id}) async {
    final response = await _api.getDownloadInfo(id: id);
    return response.fold((error) {
      var downloadTourResponse = _downloadTourResponseBoxManager.get(0);
      if (downloadTourResponse != null) {
        return Right(downloadTourResponse);
      }
      return Left(error);
    }, (result) {
      _downloadTourResponseBoxManager.put(0, result);
      return Right(result);
    });
  }

  void createStreams() {
    MapoLog.log.v('createStreams');
    _receivePort = ReceivePort();
    _downloadController = StreamController<bool>.broadcast();
  }
}

class DownloadInfo {
  String taskId;
  String languageName;
  DownloadTaskStatus? status;
  int? progress;

  DownloadInfo({required this.taskId, required this.languageName, this.status, this.progress});

  @override
  String toString() {
    return 'DownloadInfo{taskId: $taskId, languageName: $languageName, status: $status, progress: $progress}';
  }
}

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/sight_route_item.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/map_repository.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:path_provider/path_provider.dart';

import '../../../theme.dart';

part 'tour_map_cubit.freezed.dart';
part 'tour_map_state.dart';

const distanceForSightSwitching = .05; // in kilometers

@singleton
class TourMapCubit extends Cubit<TourMapState> {
  final MapRepository _mapRepository;

  TourMapCubit(this._mapRepository) : super(_Loading());

  // Init variables & properties
  late String _tourId;

  late Duration _tourAccess;

  late int _tourActivating;

  Timer? _accessTimer;

  var _appDir;

  final Map<int, AssetsAudioPlayer> _audioPlayers = {};

  final Map<int, List<Audio>> _playlists = {};

  List<SightRouteItem>? _sights;

  var _currentSightIndex = 0;

  late Set<Polyline> _polylines;

  late List<LatLng> _points;

  late Position _currentPosition;

  late Set<Marker> _sightMarkers;

  late Circle _circle;

  List<LatLng> _passedPoints = [];

  late BitmapDescriptor _defaultIcon;

  late BitmapDescriptor _passedIcon;

  late BitmapDescriptor _userIcon;

  LatLng? _userCurrentPosition;

  //Marker _userMarker;

  bool _manualSightSwitch = false;

  String language = 'en';

  List<String>? allLanguages = [];

  int get tourActivating => _tourActivating;

  LatLngBounds get targetBounds => boundsFromLatLngList(_points);

  String get tourId => _tourId;

  set tourId(String tourId) {
    _tourId = tourId;
    _initContent();
  }

  set tourActivatingTime(int time) {
    _tourActivating = time;
    startAccessTimeCounting();
  }

  Set<Polyline> get polylines => _polylines;

  Set<Marker> get sightMarkers => _sightMarkers;

  Circle get circle => _circle;

  int get currentSightIndex => _currentSightIndex;

  int get sightsAmount => _sights?.length ?? 0;

  SightRouteItem? get currentSight => _sights?[_currentSightIndex];

  Duration get tourAccessTime => _tourAccess;

  String get currentSightNumberLabel => '${_currentSightIndex + 1}/${_sights!.length}';

  LatLng get currentPosition => _userCurrentPosition!;

  bool get locationEnabled => _userCurrentPosition != null;

  //Marker get userMarker => _userMarker;

  LatLng get initialCoordinate {
    final coordinates = _sights!
        .map(
          (e) => LatLng(
            double.tryParse(e.latitude)!,
            double.tryParse(e.longitude)!,
          ),
        )
        .toList();
    if (coordinates.length == 1) {
      return coordinates.first;
    }

    var x = 0.0;
    var y = 0.0;
    var z = 0.0;

    for (var latLng in coordinates) {
      var latitude = latLng.latitude * math.pi / 180;
      var longitude = latLng.longitude * math.pi / 180;

      x += math.cos(latitude) * math.cos(longitude);
      y += math.cos(latitude) * math.sin(longitude);
      z += math.sin(latitude);
    }

    var total = coordinates.length;

    x = x / total;
    y = y / total;
    z = z / total;

    var centralLongitude = math.atan2(y, x);
    var centralSquareRoot = math.sqrt(x * x + y * y);
    var centralLatitude = math.atan2(z, centralSquareRoot);

    return LatLng(centralLatitude * 180 / math.pi, centralLongitude * 180 / math.pi);
  }

  LatLngBounds boundsFromLatLngList(List<LatLng> list) {
    assert(list.isNotEmpty);
    double? x0, x1, y0, y1;
    for (var latLng in list) {
      if (x0 == null) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1!) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1!) y1 = latLng.longitude;
        if (latLng.longitude < y0!) y0 = latLng.longitude;
      }
    }
    return LatLngBounds(northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
  }

  // Init methods

  Future<void> _locationInit() async {
    var isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (isLocationServiceEnabled) {
      await _getCurrentLocation();
    } else {
      emit(_LocationPermission());
    }
  }

  AssetsAudioPlayer? _audioPlayer;

  AssetsAudioPlayer? get audioPlayer => _audioPlayer;

  Future<void> _initContent() async {
    emit(_Loading());
    final either = await _mapRepository.getTourRoute(_tourId);
    either.fold(
      (err) => emit(_Error(err)),
      (resp) async {
        _sights = resp.sights;
        try {
          _points = PolylinePoints()
              .decodePolyline(resp.polyline)
              .map(
                (e) => LatLng(e.latitude, e.longitude),
              )
              .toList();
          _appDir = await getApplicationDocumentsDirectory();
          await _initMarkers();
          await _initPolylines();
          _initPlaylist();
          MapoLog.log.d('_initContent');
          emit(_Initial(currentSight!));
          await _locationInit();
          _switchSight(currentSight!);
        } on RangeError {
          //dummy data in case of error
          emit(_Error(ErrorResponse(-1, 'Wrong polyline. Contact with the developer')));
          _points = [LatLng(29.978911, 31.134142)];
        }
      },
    );
  }

  Future _initPolylines() async {
    _polylines = {};

    polylines.add(Polyline(
      width: 2,
      color: colorNavyBlue,
      polylineId: PolylineId(_tourId),
      points: _points,
    ));
  }

  Future _initMarkers() async {
    Future<Uint8List> _getBytesFromAsset(String path, int width) async {
      var data = await rootBundle.load(path);
      var codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
      var fi = await codec.getNextFrame();
      return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
    }

    _sightMarkers = {};
    final startIcon =
        BitmapDescriptor.fromBytes(await _getBytesFromAsset(Images.smallPlayButton, mapMarkerSize));
    _defaultIcon =
        BitmapDescriptor.fromBytes(await _getBytesFromAsset(Images.pointMap, mapMarkerSize));
    _passedIcon =
        BitmapDescriptor.fromBytes(await _getBytesFromAsset(Images.greenPointMap, mapMarkerSize));
    _userIcon = BitmapDescriptor.fromBytes(await _getBytesFromAsset(Images.userMarker, 35));
    final endIcon =
        BitmapDescriptor.fromBytes(await _getBytesFromAsset(Images.smallStopButton, mapMarkerSize));

    _sightMarkers.add(
      _createMarker(0, startIcon),
    );
    for (var i = 1; i < sightsAmount - 1; i++) {
      _sightMarkers.add(_createMarker(i, _defaultIcon));
    }
    _sightMarkers.add(_createMarker(_sights!.length - 1, endIcon));
  }

  // Methods for ui
  void nextItem() {
    if (_currentSightIndex < _sights!.length - 1) {
      ++_currentSightIndex;
      _switchSight(currentSight!);
    }
  }

  List<Audio> getCurrentPlaylist() {
    return _playlists[currentSight!.id]!;
  }

  void showInitialSight() {
    _animateCameraToTheSight(currentSight!);
  }

  void _switchSight(SightRouteItem sight) async {
    if (_audioPlayer != null) {
      if (Platform.isAndroid) await _audioPlayer!.pause();
      _audioPlayer!.showNotification = false;
      if (Platform.isIOS) await _audioPlayer!.stop();
    }
    _audioPlayer = _audioPlayers[sight.id];
    if (_audioPlayer != null) {
      if (Platform.isIOS) _openAudioPlayer(_audioPlayer!, _playlists[sight.id]!);
    }
    _animateCameraToTheSight(sight);
  }

  void _animateCameraToTheSight(SightRouteItem sight) {
    _manualSightSwitch = true;
    if (locationEnabled &&
        _coordinateDistance(
                _userCurrentPosition!,
                LatLng(
                  double.tryParse(sight.latitude)!,
                  double.tryParse(sight.longitude)!,
                )) <
            .1) {
      _manualSightSwitch = false;
    }
    _rebuildMarkers();
    MapoLog.log.d('_animateCameraToTheSight');
    emit(_Loading());
    emit(_Initial(sight));
  }

  void prevItem() {
    if (_currentSightIndex > 0) {
      --_currentSightIndex;
      _switchSight(currentSight!);
    }
  }

  void backToMap() => emit(_LocationUpdated(_currentPosition));

  void textVersion() {
    emit(_LocationUpdated(_currentPosition));
    emit(_TextVersion());
  }

  bool needToRebuildScreen(TourMapState prev, TourMapState curr) {
    return !(prev is _Initial && curr is _Initial);
  }

  //Others
  Marker _createMarker(int index, BitmapDescriptor icon) => Marker(
        markerId: MarkerId(_sights![index].id.toString()),
        position: LatLng(
          double.tryParse(_sights![index].latitude)!,
          double.tryParse(_sights![index].longitude)!,
        ),
        anchor: Offset(.5, .5),
        // onTap: () {
        //   _currentSightIndex = index;
        //   _switchSight(currentSight);
        // },
        icon: icon,
      );

  void _rebuildPolylines() {
    var updatedPolylines = <Polyline>{};
    final indexOfSightPoint = _points.indexOf(
      LatLng(
        double.tryParse(currentSight!.latitude)!,
        double.tryParse(currentSight!.longitude)!,
      ),
    );

    _passedPoints = _points.getRange(0, indexOfSightPoint + 1).toList();
    updatedPolylines.add(Polyline(
      width: 2,
      color: colorGreenGradientStart,
      polylineId: PolylineId('passedPoints'),
      points: _passedPoints,
    ));

    if (indexOfSightPoint + 1 != _points.length) {
      final otherPoints = _points.getRange(indexOfSightPoint, _points.length).toList();
      updatedPolylines.add(Polyline(
        width: 2,
        color: colorNavyBlue,
        polylineId: PolylineId('otherPoints'),
        points: otherPoints,
      ));
    }
    if (updatedPolylines.isNotEmpty) {
      _polylines = updatedPolylines;
    }
  }

  void _rebuildMarkers() {
    final startMarker = _sightMarkers.first;
    final endMarker = _sightMarkers.last;

    _sightMarkers = {};

    _sightMarkers.add(startMarker);
    for (var i = 1; i < sightsAmount - 1; i++) {
      _sightMarkers.add(_createMarker(
          i,
          _passedPoints.contains(
            LatLng(
              double.tryParse(_sights![i].latitude)!,
              double.tryParse(_sights![i].longitude)!,
            ),
          )
              ? _passedIcon
              : _defaultIcon));
    }
    _sightMarkers.add(endMarker);
  }

  Future<void> _getCurrentLocation() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      final permission = await Geolocator.requestPermission();
      print(permission);
      if (permission != LocationPermission.always && permission != LocationPermission.whileInUse) {
        emit(_LocationPermission());
        return;
      }
    }
    _currentPosition = await Geolocator.getCurrentPosition();
    _userCurrentPosition = LatLng(_currentPosition.latitude, _currentPosition.longitude);
    //_userMarker = _createUserMarker();
    _circle = _createUserCircle();
    emit(_LocationUpdated(_currentPosition));

    log('location: getCurrentLocation - $_currentPosition');
    Geolocator.getPositionStream().listen((pos) {
      final newPosition = LatLng(pos.latitude, pos.longitude);
      log('location: newPosition - $newPosition');
      if (_userCurrentPosition != newPosition) {
        var sightIndex = -1;
        log('location: _userCurrentPosition - $_userCurrentPosition');
        if (!_manualSightSwitch) {
          sightIndex = _sights!.indexWhere((sight) =>
              _coordinateDistance(
                newPosition,
                LatLng(
                  double.tryParse(sight.latitude)!,
                  double.tryParse(sight.longitude)!,
                ),
              ) <
              distanceForSightSwitching);
        }
        _userCurrentPosition = newPosition;
        //_userMarker = _createUserMarker();
        // _circle = _createUserCircle();

        if (sightIndex > 0) {
          _currentSightIndex = sightIndex;
          _rebuildPolylines();
          _rebuildMarkers();
          MapoLog.log.d('get position stream');
          emit(_Initial(currentSight!));
        } else {
          emit(_LocationUpdated(pos));
        }
      }
    });
  }

  // Marker _createUserMarker() => Marker(
  //       markerId: MarkerId(_userCurrentPosition.toString()),
  //       anchor: Offset(.5, .5),
  //       position: LatLng(_userCurrentPosition.latitude, _userCurrentPosition.longitude),
  //       icon: _userIcon,
  //     );

  Circle _createUserCircle() => Circle(
        circleId: CircleId(_userCurrentPosition.toString()),
        radius: 70,
        strokeWidth: 1,
        zIndex: 5,
        strokeColor: colorGreenGradientEnd.withOpacity(.7),
        center: LatLng(_userCurrentPosition!.latitude, _userCurrentPosition!.longitude),
      );

  void continueWithoutGeolocation() async {
    MapoLog.log.d('continueWithoutGeolocation');
    emit(_Initial(currentSight!));
  }

  Future<void> enableLocation() async {
    var isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      await Geolocator.openLocationSettings();
    }

    await _getCurrentLocation();
  }

  double _coordinateDistance(LatLng point1, LatLng point2) {
    var p = 0.017453292519943295;
    var a = 0.5 -
        math.cos((point2.latitude - point1.latitude) * p) / 2 +
        math.cos(point1.latitude * p) *
            math.cos(point2.latitude * p) *
            (1 - math.cos((point2.longitude - point1.longitude) * p)) /
            2;
    return 12742 * math.asin(math.sqrt(a));
  }

  void _initPlaylist() {
    var tourFiles = Directory('${_appDir.path}\/$_tourId\/$language').listSync();
    _sights!.forEach((sight) {
      var _playlist = <Audio>[];
      var _finalPlaylist = <Audio>[];
      var paths = _getSightAudioPath(sight.id.toString(), tourFiles);
      if (paths.isNotEmpty) {
        paths.forEach(
          (element) {
            _playlist.add(
              Audio.file(
                element,
                metas: Metas(
                  image: MetasImage.network(sight.imageUrl.first),
                  title: sight.name,
                ),
              ),
            );
          },
        );
        try {
          _finalPlaylist.add(_playlist.where((element) => element.path.contains('main')).first);
        } catch (e) {
          print('failed to parse playlist ${_playlist}');
        }
        _playlist = _playlist
          ..removeWhere((element) => element.path.contains('main'))
          ..sort((a, b) => a.path.compareTo(b.path));
        _finalPlaylist.addAll(_playlist);
        var audioPlayer = AssetsAudioPlayer.newPlayer();
        if (Platform.isAndroid) {
          _openAudioPlayer(audioPlayer, _finalPlaylist);
        }
        _audioPlayers[sight.id] = audioPlayer;
        _playlists[sight.id] = _finalPlaylist;
      }
    });
    _audioPlayer = _audioPlayers[_sights![_currentSightIndex].id];
  }

  void _openAudioPlayer(AssetsAudioPlayer audioPlayer, List<Audio> playlist) {
    audioPlayer.open(
      Playlist(audios: playlist),
      autoStart: false,
      showNotification: true,
      headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplugPlayOnPlug,
      audioFocusStrategy: AudioFocusStrategy.request(
        resumeAfterInterruption: true,
        resumeOthersPlayersAfterDone: false,
      ),
      playInBackground: PlayInBackground.enabled,
    );
  }

  List<String> _getSightAudioPath(String sightId, List<FileSystemEntity> files) {
    try {
      var reg = RegExp('^.+(\/$sightId-main|\/$sightId-secondary).*');
      var sightAudio =
          files.where((element) => reg.hasMatch(element.path)).map((e) => e.path).toList();
      log('sight $sightId audio: $sightAudio');
      return sightAudio;
    } catch (e) {
      return [];
    }
  }

  void startAccessTimeCounting() {
    var time = DateTime.fromMillisecondsSinceEpoch(_tourActivating * 1000);
    _tourAccess = DateTime.now().difference(time);
    _accessTimer = Timer.periodic(Duration(seconds: Duration.secondsPerMinute), (timer) {
      _tourAccess = DateTime.now().difference(time);
      if (_tourAccess.inMinutes < 0) {
        emit(_TimesUp());
      } else {
        emit(_AccessTimeUpdated());
      }
    });
  }

  void dispose() async {
    log('tour map cubit dispose');
    _accessTimer?.cancel();
    log('audio players size: ${_audioPlayers.length}');
    _audioPlayers.forEach((id, aPlayer) async {
      log('dispose player $id');
      aPlayer.showNotification = false;
      await aPlayer.dispose();
    });
    _audioPlayers.clear();
    _playlists.clear();
    _sightMarkers.clear();
    _passedPoints.clear();
    polylines.clear();
    sightMarkers.clear();
    _points.clear();
    _sights?.clear();
  }
}

import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/sight_route_item.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/map_repository.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:meta/meta.dart';

part 'map_preview_cubit.freezed.dart';

part 'map_preview_state.dart';

@injectable
class MapPreviewCubit extends Cubit<MapPreviewState> {
  late String _tourId;
  final MapRepository _mapRepository;
  late List<SightRouteItem> _sights;
  final Set<Polyline> _polylines = {};
  late List<LatLng> _points;
  late Set<Marker> _sightMarkers;
  late BitmapDescriptor _defaultIcon;

  MapPreviewCubit(this._mapRepository) : super(_Loading());

  LatLngBounds get targetBounds => boundsFromLatLngList(_points);

  set tourId(String value) {
    _tourId = value;
    _initContent();
  }

  int get sightsAmount => _sights.length;

  Set<Polyline> get polylines => _polylines;

  Set<Marker> get sightMarkers => _sightMarkers;

  void _initContent() async {
    final either = await _mapRepository.getTourRoute(_tourId);
    either.fold((err) => emit(_Error(err)), (resp) async {
      _sights = resp.sights;
      _points = PolylinePoints()
          .decodePolyline(resp.polyline)
          .map(
            (e) => LatLng(e.latitude, e.longitude),
          )
          .toList();
      await _initMarkers();
      await _initPolylines();
      emit(_Initial());
    });
  }

  LatLng get initialCoordinate {
    final coordinates = _sights
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

  Future _initPolylines() async {
    _polylines.add(Polyline(
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
    final startIcon = BitmapDescriptor.fromBytes(
      await _getBytesFromAsset(Images.smallPlayButton, mapMarkerSize),
    );
    _defaultIcon = BitmapDescriptor.fromBytes(
      await _getBytesFromAsset(Images.pointMap, mapMarkerSize),
    );
    final endIcon = BitmapDescriptor.fromBytes(
      await _getBytesFromAsset(Images.smallStopButton, mapMarkerSize),
    );

    _sightMarkers.add(
      _createMarker(0, startIcon),
    );
    for (var i = 1; i < sightsAmount - 1; i++) {
      _sightMarkers.add(_createMarker(i, _defaultIcon));
    }
    _sightMarkers.add(_createMarker(_sights.length - 1, endIcon));
  }

  Marker _createMarker(int index, BitmapDescriptor icon) => Marker(
    markerId: MarkerId(_sights[index].id.toString()),
    position: LatLng(
      double.tryParse(_sights[index].latitude)!,
      double.tryParse(_sights[index].longitude)!,
    ),
    anchor: ui.Offset(.5, .5),
    icon: icon,
  );
}

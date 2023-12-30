import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/map_preview/cubit/map_preview_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';

class MapPreviewScreen extends StatefulWidget {
  final String? tourId;
  final String? tourName;

  MapPreviewScreen({Key? key, this.tourId, this.tourName});

  @override
  _MapPreviewScreenState createState() => _MapPreviewScreenState();
}

class _MapPreviewScreenState extends State<MapPreviewScreen> {
  final MapPreviewCubit cubit = locator<MapPreviewCubit>();

  @override
  void initState() {
    cubit.tourId = widget.tourId ?? '1';
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    final loc = MLoc.of(mainContext);
    return BlocBuilder<MapPreviewCubit, MapPreviewState>(
      bloc: cubit,
      builder: (context, state) {
        return state.when(
          initial: () => _buildInitial(mainContext, loc),
          loading: () => EndlessProgress(),
          myOrdersError: (message) => MapoErrorWidget(message: message),
        );
      },
    );
  }

  Widget _buildInitial(BuildContext mainContext, MLoc loc) {
    return Scaffold(
      appBar: GradientAppBar(
        title: widget.tourName,
        onBackArrow: () => context.router.pop(),
      ),
      body: Column(
        children: [
          Expanded(
            child: _map(),
          ),
        ],
      ),
    );
  }

  Widget _map() {
    return GoogleMap(
      zoomControlsEnabled: false,
      compassEnabled: false,
      onMapCreated: onMapCreated,
      myLocationButtonEnabled: false,
      myLocationEnabled: false,
      markers: cubit.sightMarkers,
      polylines: cubit.polylines,
      initialCameraPosition: CameraPosition(
        target: cubit.initialCoordinate,
      ),
    );
  }

  late GoogleMapController _controller;

  void onMapCreated(GoogleMapController controller) async {
    _controller = controller;
    await Future.delayed(Duration(seconds: 1));
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _controller.animateCamera(
        CameraUpdate.newLatLngBounds(
          cubit.targetBounds,
          30,
        ),
      );
    });
    await _controller.animateCamera(
      CameraUpdate.newLatLngBounds(
        cubit.targetBounds,
        30,
      ),
    );
  }
}

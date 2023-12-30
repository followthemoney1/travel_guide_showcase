import 'package:auto_route/auto_route.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/tour_map/widgets/audio_tour_item.dart';
import 'package:mapo_travel_guide/ui/screens/tour_map/widgets/text_version.dart';
import 'package:mapo_travel_guide/ui/shared/borderless_button.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/choose_language_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'cubit/tour_map_cubit.dart';

class TourMapScreen extends StatefulWidget {
  final int tourActivatingTime;
  var tourId;
  var language;
  var allLanguages;

  TourMapScreen({
    Key? key,
    required this.tourActivatingTime,
    this.tourId,
    this.language,
    this.allLanguages,
  }) : super(key: key) {
    //Must be a strict order here
  }

  @override
  _TourMapScreenState createState() => _TourMapScreenState();
}

class _TourMapScreenState extends State<TourMapScreen> {
  late GoogleMapController _mapController;
  EventBus navigationBus = locator<EventBus>();
  final tourMapCubit = locator.get<TourMapCubit>();

  void _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
    await Future.delayed(Duration(seconds: 2));
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _mapController.animateCamera(
        CameraUpdate.newLatLngBounds(
          tourMapCubit.targetBounds,
          30,
        ),
      );
    });
    await Future.delayed(Duration(seconds: 3));
    await _mapController.animateCamera(CameraUpdate.newLatLng(
      LatLng(
        double.tryParse(tourMapCubit.currentSight!.latitude)!,
        double.tryParse(tourMapCubit.currentSight!.longitude)!,
      ),
    ));
  }

  @override
  void initState() {
    tourMapCubit.language = widget.language;
    tourMapCubit.tourId = widget.tourId ?? '1';
    tourMapCubit.allLanguages = widget.allLanguages;
    tourMapCubit.tourActivatingTime = widget.tourActivatingTime;
    _listenToBottomBarEvents(context);
    super.initState();
  }

  void _listenToBottomBarEvents(BuildContext context) {
    navigationBus.on<NavigateTourMapBackEvent>().listen((event) {
      if (!mounted) return;
      locator.get<TourMapCubit>().dispose();
      if (context.router.canPopSelfOrChildren) {
        context.router.pop();
      }
    });
  }

  @override
  Widget build(BuildContext mainContext) {
    final loc = MLoc.of(mainContext);
    return BlocConsumer<TourMapCubit, TourMapState>(
      listener: (context, state) {
        state.maybeWhen(
            timesUp: () => mainContext.router.pop(), textVersion: () => createTextVersionModalWindow(), orElse: () {});
      },
      bloc: tourMapCubit,
      buildWhen: (_, current) => current.maybeWhen(
          error: (error) => true,
          initial: (sight) => true,
          loading: () => true,
          locationPermission: () => true,
          timesUp: () => true,
          tourAudioIsMissing: () => true,
          locationUpdated: (_) => false,
          accessTimeUpdated: () => false,
          textVersion: () => false,
          orElse: () => true),
      builder: (context, state) {
        return state.maybeWhen(
          error: (error) => Center(
            child: Text(error.message),
          ),
          loading: () => EndlessProgress(),
          locationPermission: () => Stack(
            children: [
              _buildMapWithAudio(mainContext, loc),
              Container(
                color: colorBlack.withOpacity(.5),
              ),
              _buildLocationDialog(mainContext, loc)
            ],
          ),
          accessTimeUpdated: () => _buildMapWithAudio(mainContext, loc),
          initial: (sight) => _buildMapWithAudio(mainContext, loc),
          locationUpdated: (pos) => _buildMapWithAudio(mainContext, loc),
          textVersion: () => _buildMapWithAudio(mainContext, loc),
          timesUp: () => _buildMapWithAudio(mainContext, loc),
          tourAudioIsMissing: () => _buildMapWithAudio(mainContext, loc),
          orElse: () => EndlessProgress(),
        );
      },
    );
  }

  void createTextVersionModalWindow() async {
    await showMaterialModalBottomSheet(
        context: context,
        enableDrag: true,
        closeProgressThreshold: 0.8,
        duration: Duration(milliseconds: 300),
        isDismissible: true,
        builder: (context) {
          return TextVersionTour(parentContext: context, cubit: tourMapCubit);
        });
  }

  Widget _buildLocationDialog(BuildContext context, MLoc loc) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: paddingSmall,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Images.satellite,
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            verticalSpacer(spaceSmall),
            Text(
              loc.askOnLocal,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.left,
            ),
            verticalSpacer(spaceSuperSmall),
            BorderlessButton(
              height: 30,
              titleAlignment: Alignment.centerRight,
              onPressed: () {
                composeRedMessage(loc.openPreference).show(context);
                return tourMapCubit.enableLocation();
              },
              title: loc.turnOn,
            ),
            BorderlessButton(
              height: 30,
              titleAlignment: Alignment.centerRight,
              onPressed: () => tourMapCubit.continueWithoutGeolocation(),
              title: loc.cancel,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapWithAudio(BuildContext context, MLoc loc) {
    MapoLog.log.i('_buildMapWithAudio');
    if (tourMapCubit.sightsAmount == 0) return SizedBox.shrink();
    return WillPopScope(
      onWillPop: () async {
        MapoLog.log.i('tour map screen will pop');
        locator.get<TourMapCubit>().dispose();
        return true;
      },
      child: Scaffold(
        appBar: _buildAppBar(context, loc),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: _map(),
            ),
            AudioTourItem(
                tourMapCubit: tourMapCubit,
                onChangeSight: (sight) async {
                  await _mapController.animateCamera(CameraUpdate.zoomBy(-2.0));
                  await Future.delayed(Duration(milliseconds: 600));
                  await _mapController.animateCamera(
                    CameraUpdate.newLatLngZoom(
                        LatLng(
                          double.tryParse(sight.latitude)!,
                          double.tryParse(sight.longitude)!,
                        ),
                        19.0),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget _map() {
    return BlocBuilder<TourMapCubit, TourMapState>(
      bloc: tourMapCubit,
      buildWhen: (_, current) {
        return current.maybeWhen(
          accessTimeUpdated: () => false,
          error: (error) => false,
          initial: (sight) => false,
          loading: () => false,
          locationPermission: () => false,
          textVersion: () => false,
          timesUp: () => false,
          tourAudioIsMissing: () => false,
          locationUpdated: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) => GoogleMap(
        onMapCreated: _onMapCreated,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        compassEnabled: true,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        //cameraTargetBounds: CameraTargetBounds(tourMapCubit.targetBounds),
        // circles: tourMapCubit.circle == null ? null : {tourMapCubit.circle},
        markers:
            tourMapCubit.sightMarkers /* .union(tourMapCubit.userMarker == null ? {} : {tourMapCubit.userMarker}) */,
        polylines: tourMapCubit.polylines,
        initialCameraPosition: CameraPosition(
          target: tourMapCubit.initialCoordinate,
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext mainContext, MLoc loc) {
    final key = GlobalKey();
    return GradientAppBar(
      key: key,
      onBackArrow: () {
        MapoLog.log.i('tour map screen onBackArrow');
        // locator.get<TourMapCubit>().dispose();
        // mainContext.router.pop();
      },
      title: loc.audiotour,
      trailing: tourMapCubit.allLanguages != null
          ? IconButton(
              splashRadius: 23,
              icon: Icon(
                Icons.language,
                color: colorWhite,
              ),
              onPressed: () {
                showDialog(
                  context: mainContext,
                  builder: (context) => ChooseLanguageDialog(
                    languages: tourMapCubit.allLanguages!,
                    onContinue: (language) => _changeLanguage(mainContext, language),
                  ),
                );
              },
            )
          : SizedBox.shrink(),
    );
  }

  void _changeLanguage(BuildContext context, String language) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.popAndPush(MainTourMapScreen(
        tourId: tourMapCubit.tourId.toString(),
        language: language,
        allLanguages: tourMapCubit.allLanguages,
        tourActivatingTime: widget.tourActivatingTime,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.popAndPush(CatalogTourMapScreen(
        tourId: tourMapCubit.tourId.toString(),
        language: language,
        allLanguages: tourMapCubit.allLanguages,
        tourActivatingTime: widget.tourActivatingTime,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.popAndPush(ProfileTourMapScreen(
        tourId: tourMapCubit.tourId.toString(),
        language: language,
        allLanguages: tourMapCubit.allLanguages,
        tourActivatingTime: widget.tourActivatingTime,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.popAndPush(MyOrdersTourMapScreen(
        tourId: tourMapCubit.tourId.toString(),
        language: language,
        allLanguages: tourMapCubit.allLanguages,
        tourActivatingTime: widget.tourActivatingTime,
      ));
    }
  }
}

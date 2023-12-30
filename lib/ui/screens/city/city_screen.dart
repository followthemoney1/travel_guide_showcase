import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/city/cubit/city_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/badge_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/empty_list_placeholder.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/expansion_text.dart';
import 'package:mapo_travel_guide/ui/shared/header_row.dart';
import 'package:mapo_travel_guide/ui/shared/items/cities_nearby_item.dart';
import 'package:mapo_travel_guide/ui/shared/items/guide_item.dart';
import 'package:mapo_travel_guide/ui/shared/items/sights_item.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/anim.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class CityScreen extends StatefulWidget {
  final int cityId;

  CityScreen({Key? key, required this.cityId}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> with SingleTickerProviderStateMixin {
  final CityCubit cubit = locator<CityCubit>();

  late AnimationController _controller;
  late Animation<double> _iconTurns;
  bool isOpened = false;

  @override
  void initState() {
    cubit.cityId = widget.cityId;
    log("ewfwefwef=== ${widget.cityId}");
    final _easeInTween = CurveTween(curve: Curves.easeIn);
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _iconTurns = _controller.drive(Tween<double>(begin: 0.0, end: 0.5).chain(_easeInTween));
    super.initState();
  }

  @override
  Widget build(BuildContext buildContext) {
    var size = MediaQuery.of(buildContext).size;
    var theme = Theme.of(buildContext);
    var loc = MLoc.of(buildContext);

    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocConsumer<CityCubit, CityState>(
          bloc: cubit,
          listener: (context, state) {
            state.maybeWhen(
              error: (err) => composeRedMessage(err.localizedMessage(context)).show(context),
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => EndlessProgress(),
              error: (error) => MapoErrorWidget(message: error),
              loading: () => EndlessProgress(),
              contentLoaded: () => initContent(loc, theme, context, size),
              contentLoading: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  Widget initContent(MLoc loc, ThemeData theme, BuildContext context, Size size) {
    return SnappingSheet(
      grabbingHeight: 0,
      sheetAbove: initSheetAbove(theme, loc),
      initialSnappingPosition: SnappingPosition.factor(positionFactor: .88),
      snappingPositions: [
        SnappingPosition.factor(
          positionFactor: 0,
          snappingCurve: Curves.elasticOut,
          snappingDuration: Duration(milliseconds: 500),
        ),
        SnappingPosition.factor(
          positionFactor: .88,
          snappingCurve: Curves.elasticOut,
          snappingDuration: Duration(milliseconds: 500),
        )
      ],
      child: initChildContent(context, theme, size, loc),
      onSnapCompleted: (_, __) {
        isOpened ? _controller.reverse() : _controller.forward();
        isOpened = !isOpened;
      },
    );
  }

  SnappingSheetContent initSheetAbove(ThemeData theme, MLoc loc) {
    return SnappingSheetContent(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          children: [
            CachedNetworkImage(
              imageUrl: cubit.city!.imageUrl,
              placeholder: (context, url) => Container(color: colorGrey),
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(.7), Colors.transparent],
                ),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpacer(spaceSmall),
                  Expanded(
                    child: createBadgesList(loc),
                  ),
                  verticalSpacer(spaceSmall),
                  AnimatedBuilder(
                    animation: _controller.view,
                    builder: (_, __) => RotationTransition(
                      turns: _iconTurns,
                      child: Container(
                        alignment: Alignment.center,
                        height: iconSize,
                        child: FlareActor(
                          Anim.arrow,
                          fit: BoxFit.contain,
                          animation: 'arrow',
                        ),
                      ),
                    ),
                  ),
                  verticalSpacer(spaceDefault),
                ],
              ),
            ),
          ],
        ),
      ),
      sizeBehavior: SheetSizeFill(),
      // heightBehavior: SnappingSheetHeight.fixed(expandOnSnapPositionOverflow: true),
      draggable: true,
    );
  }

  Widget initChildContent(BuildContext context, ThemeData theme, Size size, MLoc loc) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacer(size.height * .09),
            Padding(
              padding: const EdgeInsets.only(left: paddingSmall),
              child: MapoIconButton(
                padding: paddingSmall,
                imagePath: Images.arrow_back,
                onTap: () {
                  AutoRouter.of(context).pop();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Text(
                cubit.city!.name,
                style: theme.textTheme.headline6,
              ),
            ),
            verticalSpacer(spaceSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: ExpansionText(cubit.city!.description),
            ),
            verticalSpacer(spaceDefault),
            if (cubit.audioTours.length > 3)
              Padding(
                padding: const EdgeInsets.only(left: paddingDefault),
                child: HeaderRow(
                  headerText: loc.recommendedAudioTours,
                  onPressed: cubit.audioTours.length > defaultAmountOfItems
                      ? () {
                          _goToRecommendedToursAll(context);
                        }
                      : null,
                ),
              ),
            if (cubit.audioTours.length > 3) verticalSpacer(spaceDefault),
            if (cubit.audioTours.length > 3) recommendedAudiotours(loc, theme, cubit.audioTours, size, context),
            if (cubit.audioTours.length > 3) verticalSpacer(spaceDefault),
            if (cubit.guides.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(left: paddingDefault),
                child: HeaderRow(
                  headerText: loc.mGuides,
                  onPressed: cubit.guides.length > defaultAmountOfItems
                      ? () {
                          _goToGuidesAll(context);
                        }
                      : null,
                ),
              ),
            if (cubit.guides.isNotEmpty) verticalSpacer(spaceDefault),
            if (cubit.guides.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: buildGuides(loc, cubit.guides, context),
              ),
            if (cubit.sights.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(left: paddingDefault),
                child: HeaderRow(
                  headerText: loc.popularSights,
                  onPressed: cubit.sights.length > defaultAmountOfItems ? () => _goToPopularSightsAll(context) : null,
                ),
              ),
            if (cubit.sights.isNotEmpty) verticalSpacer(spaceDefault),
            if (cubit.sights.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: buildSights(context, loc, cubit.sights),
              ),
            if (cubit.cities.length > 3)
              Padding(
                padding: const EdgeInsets.only(left: paddingDefault),
                child: HeaderRow(headerText: loc.citiesNearby),
              ),
            if (cubit.cities.length > 3) verticalSpacer(spaceDefault),
            if (cubit.cities.length > 3) buildCities(loc, cubit.cities, size, context),
            verticalSpacer(spaceDefault),
          ],
        ),
      ),
    );
  }

  ListView createBadgesList(MLoc loc) {
    final tourTypes = cubit.city!.toursQuantity;

    return ListView.builder(
      itemCount: tourTypes.length + 1,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        ToursQuantity badge;
        if (index == 0) {
          badge = ToursQuantity(
            tourTypeId: 0,
            tourTypeName: loc.uAll,
            toursQuantity: tourTypes.fold(0, (previousValue, element) => previousValue + element.toursQuantity),
            tourTypeImageUrl: categoryAllImage,
          );
        } else {
          badge = tourTypes[index - 1];
        }
        return BadgeButton(
          onTap: () {
            _goToTheTourType(badge.tourTypeId.toString(), context);
          },
          quantity: badge.toursQuantity.toString(),
          badgeImage: badge.tourTypeImageUrl,
          name: badge.tourTypeName,
        );
      },
    );
  }

  Widget recommendedAudiotours(
    MLoc loc,
    ThemeData theme,
    List<Tour> recommendedTours,
    Size size,
    BuildContext context,
  ) {
    return Container(
      width: size.width,
      height: size.height * .19,
      child: recommendedTours.isEmpty
          ? EmptyListPlaceholder(placeholderText: loc.noExcursionsYet)
          : buildListOfPopularTours(recommendedTours, context),
    );
  }

  Widget buildGuides(MLoc loc, List<Guide> guides, BuildContext context) {
    return guides.isEmpty
        ? EmptyListPlaceholder(placeholderText: loc.noGuidesYet)
        : Column(
            children: guides
                .map((guide) => GuideItem(
                      guide: guide,
                      onTap: () => _goToTheGuide(guide.id.toString(), context),
                    ))
                .toList(),
          );
  }

  Widget buildSights(BuildContext context, MLoc loc, List<Sight> sights) {
    return sights.isEmpty
        ? EmptyListPlaceholder(placeholderText: loc.noSightsYet)
        : Column(
            children: sights
                .map((sightsRes) => SightItem(
                      sights: sightsRes,
                      onTap: () => _goToPopularSight(context, sightsRes.id, sightsRes.name),
                    ))
                .toList(),
          );
  }

  Widget buildCities(MLoc loc, List<City> cities, Size size, BuildContext context) {
    return cities.isEmpty
        ? EmptyListPlaceholder(placeholderText: loc.noCitiesNearby)
        : Container(
            width: size.width,
            height: size.height * .19,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: cities
                  .map((cityRes) => Padding(
                        padding: const EdgeInsets.only(left: paddingSmall),
                        child: cityRes.id == -1
                            ? SizedBox.shrink()
                            : CitiesNearbyItem(
                                city: cityRes,
                                onTap: () => _goToTheCityNearby(cityRes.id!, context),
                              ),
                      ))
                  .toList(),
            ),
          );
  }

  Widget buildListOfPopularTours(List<Tour> popularTours, BuildContext context) {
    return FutureBuilder<Map<String, String>>(
      future: cubit.prepareToursPrices(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: popularTours
                  .map((tour) => Padding(
                        padding: const EdgeInsets.only(left: paddingSmall),
                        child: tour.id == -1
                            ? SizedBox.shrink()
                            : TourItem(
                                price: snapshot.data![Platform.isAndroid ? tour.googleProductId : tour.appleProductId]!,
                                tour: tour,
                                showPrice: !(tour.paid),
                                onTap: () => _goToTheRecommendedTour(tour.id.toString(), tour.name, context),
                              ),
                      ))
                  .toList());
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }

  void _goToRecommendedToursAll(BuildContext context) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainRecommendedToursScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogRecommendedToursScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    }
  }

  void _goToGuidesAll(BuildContext context) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainCityGuidesScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogCityGuidesScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    }
  }

  void _goToPopularSightsAll(BuildContext context) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainSightsListScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogSightsListScreen(
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    }
  }

  void _goToTheTourType(String tourTypeId, BuildContext context) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainTourListScreen(
        categoryId: tourTypeId,
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogTourListScreen(
        categoryId: tourTypeId,
        city: City(
          id: cubit.city!.id,
          name: cubit.city!.name,
        ),
      ));
    }
    cubit.initContent();
  }

  void _goToTheRecommendedTour(String tourId, String tourName, BuildContext context) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    }
    cubit.initContent();
  }

  void _goToTheGuide(String guideId, BuildContext context) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainGuideScreen(
        cityName: cubit.city!.name,
        guideId: guideId,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogGuideScreen(
        cityName: cubit.city!.name,
        guideId: guideId,
      ));
    }
    cubit.initContent();
  }

  void _goToPopularSight(BuildContext context, int sightsId, String sightName) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    }
    cubit.initContent();
  }

  void _goToTheCityNearby(int cityId, BuildContext context) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainCityScreen(
        cityId: cityId,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogCityScreen(
        cityId: cityId,
      ));
    }
    cubit.initContent();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

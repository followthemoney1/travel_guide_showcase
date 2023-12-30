import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:event_bus/event_bus.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/tour/cubit/tour_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/tour/widgets/buy_tour.dart';
import 'package:mapo_travel_guide/ui/screens/tour/widgets/play_tour_fab.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/guide_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/map_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/choose_language_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/empty_list_placeholder.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/expansion_text.dart';
import 'package:mapo_travel_guide/ui/shared/header_row.dart';
import 'package:mapo_travel_guide/ui/shared/items/sights_item.dart';
import 'package:mapo_travel_guide/ui/shared/play_text_row.dart';
import 'package:mapo_travel_guide/ui/shared/rating_row.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/dismiss_player_event.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/logger.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:mapo_travel_guide/util/utils.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class TourScreen extends StatefulWidget {
  final String tourId;
  final String? tourName;

  const TourScreen(this.tourId, {this.tourName = '', Key? key}) : super(key: key);

  @override
  _TourScreenState createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  final TourCubit cubit = locator<TourCubit>();
  final FlutterSecureStorage _securedStorage = locator<FlutterSecureStorage>();
  final ExpandableController expansionController = ExpandableController();

  bool _isAnimationPaused = true;

  @override
  void initState() {
    super.initState();
    cubit.setTourId(widget.tourId);
    checkForLoadingStatus();
  }

  void checkForLoadingStatus() async {
    final loading = await cubit.isStillLoading();
    MapoLog.log.d('Tour ${widget.tourName} still loading = $loading');
    if (loading) {
      setState(() {
        _isAnimationPaused = false;
      });
    } else {
      setState(() {
        _isAnimationPaused = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    log('tourScreen Build');
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var loc = MLoc.of(context);

    cubit.checkLanguageChanging();

    return BlocConsumer<TourCubit, TourState>(
      bloc: cubit,
      listener: (context, state) {
        state.maybeWhen(
          tourDownloaded: () => onDownloaded(loc),
          error: (err) => composeRedMessage(err.localizedMessage(context)).show(context),
          tourActivated: () async {
            await composeGreenMessage(loc.tourActivated).show(context);
            await Future.delayed(Duration(seconds: 2));
            _goToTourMapScreen(
              context,
              cubit.tour.id.toString(),
              cubit.oneLanguage,
              null,
              cubit.timeForTourRemains,
            );
          },
          orElse: () => null,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          error: (message) => MapoErrorWidget(message: message),
          tourLoading: () => Container(
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.cloudsBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: EndlessProgress(),
          ),
          tourActivated: () => initContent(context, theme, size, loc),
          tourDownloaded: () => initContent(context, theme, size, loc),
          tourInitial: () => initContent(context, theme, size, loc),
          updateProgress: (progress) => initContent(context, theme, size, loc),
          orElse: () => initContent(context, theme, size, loc),
        );
      },
    );
  }

  PreferredSizeWidget buildAppBar(ThemeData theme, MLoc loc) {
    return DefaultAppBar(
      title: widget.tourName,
      actions: [
        if (cubit.userNotEmpty)
          MapoIconButton(
            imagePath: cubit.isInFavorites ? Images.favoriteFilled : Images.favorite,
            onTap: () => cubit.updateTourFavoritesState(),
            color: colorWhite,
          ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () => cubit.shareLink(),
        ),
      ],
    );
  }

  Widget buildImagesHeader(Size size) {
    var _controller = PageController();
    return Container(
      width: double.maxFinite,
      height: size.height * .36,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(itemCornersRadius),
                  bottomLeft: Radius.circular(itemCornersRadius),
                ),
                boxShadow: [itemShadowDefault()],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(itemCornersRadius),
                  bottomLeft: Radius.circular(itemCornersRadius),
                ),
                child: PageView(
                  children: cubit.tour.imageUrl.isNotEmpty
                      ? cubit.tour.imageUrl
                          .map((url) => CachedNetworkImage(
                                height: 100,
                                placeholder: (context, url) => EndlessProgress(),
                                imageUrl: url,
                                fit: BoxFit.cover,
                              ))
                          .toList()
                      : [Container()],
                  controller: _controller,
                ),
              ),
            ),
          ),
          verticalSpacer(spaceSmall),
          ScrollingPageIndicator(
            dotColor: colorGrey,
            dotSelectedColor: colorGreenGradientEnd,
            dotSize: 8,
            dotSelectedSize: 10,
            dotSpacing: 18,
            controller: _controller,
            itemCount: cubit.tour.imageUrl.length,
            orientation: Axis.horizontal,
          ),
        ],
      ),
    );
  }

  Widget initContent(BuildContext mainContext, ThemeData theme, Size size, MLoc loc) {
    var price = cubit.price;
    log(price.toString());
    return Scaffold(
      appBar: buildAppBar(theme, loc),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildImagesHeader(size),
                  verticalSpacer(spaceSuperSmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: paddingDefault,
                    ),
                    child: _buildTourType(context),
                  ),
                  verticalSpacer(spaceSuperSmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      cubit.tour.name,
                      style: theme.textTheme.subtitle1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  verticalSpacer(spaceSuperSmall),
                  GuideButton(
                    onTap: _goToTheGuide,
                    guideImage: cubit.tour.guide!.imageUrl,
                    guideName: cubit.tour.guide!.name,
                    guideSurname: cubit.tour.guide!.surname,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Divider(
                      color: colorNavyBlue,
                    ),
                  ),
                  ...buildInfoRows(theme, loc),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault, vertical: paddingSuperSmall),
                    child: Divider(
                      color: colorNavyBlue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: ExpansionText(cubit.tour.description),
                  ),
                  verticalSpacer(spaceSuperSmall),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
                    child: PlayTextRow(
                      songUrl: cubit.tour.audioPresentation,
                      text: loc.listenToPresentationOfTour,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: RatingRow(
                      dialogTitle: loc.didYouLikeTheTour,
                      dialogContent: loc.feedbackAboutTheTour,
                      rating: cubit.averageRate,
                      isBought: cubit.tour.paid,
                      paidAtLeastOnce: cubit.tour.paidAtLeastOnce,
                      onRate: (rate) {
                        cubit.updateRate(rate);
                        composeGreenMessage(loc.thanksForTheRating).show(context);
                      },
                    ),
                  ),
                  verticalSpacer(spaceDefault),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: MapButton(onCLick: () => _goToMapPreview(mainContext, widget.tourId, widget.tourName!)),
                  ),
                  verticalSpacer(spaceDefault),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: HeaderRow(
                      headerText: loc.pointsOfRoute,
                    ),
                  ),
                  verticalSpacer(spaceDefault),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: buildSights(loc),
                  ),
                  verticalSpacer(spaceBig),
                ],
              ),
            ),
            cubit.tour.paid
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault, vertical: paddingSmall),
                    child: BlocBuilder<TourCubit, TourState>(
                      bloc: cubit,
                      buildWhen: (previous, current) {
                        return current.maybeWhen(
                          updateProgress: (_) => true,
                          error: (errorResponse) => false,
                          tourActivated: () => false,
                          tourDownloaded: () => false,
                          tourInitial: () => false,
                          tourLoading: () => false,
                          orElse: () => false,
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          updateProgress: (progress) => _playTourFab(loc, mainContext, progress),
                          orElse: () => _playTourFab(loc, mainContext, {}),
                        );
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingDefault, vertical: paddingSmall),
                    child: BuyTour(
                      price: price,
                      onTap: () async {
                        var token = await _securedStorage.read(key: SecuredStorage.token);
                        if (token != null) {
                          _goToPaymentScreen(context, cubit.tour);
                        } else {
                          await context.router.root.push(AuthorizationScreenRoute());
                        }
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _playTourFab(MLoc loc, BuildContext context, Map<String, int>? progress) {
    MapoLog.log.v('downloading progress = ${progress?.values}');
    return PlayTourFab(
        isTourActivated: cubit.tour.timeForTourRemains != null,
        isAnimationPaused: _isAnimationPaused,
        time: calculateRemainingTimeAndConvert(cubit.tour.timeForTourRemains, loc),
        onDownloadTap: _onTapDownload,
        onPlayTap: () async {
          var status = await cubit.checkOpeningPossibility();
          switch (status) {
            case PlayStatus.ok:
              if (cubit.tour.timeForTourRemains != null) {
                _goToTourMapScreen(
                  context,
                  cubit.tour.id.toString(),
                  cubit.oneLanguage,
                  null,
                  cubit.timeForTourRemains,
                );
              } else {
                await showDialog(
                  context: context,
                  builder: (context) => TextDialog(
                    title: loc.startTheTourQ,
                    content: loc.areYouSureToStartTour,
                    withCancel: true,
                    btnOkText: loc.start,
                    onOk: () => cubit.activateTour(),
                  ),
                );
              }
              break;
            case PlayStatus.nothingToPlay:
              await showDialog(
                context: context,
                builder: (context) => TextDialog(
                  title: loc.nothingToPlay,
                  content: loc.youDontDownloadAnyTour,
                  withCancel: false,
                  btnOkText: loc.ok,
                ),
              );
              break;
            case PlayStatus.moreThanOne:
              await showDialog(
                context: context,
                builder: (builderContext) => FutureBuilder<List<String>>(
                  future: cubit.getDownloadedLanguages(),
                  builder: (ctxt, snapshot) {
                    if (snapshot.hasData) {
                      return ChooseLanguageDialog(
                        languages: snapshot.data!,
                        onContinue: (language) => _goToTourMapScreen(
                          context,
                          cubit.tour.id.toString(),
                          language,
                          snapshot.data,
                          cubit.timeForTourRemains,
                        ),
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),
              );
              break;
            case PlayStatus.downloading:
              await showDialog(
                context: context,
                builder: (context) => TextDialog(
                  title: loc.downloading,
                  content: loc.waitOnDownloading,
                  withCancel: false,
                  btnOkText: loc.ok,
                ),
              );
              break;
          }
        });
  }

  List<Widget> buildInfoRows(ThemeData theme, MLoc loc) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        child: Row(
          children: [
            Image.asset(
              Images.queryBuilderGreen,
              height: iconSize,
            ),
            horizontalSpacer(spaceSmall),
            Text(
              cubit.tour.duration,
              style: theme.textTheme.bodyText2,
            )
          ],
        ),
      ),
      verticalSpacer(spaceSuperSmall),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        child: Row(
          children: [
            Image.asset(
              Images.directionsWalkGreen,
              height: iconSize,
            ),
            horizontalSpacer(spaceSmall),
            Text(
              cubit.tour.distance,
              style: theme.textTheme.bodyText2,
            )
          ],
        ),
      ),
      verticalSpacer(spaceSuperSmall),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        child: Row(
          children: [
            Image.asset(
              Images.gpsFixedGreen,
              height: iconSize,
            ),
            horizontalSpacer(spaceSmall),
            Text(
              '${cubit.stopsAmount} ${loc.points}',
              style: theme.textTheme.bodyText2,
            )
          ],
        ),
      ),
      verticalSpacer(spaceSuperSmall),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
        child: Row(
          children: [
            Image.asset(
              Images.gTranslate,
              height: iconSize,
            ),
            horizontalSpacer(spaceSmall),
            Flexible(
              child: Text(
                cubit.tour.languages.fold(
                    '',
                    (previousValue, element) =>
                        '$previousValue${previousValue.isNotEmpty ? ', ' : ''}${FullLang.getFullName(
                          element,
                          nativeName: true,
                        )}'),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyText2,
              ),
            )
          ],
        ),
      ),
    ];
  }

  Widget _buildTourType(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: cubit.tour.typeIcon,
          width: iconSizeMiddle,
        ),
        horizontalSpacer(horizontalSpace),
        Text(
          cubit.tour.type,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }

  Widget buildSights(MLoc loc) {
    return cubit.tour.sights.isEmpty
        ? EmptyListPlaceholder(placeholderText: loc.noSightsYet)
        : Column(
            children: cubit.tour.sights
                .map((sightsRes) => SightItem(
                      sights: sightsRes,
                      onTap: () => _goToSight(context, sightsRes.id, sightsRes.name),
                    ))
                .toList(),
          );
  }

  void _dismissAudioPlayer() {
    var eventBus = locator<EventBus>();
    eventBus.fire(DismissPlayerEvent());
  }

  void _goToPaymentScreen(BuildContext context, Tour tour) async {
    _dismissAudioPlayer();
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(
        MainPaymentScreen(tour: cubit.tour),
      );
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(
        CatalogPaymentScreen(tour: cubit.tour),
      );
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      await navigator.push(
        ProfilePaymentScreen(tour: cubit.tour),
      );
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      await navigator.push(
        MyOrdersPaymentScreen(tour: cubit.tour),
      );
    }
    cubit.refreshData();
    checkForLoadingStatus();
  }

  void _goToTourMapScreen(
    BuildContext context,
    String tourId,
    String language,
    List<String>? allLanguages,
    int timeForTourRemains,
  ) async {
    _dismissAudioPlayer();
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainTourMapScreen(
        tourId: tourId,
        language: language,
        allLanguages: allLanguages,
        tourActivatingTime: timeForTourRemains,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogTourMapScreen(
        tourId: tourId,
        language: language,
        allLanguages: allLanguages,
        tourActivatingTime: timeForTourRemains,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      await navigator.push(ProfileTourMapScreen(
        tourId: tourId,
        language: language,
        allLanguages: allLanguages,
        tourActivatingTime: timeForTourRemains,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      await navigator.push(MyOrdersTourMapScreen(
        tourId: tourId,
        language: language,
        allLanguages: allLanguages,
        tourActivatingTime: timeForTourRemains,
      ));
    }
    cubit.refreshData();
  }

  void _goToMapPreview(BuildContext context, String tourId, String tourName) {
    _dismissAudioPlayer();
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainMapPreviewScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogMapPreviewScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileMapPreviewScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersMapPreviewScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    }
  }

  void _goToSight(BuildContext context, int sightsId, String sightName) async {
    _dismissAudioPlayer();
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
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      await navigator.push(ProfileSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      await navigator.push(MyOrdersSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    }
    cubit.refreshData();
  }

  void onDownloaded(MLoc loc) {
    composeGreenMessage(loc.tourDownloaded).show(context);
    setState(() {
      _isAnimationPaused = true;
    });
  }

  void _goToTheGuide() {
    _dismissAudioPlayer();
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    }
  }

  void _onTapDownload() async {
    _dismissAudioPlayer();
    final navigator = context.router;
    var isDownloading;
    if (navigator.routeData.name == MainScreenRouter.name) {
      isDownloading = await navigator.push(MainDownloadScreen(
        tour: cubit.tour,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      isDownloading = await navigator.push(CatalogDownloadScreen(
        tour: cubit.tour,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      isDownloading = await navigator.push(ProfileDownloadScreen(
        tour: cubit.tour,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      isDownloading = await navigator.push(MyOrdersDownloadScreen(
        tour: cubit.tour,
      ));
    }
    if (isDownloading != null) {
      setState(() {
        _isAnimationPaused = false;
      });
      cubit.listenDownloading();
    }
  }
}

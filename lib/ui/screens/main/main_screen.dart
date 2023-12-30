import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/main/cubit/main_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/main/widgets/curves_clipper.dart';
import 'package:mapo_travel_guide/ui/screens/main/widgets/curves_figure.dart';
import 'package:mapo_travel_guide/ui/screens/main/widgets/languages_bottom_sheet/languages_bottom_sheet.dart';
import 'package:mapo_travel_guide/ui/screens/main_ask_location/main_ask_location_screen.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_rounded_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item.dart';
import 'package:mapo_travel_guide/ui/shared/search_text_field.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/branch_link_provider.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:permission_handler/permission_handler.dart' as permissions;
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final RefreshController _refreshController = RefreshController();
  MainScreenCubit cubit = locator<MainScreenCubit>();
  EventBus navigationBus = locator<EventBus>();
  var branchLinkProvider = locator<BranchLinkProvider>();
  bool wentToAnotherScreen = false;
  late StreamSubscription<Map> streamSubscription;

  @override
  void initState() {
    super.initState();
    // cubit.refresh();
    _listenBottomBarButton();
    listenToDynamicLinks();
    cubit.listenNetworkConnection();
    _checkIsFirstLaunch();
  }

  void _checkIsFirstLaunch() async {
    await Future.delayed(Duration(seconds: 2));
    var isFirst = await cubit.isFirsLaunch();
    if (isFirst) {
      createLanguagesModalWindow();
    }
  }

  void listenToDynamicLinks() async {
    if (branchLinkProvider.dataFromAuth != null) {
      branchLinkProvider.handleLink(context, branchLinkProvider.dataFromAuth!);
      branchLinkProvider.dataFromAuth = null;
    }
    streamSubscription = FlutterBranchSdk.initSession().listen((data) {
      if (data.containsKey('+clicked_branch_link') && data['+clicked_branch_link'] == true) {
        branchLinkProvider.handleLink(context, data);
      }
    }, onError: (error) {
      var platformException = error as PlatformException;
      print('InitSession error: ${platformException.code} - ${platformException.message}');
    });
  }

  void _listenBottomBarButton() async {
    navigationBus.on<NavigateMainScreenRootEvent>().listen((event) {
      log('home button tapped. variable wentToAnotherScreen = $wentToAnotherScreen');
      if (wentToAnotherScreen) {
        wentToAnotherScreen = false;
        context.router.popUntilRoot();
      }
    });
  }

  @override
  void dispose() {
    cubit.dispose();
    streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var loc = MLoc.of(context);

    cubit.checkLanguageChanging();

    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocConsumer<MainScreenCubit, MainScreenState>(
          bloc: cubit,
          listener: (context, state) {
            state.maybeWhen(
              error: (err) => composeRedMessage(err.localizedMessage(context)).show(context),
              locationDeniedForever: () => _openLocationSettings(loc),
              proceedLogout: () {
                context.router.root.pushAndPopUntil(
                  AuthorizationScreenRoute(),
                  predicate: (route) => false,
                );
              },
              orElse: () {},
            );
          },
          buildWhen: (previous, current) {
            return current.maybeWhen(
              error: (err) => false,
              orElse: () => true,
            );
          },
          builder: (context, state) {
            log(state.toString());
            // MainScreenCubit cubit = context.watch();
            return state.maybeWhen(
              initial: () => initContent(size, loc, theme, context, cubit),
              loading: () => EndlessProgress(),
              locationNotDefined: () => initContent(size, loc, theme, context, cubit),
              locationPermission: () => MainAskLocationScreen(bloc: cubit),
              locationDefined: () => initContent(size, loc, theme, context, cubit),
              // error: (err) => MapoErrorWidget(
              //   message: ErrorResponse(0, loc.noNetworkConnection),
              //   withBackButton: false,
              // ),
              locationDeniedForever: () => MainAskLocationScreen(bloc: cubit),
              orElse: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  void _onRefresh(MainScreenCubit cubit) async {
    await cubit.getRecommendedTours();
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    _refreshController.loadComplete();
  }

  Widget initContent(
      Size size, MLoc loc, ThemeData theme, BuildContext context, MainScreenCubit cubit) {
    // MainScreenCubit cubit = context.watch();
    return SmartRefresher(
        enablePullDown: true,
        controller: _refreshController,
        header: WaterDropMaterialHeader(),
        onLoading: () => _onLoading(),
        onRefresh: () => _onRefresh(cubit),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              header(size, loc, theme, context, cubit),
              verticalSpacer(spaceSmall),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: RichText(
                    text: TextSpan(
                  style: theme.textTheme.bodyText1!.apply(color: colorDarkBlue),
                  children: [
                    TextSpan(
                      text: '${loc.choosePlaceForTrip} ',
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        Images.compas,
                        height: 25,
                      ),
                    ),
                  ],
                )),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: SearchTextField(
                  onTap: () => _goToTheWhereToGo(context, loc, cubit),
                ),
              ),
              verticalSpacer(spaceDefault),
              if (cubit.tours.isNotEmpty && cubit.tours.length > 3)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                  child: Text(
                    loc.popularAudiotour,
                    style: theme.textTheme.headline6!.apply(color: colorDarkBlue),
                  ),
                ),
              verticalSpacer(spaceDefault),
              if (cubit.tours.isNotEmpty && cubit.tours.length > 3)
                popularAudiotours(context, loc, theme, size, cubit),
              verticalSpacer(spaceDefault),
            ],
          ),
        ));
  }

  Widget header(Size size, MLoc loc, ThemeData theme, BuildContext context, MainScreenCubit cubit) {
    var heightFactor = .42;
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CustomPaint(
          size: Size(size.width, size.height * heightFactor),
          painter: CurvesCustomPainter(),
        ),
        Container(
          height: size.height * .42,
          child: ClipPath(
            clipper: CurvesClipper(),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    Images.mainCityImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black.withOpacity(.8), Colors.transparent],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        cubit.cityId == null
            ? SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(left: paddingDefault, bottom: 4),
                child: GreenRoundedButton(
                  title: loc.look,
                  onPressed: () => _goToTheRecommendedTours(context),
                ),
              ),
        Positioned(
          width: size.width,
          top: 0,
          left: 0,
          height: size.height * heightFactor,
          child: Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images.logoLong,
                      height: size.height * .075,
                      fit: BoxFit.fill,
                    ),
                    MapoIconButton(
                      imagePath: Images.languageIcon,
                      color: null,
                      size: iconSizeBig,
                      padding: 0,
                      onTap: () => createLanguagesModalWindow(),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      loc.hello,
                      style: theme.textTheme.headline5!.apply(color: colorWhite),
                    ),
                    Image.asset(
                      Images.smile,
                      height: iconSize,
                    ),
                  ],
                ),
                if (cubit.isLocationDefined)
                  Container(
                    height: size.height * 0.07,
                    child: cubit.cityId == null
                        ? AutoSizeText(
                            '${loc.geoSaysThatYouIn1} - ${cubit.cityName}\n${loc.geoSaysNoToursInYourCity}',
                            style: theme.textTheme.headline6!.apply(color: colorWhite),
                            minFontSize: 8,
                            maxLines: 3,
                          )
                        : AutoSizeText(
                            '${loc.geoSaysThatYouIn1} - ${cubit.cityName}\n${loc.geoSaysThatYouIn2}',
                            style: theme.textTheme.headline6!.apply(color: colorWhite),
                            minFontSize: 8,
                            maxLines: 3,
                          ),
                  ),
                verticalSpacer(spaceDefault),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget popularAudiotours(
      BuildContext context, MLoc loc, ThemeData theme, Size size, MainScreenCubit cubit) {
    // MainScreenCubit cubit = context.watch();
    return Container(
      width: size.width,
      height: size.height * .19,
      child: cubit.tours.isNotEmpty && cubit.tours.length <= 3
          ? buildEmptyToursPlaceholder(loc, theme)
          : buildListOfPopularTours(
              context,
              cubit.tours,
            ),
    );
  }

  Widget buildListOfPopularTours(BuildContext context, List<Tour> popularTours) {
    return FutureBuilder<Map<String, String>>(
        future: Currencies.prepareToursPrices(cubit.tours),
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
                                price: snapshot.data![Platform.isAndroid
                                    ? tour.googleProductId
                                    : tour.appleProductId]!,
                                tour: tour,
                                showPrice: !(tour.paid),
                                onTap: () => _goToATourScreen(context, tour),
                              )))
                    .toList());
          } else {
            return SizedBox.shrink();
          }
        });
  }

  void createLanguagesModalWindow() async {
    await showCustomModalBottomSheet(
        context: context,
        enableDrag: true,
        useRootNavigator: true,
        animationCurve: Curves.easeInOut,
        duration: Duration(milliseconds: 200),
        containerWidget: (context, animation, child) {
          return LanguagesBottomSheet(
            onUpdate: () {
              cubit.getRecommendedTours();
            },
          );
        },
        isDismissible: true,
        builder: (context) {
          return LanguagesBottomSheet(
            onUpdate: () {
              cubit.getRecommendedTours();
            },
          );
        });
  }

  Widget buildEmptyToursPlaceholder(MLoc loc, ThemeData theme) {
    return Center(
      child: Text(
        loc.noExcursionsYet,
        style: theme.textTheme.bodyText1!.apply(color: colorDarkBlue),
      ),
    );
  }

  Future<void> _goToTheWhereToGo(BuildContext context, MLoc loc, MainScreenCubit cubit) async {
    // MainScreenCubit cubit = context.read<MainScreenCubit>();
    wentToAnotherScreen = true;
    var s = cubit.countryCode ?? loc.locale.countryCode;
    await context.router.push(MainWhereGoSearchScreen(
      countryCode: s!.toLowerCase(),
    ));
    wentToAnotherScreen = false;
    cubit.refresh();
  }

  Future<void> _goToATourScreen(BuildContext context, Tour tour) async {
    wentToAnotherScreen = true;
    await context.router.push(MainTourScreen(
      tourId: tour.id.toString(),
      tourName: tour.name,
    ));
    wentToAnotherScreen = false;
    cubit.refresh();
  }

  Future<void> _goToTheRecommendedTours(BuildContext context) async {
    wentToAnotherScreen = true;
    await context.router.push(MainRecommendedToursScreen(
      city: City(
        id: cubit.cityId,
        name: cubit.cityName,
      ),
    ));
    wentToAnotherScreen = false;
    cubit.refresh();
  }

  void _openLocationSettings(MLoc loc) {
    showDialog(
      context: context,
      builder: (context) => TextDialog(
        title: loc.locationDenied,
        content: loc.locationDeniedContent,
        btnOkText: loc.open,
        withCancel: true,
        onOk: () async {
          await permissions.openAppSettings();
          cubit.refresh();
        },
      ),
    );
  }
}

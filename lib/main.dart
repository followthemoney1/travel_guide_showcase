import 'dart:async';
import 'dart:ui';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kDebugMode;
import 'package:event_bus/event_bus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/country/country.dart';
import 'package:mapo_travel_guide/data/dto/download_info/tour_language_info.dart';
import 'package:mapo_travel_guide/data/dto/image_dto.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/data/network/models/download_tour_response.dart';
import 'package:mapo_travel_guide/data/network/models/my_orders.dart';
import 'package:mapo_travel_guide/data/network/models/popular_city.dart';
import 'package:mapo_travel_guide/data/network/models/profile.dart';
import 'package:mapo_travel_guide/data/network/models/questions_and_answers.dart';
import 'package:mapo_travel_guide/data/network/models/search_response.dart';
import 'package:mapo_travel_guide/data/network/models/sights.dart';
import 'package:mapo_travel_guide/data/network/models/tour_route.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/authorization/cubit/authorization_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/catalog/cubit/catalog_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/city_guides/cubit/city_guides_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/main/cubit/main_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/onboarding/cubit/onboarding_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/edit_data/cubit/edit_data_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/favorites/cubit/favorites_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/cubit/profile_main_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/settings/cubit/settings_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/recommended_tours/cubit/recommended_tours_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/recovery_password/cubit/recovery_password_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/register/cubit/register_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/sight/cubit/sight_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/tour_list/cubit/tour_list_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/where_go_search/cubit/where_go_search_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/speech_recognition_cubit/speech_recognition_cubit.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/change_language_event.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'data/dto/guide/guide.dart';
import 'data/dto/payment/payment.dart';
import 'data/dto/sight_route_item.dart';
import 'data/network/models/guides.dart';
import 'data/network/models/profile.dart';
import 'data/network/models/recommended_tours.dart';
import 'data/network/models/sight_response.dart';
import 'ui/screens/successfull_registration/cubit/successful_registration_cubit.dart';
import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterDownloader.initialize(debug: true);

  // Inform the plugin that this app supports pending purchases on Android.
  // An error will occur on Android if you access the plugin `instance`
  // without this call.
  //
  // On iOS this is a no-op.
    if (defaultTargetPlatform == TargetPlatform.android) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }

  //Hive
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(TourAdapter());
  Hive.registerAdapter(CityAdapter());
  Hive.registerAdapter(GuideAdapter());
  Hive.registerAdapter(UserPromocodesResponseAdapter());
  Hive.registerAdapter(ActiveOrdersResponseAdapter());
  Hive.registerAdapter(ArchiveOrdersResponseAdapter());
  Hive.registerAdapter(FavoritesResponseAdapter());
  Hive.registerAdapter(CountryAdapter());
  Hive.registerAdapter(PopularCityResponseAdapter());
  Hive.registerAdapter(SearchResponseAdapter());
  Hive.registerAdapter(SightResponseAdapter());
  Hive.registerAdapter(RecommendedToursResponseAdapter());
  Hive.registerAdapter(GuidesResponseAdapter());
  Hive.registerAdapter(QuestionAndAnswerResponseAdapter());
  Hive.registerAdapter(QuestionAndAnswerAdapter());
  Hive.registerAdapter(CityResponseAdapter());
  Hive.registerAdapter(AchievementAdapter());
  Hive.registerAdapter(ToursQuantityAdapter());
  Hive.registerAdapter(SightAdapter());
  Hive.registerAdapter(CitySightsResponseAdapter());
  Hive.registerAdapter(TourRouteResponseAdapter());
  Hive.registerAdapter(SightRouteItemAdapter());
  Hive.registerAdapter(TourLanguageInfoAdapter());
  Hive.registerAdapter(DownloadTourResponseAdapter());
  Hive.registerAdapter(TimeForTourRemainsAdapter());
  Hive.registerAdapter(ImageDtoAdapter());
  Hive.registerAdapter(PaymentAdapter());
  Hive.registerAdapter(SocialNetworksAdapter());
  // getIt
  configureDependencies();
  // FlutterBranchSdk.validateSDKIntegration();
  runApp(initApp());
}

Widget initApp() {
  return MultiBlocProvider(providers: [
    BlocProvider<SplashScreenCubit>(create: (context) => locator.get<SplashScreenCubit>()),
    BlocProvider<OnboardingScreenCubit>(create: (context) => locator.get<OnboardingScreenCubit>()),
    BlocProvider<RecoveryPasswordCubit>(create: (context) => locator.get<RecoveryPasswordCubit>()),
    BlocProvider<SuccessfulRegistrationCubit>(create: (context) => locator.get<SuccessfulRegistrationCubit>()),
    BlocProvider<AuthorizationCubit>(create: (context) => locator.get<AuthorizationCubit>()),
    BlocProvider<RegisterCubit>(create: (context) => locator.get<RegisterCubit>()),
    BlocProvider<MainScreenCubit>(create: (context) => locator.get<MainScreenCubit>()),
    BlocProvider<WhereGoSearchCubit>(create: (context) => locator.get<WhereGoSearchCubit>()),
    BlocProvider<ProfileMainCubit>(create: (context) => locator.get<ProfileMainCubit>()),
    BlocProvider<SettingsScreenCubit>(create: (context) => locator.get<SettingsScreenCubit>()),
    BlocProvider<EditDataCubit>(create: (context) => locator.get<EditDataCubit>()),
    BlocProvider<FavoritesCubit>(create: (context) => locator.get<FavoritesCubit>()),
    BlocProvider<SpeechRecognitionCubit>(create: (context) => locator.get<SpeechRecognitionCubit>()),
    BlocProvider<CatalogCubit>(create: (context) => locator.get<CatalogCubit>()),
    BlocProvider<FilterCubit>(create: (context) => locator.get<FilterCubit>()),
    BlocProvider<RecommendedToursCubit>(create: (context) => locator.get<RecommendedToursCubit>()),
    BlocProvider<TourListCubit>(create: (context) => locator.get<TourListCubit>()),
    BlocProvider<CityGuidesCubit>(create: (context) => locator.get<CityGuidesCubit>()),
    BlocProvider<SightCubit>(create: (context) => locator.get<SightCubit>()),
  ], child: MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // StreamSubscription<Map> streamSubscription;
  Locale? locale;
  late StreamSubscription changeLanguageSubscription;

  Future getLanguageString() async {
    final language = await MLoc.getAppLanguage();
    locale = Locale(language, '');
    setState(() {});
    var eventBus = locator<EventBus>();
    changeLanguageSubscription = eventBus.on<ChangeLanguageEvent>().listen((event) {
      setState(() {
        locale = Locale(event.lang, '');
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initOneSignal();
    getLanguageString();
    _initCrashlytics();
  }

  final _appRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    var screenWidth = window.physicalSize.width;
    var theme = Theme.of(context);
    return MaterialApp.router(
      locale: locale ?? Locale(LC.en, ''),
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => MLoc.of(context).title,
      localizationsDelegates: [
        const MapoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        RefreshLocalizations.delegate,
      ],
      supportedLocales: [const Locale(LC.en, ''), const Locale(LC.ru, '')],
      theme: _initTheme(theme, screenWidth),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // builder:  AutoRouter.builder<MyRouter>(router: MyRouter()),
    );
  }

  ThemeData _initTheme(ThemeData theme, double screenWidth) {
    return ThemeData(
        appBarTheme: AppBarTheme(
            color: colorGreenGradientEnd,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: screenWidth < 500 ? textThemeSmall.apply(bodyColor: Colors.white) : textThemeDefault.apply(bodyColor: Colors.white)),
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: colorGreenGradientStart,
        focusColor: colorGreenGradientStart,
        accentColor: colorGreenGradientStart,
        unselectedWidgetColor: colorGrey,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoWillPopScopePageTransionsBuilder(),
          },
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: colorNavyBlue),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: colorGreenGradientEnd),
            ),
            labelStyle: theme.textTheme.caption!.copyWith(color: colorGreenGradientEnd),
            hintStyle: theme.textTheme.bodyText2),
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
        fontFamily: 'SFPro',
        sliderTheme: SliderThemeData(trackShape: CustomTrackShape()));
  }

  @override
  void dispose() {
    Hive.close();
    changeLanguageSubscription.cancel();
    super.dispose();
  }

  void initOneSignal() async {
    //Remove this method to stop OneSignal Debugging
    await OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    await OneSignal.shared.setAppId(
      onesignalAppId,
      // iOSSettings: {
      //   OSiOSSettings.autoPrompt: false,
      //   OSiOSSettings.inAppLaunchUrl: false,
      // },
    );
    OneSignal.shared.setNotificationWillShowInForegroundHandler((OSNotificationReceivedEvent event) => event.complete(event.notification));

    // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    await OneSignal.shared.promptUserForPushNotificationPermission(fallbackToSettings: true);
  }

  void _initCrashlytics() async {
    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {}
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }

  // void listenToDynamicLinks() async {
  //   streamSubscription = FlutterBranchSdk.initSession().listen((data) {
  //     if (data.containsKey('+clicked_branch_link') && data['+clicked_branch_link'] == true) {
  //       branchLinkProvider.handleLink(context, data);
  //     }
  //   }, onError: (error) {
  //     var platformException = error as PlatformException;
  //     print('InitSession error: ${platformException.code} - ${platformException.message}');
  //   });
  // }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

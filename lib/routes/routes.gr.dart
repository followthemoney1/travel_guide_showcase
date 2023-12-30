// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:mapo_travel_guide/data/dto/city/city.dart' as _i41;
import 'package:mapo_travel_guide/data/dto/guide/guide.dart' as _i43;
import 'package:mapo_travel_guide/data/dto/sights/sights.dart' as _i42;
import 'package:mapo_travel_guide/data/dto/tour/tour.dart' as _i39;
import 'package:mapo_travel_guide/ui/screens/authorization/authorization_screen.dart'
    as _i5;
import 'package:mapo_travel_guide/ui/screens/base_navigator.dart' as _i4;
import 'package:mapo_travel_guide/ui/screens/catalog/catalog_screen.dart'
    as _i26;
import 'package:mapo_travel_guide/ui/screens/city/city_screen.dart' as _i15;
import 'package:mapo_travel_guide/ui/screens/city_guides/city_guides_screen.dart'
    as _i18;
import 'package:mapo_travel_guide/ui/screens/download/download_screen.dart'
    as _i10;
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart'
    as _i40;
import 'package:mapo_travel_guide/ui/screens/filter/filter_screen.dart' as _i14;
import 'package:mapo_travel_guide/ui/screens/guide/guide_screen.dart' as _i16;
import 'package:mapo_travel_guide/ui/screens/main/main_screen.dart' as _i12;
import 'package:mapo_travel_guide/ui/screens/map_preview/map_preview_screen.dart'
    as _i25;
import 'package:mapo_travel_guide/ui/screens/my_orders/my_orders_screen.dart'
    as _i27;
import 'package:mapo_travel_guide/ui/screens/my_orders/orders_full_list_screen.dart'
    as _i28;
import 'package:mapo_travel_guide/ui/screens/onboarding/onboarding_screen.dart'
    as _i6;
import 'package:mapo_travel_guide/ui/screens/payment/payment_screen.dart'
    as _i24;
import 'package:mapo_travel_guide/ui/screens/profile/about/about_screen.dart'
    as _i38;
import 'package:mapo_travel_guide/ui/screens/profile/edit_data/edit_data_screen.dart'
    as _i30;
import 'package:mapo_travel_guide/ui/screens/profile/favorites/favorites_screen.dart'
    as _i31;
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/profile_main_screen.dart'
    as _i29;
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/my_promocodes/my_promocodes_screen.dart'
    as _i33;
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/promocodes_menu/promocodes_menu_screen.dart'
    as _i32;
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/share_promocode/share_promocode_screen.dart'
    as _i34;
import 'package:mapo_travel_guide/ui/screens/profile/questions_and_answers/questions_and_answers_screen.dart'
    as _i36;
import 'package:mapo_travel_guide/ui/screens/profile/settings/settings_screen.dart'
    as _i35;
import 'package:mapo_travel_guide/ui/screens/profile/support/support_screen.dart'
    as _i37;
import 'package:mapo_travel_guide/ui/screens/profile/terms_and_conditions/terms_and_conditions_screen.dart'
    as _i11;
import 'package:mapo_travel_guide/ui/screens/recommended_tours/recommended_tours_screen.dart'
    as _i19;
import 'package:mapo_travel_guide/ui/screens/recovery_password/recovery_password_screen.dart'
    as _i7;
import 'package:mapo_travel_guide/ui/screens/register/register_screen.dart'
    as _i9;
import 'package:mapo_travel_guide/ui/screens/sight/sight_screen.dart' as _i21;
import 'package:mapo_travel_guide/ui/screens/sights_list/sights_list_screen.dart'
    as _i22;
import 'package:mapo_travel_guide/ui/screens/splash/splash_screen.dart' as _i3;
import 'package:mapo_travel_guide/ui/screens/successfull_registration/successful_registration_screen.dart'
    as _i8;
import 'package:mapo_travel_guide/ui/screens/tour/tour_screen.dart' as _i20;
import 'package:mapo_travel_guide/ui/screens/tour_list/tour_list_screen.dart'
    as _i17;
import 'package:mapo_travel_guide/ui/screens/tour_map/tour_map_screen.dart'
    as _i23;
import 'package:mapo_travel_guide/ui/screens/where_go_search/where_go_search_screen.dart'
    as _i13;

class MyRouter extends _i1.RootStackRouter {
  MyRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SplashScreenRouteArgs>(
              orElse: () => const SplashScreenRouteArgs());
          return _i3.SplashScreen(key: args.key);
        }),
    BaseNavigatorRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.BaseNavigator();
        },
        maintainState: false),
    AuthorizationScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AuthorizationScreen();
        }),
    OnboardingScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OnboardingScreenRouteArgs>(
              orElse: () => const OnboardingScreenRouteArgs());
          return _i6.OnboardingScreen(key: args.key);
        }),
    RecoveryPasswordScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RecoveryPasswordScreenRouteArgs>(
              orElse: () => const RecoveryPasswordScreenRouteArgs());
          return _i7.RecoveryPasswordScreen(key: args.key);
        },
        maintainState: false),
    SuccessfulRegistrationScreenRoute.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<SuccessfulRegistrationScreenRouteArgs>(
                  orElse: () => const SuccessfulRegistrationScreenRouteArgs());
              return _i8.SuccessfulRegistrationScreen(key: args.key);
            }),
    RegisterScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.RegisterScreen();
        },
        maintainState: false),
    DownloadScreenRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DownloadScreenRouteArgs>();
          return _i10.DownloadScreen(key: args.key, tour: args.tour);
        },
        fullscreenDialog: true),
    TermsAndConditionsScreenRoute.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<TermsAndConditionsScreenRouteArgs>(
                  orElse: () => const TermsAndConditionsScreenRouteArgs(showTermsOfUse: false));
              return _i11.TermsAndConditionsScreen(
                  key: args.key, showTermsOfUse: args.showTermsOfUse);
            }),
    MainScreenRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    CatalogScreenRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    MyOrdersScreenRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ProfileMainScreenRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    MainScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.MainScreen();
        }),
    MainWhereGoSearchScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainWhereGoSearchScreenArgs>();
          return _i13.WhereGoSearchScreen(
              key: args.key, countryCode: args.countryCode);
        }),
    MainFilterScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainFilterScreenArgs>();
          return _i14.FilterScreen(
              key: args.key, type: args.type, identifier: args.identifier);
        }),
    MainCityScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainCityScreenArgs>();
          return _i15.CityScreen(key: args.key, cityId: args.cityId);
        }),
    MainGuideScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainGuideScreenArgs>();
          return _i16.GuideScreen(
              key: args.key, guideId: args.guideId, cityName: args.cityName);
        }),
    MainTourListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainTourListScreenArgs>();
          return _i17.TourListScreen(
              key: args.key,
              city: args.city,
              sight: args.sight,
              guide: args.guide,
              categoryId: args.categoryId);
        }),
    MainCityGuidesScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainCityGuidesScreenArgs>();
          return _i18.CityGuidesScreen(key: args.key, city: args.city);
        }),
    MainRecommendedToursScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainRecommendedToursScreenArgs>();
          return _i19.RecommendedToursScreen(key: args.key, city: args.city);
        }),
    MainTourScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainTourScreenArgs>();
          return _i20.TourScreen(args.tourId,
              tourName: args.tourName, key: args.key);
        }),
    MainSightScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainSightScreenArgs>();
          return _i21.SightScreen(
              key: args.key, sightId: args.sightId, sightName: args.sightName);
        }),
    MainSightsListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainSightsListScreenArgs>();
          return _i22.SightsListScreen(key: args.key, city: args.city);
        }),
    MainTourMapScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainTourMapScreenArgs>();
          return _i23.TourMapScreen(
              key: args.key,
              tourActivatingTime: args.tourActivatingTime,
              tourId: args.tourId,
              language: args.language,
              allLanguages: args.allLanguages);
        }),
    MainDownloadScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainDownloadScreenArgs>();
          return _i10.DownloadScreen(key: args.key, tour: args.tour);
        }),
    MainPaymentScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainPaymentScreenArgs>();
          return _i24.PaymentScreen(key: args.key, tour: args.tour);
        }),
    MainMapPreviewScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainMapPreviewScreenArgs>(
              orElse: () => const MainMapPreviewScreenArgs());
          return _i25.MapPreviewScreen(
              key: args.key, tourId: args.tourId, tourName: args.tourName);
        }),
    CatalogScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogScreenArgs>(
              orElse: () => const CatalogScreenArgs());
          return _i26.CatalogScreen(key: args.key);
        }),
    CatalogFilterScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogFilterScreenArgs>();
          return _i14.FilterScreen(
              key: args.key, type: args.type, identifier: args.identifier);
        }),
    CatalogCityScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogCityScreenArgs>();
          return _i15.CityScreen(key: args.key, cityId: args.cityId);
        }),
    CatalogGuideScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogGuideScreenArgs>();
          return _i16.GuideScreen(
              key: args.key, guideId: args.guideId, cityName: args.cityName);
        }),
    CatalogTourListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogTourListScreenArgs>();
          return _i17.TourListScreen(
              key: args.key,
              city: args.city,
              sight: args.sight,
              guide: args.guide,
              categoryId: args.categoryId);
        }),
    CatalogCityGuidesScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogCityGuidesScreenArgs>();
          return _i18.CityGuidesScreen(key: args.key, city: args.city);
        }),
    CatalogRecommendedToursScreen.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<CatalogRecommendedToursScreenArgs>();
              return _i19.RecommendedToursScreen(
                  key: args.key, city: args.city);
            }),
    CatalogTourScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogTourScreenArgs>();
          return _i20.TourScreen(args.tourId,
              tourName: args.tourName, key: args.key);
        }),
    CatalogSightScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogSightScreenArgs>();
          return _i21.SightScreen(
              key: args.key, sightId: args.sightId, sightName: args.sightName);
        }),
    CatalogSightsListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogSightsListScreenArgs>();
          return _i22.SightsListScreen(key: args.key, city: args.city);
        }),
    CatalogTourMapScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogTourMapScreenArgs>();
          return _i23.TourMapScreen(
              key: args.key,
              tourActivatingTime: args.tourActivatingTime,
              tourId: args.tourId,
              language: args.language,
              allLanguages: args.allLanguages);
        }),
    CatalogDownloadScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogDownloadScreenArgs>();
          return _i10.DownloadScreen(key: args.key, tour: args.tour);
        }),
    CatalogPaymentScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogPaymentScreenArgs>();
          return _i24.PaymentScreen(key: args.key, tour: args.tour);
        }),
    CatalogMapPreviewScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CatalogMapPreviewScreenArgs>(
              orElse: () => const CatalogMapPreviewScreenArgs());
          return _i25.MapPreviewScreen(
              key: args.key, tourId: args.tourId, tourName: args.tourName);
        }),
    MyOrdersScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i27.MyOrdersScreen();
        }),
    MyOrdersOrdersFullListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersOrdersFullListScreenArgs>();
          return _i28.OrdersFullListScreen(
              key: args.key, tours: args.tours, title: args.title);
        }),
    MyOrdersFilterScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersFilterScreenArgs>();
          return _i14.FilterScreen(
              key: args.key, type: args.type, identifier: args.identifier);
        }),
    MyOrdersTourScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersTourScreenArgs>();
          return _i20.TourScreen(args.tourId,
              tourName: args.tourName, key: args.key);
        }),
    MyOrdersGuideScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersGuideScreenArgs>();
          return _i16.GuideScreen(
              key: args.key, guideId: args.guideId, cityName: args.cityName);
        }),
    MyOrdersSightScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersSightScreenArgs>();
          return _i21.SightScreen(
              key: args.key, sightId: args.sightId, sightName: args.sightName);
        }),
    MyOrdersDownloadScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersDownloadScreenArgs>();
          return _i10.DownloadScreen(key: args.key, tour: args.tour);
        }),
    MyOrdersTourMapScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersTourMapScreenArgs>();
          return _i23.TourMapScreen(
              key: args.key,
              tourActivatingTime: args.tourActivatingTime,
              tourId: args.tourId,
              language: args.language,
              allLanguages: args.allLanguages);
        }),
    MyOrdersPaymentScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersPaymentScreenArgs>();
          return _i24.PaymentScreen(key: args.key, tour: args.tour);
        }),
    MyOrdersSightsListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersSightsListScreenArgs>();
          return _i22.SightsListScreen(key: args.key, city: args.city);
        }),
    MyOrdersTourListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersTourListScreenArgs>();
          return _i17.TourListScreen(
              key: args.key,
              city: args.city,
              sight: args.sight,
              guide: args.guide,
              categoryId: args.categoryId);
        }),
    MyOrdersMapPreviewScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyOrdersMapPreviewScreenArgs>(
              orElse: () => const MyOrdersMapPreviewScreenArgs());
          return _i25.MapPreviewScreen(
              key: args.key, tourId: args.tourId, tourName: args.tourName);
        }),
    ProfileMainScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i29.ProfileMainScreen();
        }),
    ProfileEditDataScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i30.EditDataScreen();
        }),
    ProfileFavoritesScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i31.FavoritesScreen();
        }),
    ProfilePromocodesMenuScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i32.PromocodesMenuScreen();
        }),
    ProfileMyPromocodesScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i33.MyPromocodesScreen();
        }),
    ProfileSharePromocodeScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i34.SharePromocodeScreen();
        }),
    ProfileSettingsScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i35.SettingsScreen();
        }),
    ProfileQuestionsAndAnswersScreen.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<ProfileQuestionsAndAnswersScreenArgs>(
                  orElse: () => const ProfileQuestionsAndAnswersScreenArgs());
              return _i36.QuestionsAndAnswersScreen(key: args.key);
            }),
    ProfileTermsAndConditionsScreen.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<ProfileTermsAndConditionsScreenArgs>(
                  orElse: () => const ProfileTermsAndConditionsScreenArgs(showTermsOfUse: false));
              return _i11.TermsAndConditionsScreen(
                  key: args.key, showTermsOfUse: args.showTermsOfUse);
            }),
    ProfileSupportScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i37.SupportScreen();
        }),
    ProfileAboutScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i38.AboutScreen();
        }),
    ProfileFilterScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileFilterScreenArgs>();
          return _i14.FilterScreen(
              key: args.key, type: args.type, identifier: args.identifier);
        }),
    ProfileTourScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileTourScreenArgs>();
          return _i20.TourScreen(args.tourId,
              tourName: args.tourName, key: args.key);
        }),
    ProfileSightScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSightScreenArgs>();
          return _i21.SightScreen(
              key: args.key, sightId: args.sightId, sightName: args.sightName);
        }),
    ProfileGuideScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileGuideScreenArgs>();
          return _i16.GuideScreen(
              key: args.key, guideId: args.guideId, cityName: args.cityName);
        }),
    ProfileDownloadScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileDownloadScreenArgs>();
          return _i10.DownloadScreen(key: args.key, tour: args.tour);
        }),
    ProfileTourMapScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileTourMapScreenArgs>();
          return _i23.TourMapScreen(
              key: args.key,
              tourActivatingTime: args.tourActivatingTime,
              tourId: args.tourId,
              language: args.language,
              allLanguages: args.allLanguages);
        }),
    ProfilePaymentScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfilePaymentScreenArgs>();
          return _i24.PaymentScreen(key: args.key, tour: args.tour);
        }),
    ProfileSightsListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileSightsListScreenArgs>();
          return _i22.SightsListScreen(key: args.key, city: args.city);
        }),
    ProfileTourListScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileTourListScreenArgs>();
          return _i17.TourListScreen(
              key: args.key,
              city: args.city,
              sight: args.sight,
              guide: args.guide,
              categoryId: args.categoryId);
        }),
    ProfileMapPreviewScreen.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileMapPreviewScreenArgs>(
              orElse: () => const ProfileMapPreviewScreenArgs());
          return _i25.MapPreviewScreen(
              key: args.key, tourId: args.tourId, tourName: args.tourName);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(BaseNavigatorRoute.name,
            path: '/base-navigator',
            children: [
              _i1.RouteConfig(MainScreenRouter.name, path: '', children: [
                _i1.RouteConfig(MainScreen.name, path: ''),
                _i1.RouteConfig(MainWhereGoSearchScreen.name,
                    path: 'where-go-search-screen'),
                _i1.RouteConfig(MainFilterScreen.name, path: 'filter-screen'),
                _i1.RouteConfig(MainCityScreen.name, path: 'city-screen'),
                _i1.RouteConfig(MainGuideScreen.name, path: 'guide-screen'),
                _i1.RouteConfig(MainTourListScreen.name,
                    path: 'tour-list-screen'),
                _i1.RouteConfig(MainCityGuidesScreen.name,
                    path: 'city-guides-screen'),
                _i1.RouteConfig(MainRecommendedToursScreen.name,
                    path: 'recommended-tours-screen'),
                _i1.RouteConfig(MainTourScreen.name, path: 'tour-screen'),
                _i1.RouteConfig(MainSightScreen.name, path: 'sight-screen'),
                _i1.RouteConfig(MainSightsListScreen.name,
                    path: 'sights-list-screen'),
                _i1.RouteConfig(MainTourMapScreen.name,
                    path: 'tour-map-screen'),
                _i1.RouteConfig(MainDownloadScreen.name,
                    path: 'download-screen'),
                _i1.RouteConfig(MainPaymentScreen.name, path: 'payment-screen'),
                _i1.RouteConfig(MainMapPreviewScreen.name,
                    path: 'map-preview-screen')
              ]),
              _i1.RouteConfig(CatalogScreenRouter.name, path: '', children: [
                _i1.RouteConfig(CatalogScreen.name, path: ''),
                _i1.RouteConfig(CatalogFilterScreen.name,
                    path: 'filter-screen'),
                _i1.RouteConfig(CatalogCityScreen.name, path: 'city-screen'),
                _i1.RouteConfig(CatalogGuideScreen.name, path: 'guide-screen'),
                _i1.RouteConfig(CatalogTourListScreen.name,
                    path: 'tour-list-screen'),
                _i1.RouteConfig(CatalogCityGuidesScreen.name,
                    path: 'city-guides-screen'),
                _i1.RouteConfig(CatalogRecommendedToursScreen.name,
                    path: 'recommended-tours-screen'),
                _i1.RouteConfig(CatalogTourScreen.name, path: 'tour-screen'),
                _i1.RouteConfig(CatalogSightScreen.name, path: 'sight-screen'),
                _i1.RouteConfig(CatalogSightsListScreen.name,
                    path: 'sights-list-screen'),
                _i1.RouteConfig(CatalogTourMapScreen.name,
                    path: 'tour-map-screen'),
                _i1.RouteConfig(CatalogDownloadScreen.name,
                    path: 'download-screen'),
                _i1.RouteConfig(CatalogPaymentScreen.name,
                    path: 'payment-screen'),
                _i1.RouteConfig(CatalogMapPreviewScreen.name,
                    path: 'map-preview-screen')
              ]),
              _i1.RouteConfig(MyOrdersScreenRouter.name, path: '', children: [
                _i1.RouteConfig(MyOrdersScreen.name, path: ''),
                _i1.RouteConfig(MyOrdersOrdersFullListScreen.name,
                    path: 'orders-full-list-screen'),
                _i1.RouteConfig(MyOrdersFilterScreen.name,
                    path: 'filter-screen'),
                _i1.RouteConfig(MyOrdersTourScreen.name, path: 'tour-screen'),
                _i1.RouteConfig(MyOrdersGuideScreen.name, path: 'guide-screen'),
                _i1.RouteConfig(MyOrdersSightScreen.name, path: 'sight-screen'),
                _i1.RouteConfig(MyOrdersDownloadScreen.name,
                    path: 'download-screen'),
                _i1.RouteConfig(MyOrdersTourMapScreen.name,
                    path: 'tour-map-screen'),
                _i1.RouteConfig(MyOrdersPaymentScreen.name,
                    path: 'payment-screen'),
                _i1.RouteConfig(MyOrdersSightsListScreen.name,
                    path: 'sights-list-screen'),
                _i1.RouteConfig(MyOrdersTourListScreen.name,
                    path: 'tour-list-screen'),
                _i1.RouteConfig(MyOrdersMapPreviewScreen.name,
                    path: 'map-preview-screen')
              ]),
              _i1.RouteConfig(ProfileMainScreenRouter.name,
                  path: '',
                  children: [
                    _i1.RouteConfig(ProfileMainScreen.name, path: ''),
                    _i1.RouteConfig(ProfileEditDataScreen.name,
                        path: 'edit-data-screen'),
                    _i1.RouteConfig(ProfileFavoritesScreen.name,
                        path: 'favorites-screen'),
                    _i1.RouteConfig(ProfilePromocodesMenuScreen.name,
                        path: 'promocodes-menu-screen'),
                    _i1.RouteConfig(ProfileMyPromocodesScreen.name,
                        path: 'my-promocodes-screen'),
                    _i1.RouteConfig(ProfileSharePromocodeScreen.name,
                        path: 'share-promocode-screen'),
                    _i1.RouteConfig(ProfileSettingsScreen.name,
                        path: 'settings-screen'),
                    _i1.RouteConfig(ProfileQuestionsAndAnswersScreen.name,
                        path: 'questions-and-answers-screen'),
                    _i1.RouteConfig(ProfileTermsAndConditionsScreen.name,
                        path: 'terms-and-conditions-screen'),
                    _i1.RouteConfig(ProfileSupportScreen.name,
                        path: 'support-screen'),
                    _i1.RouteConfig(ProfileAboutScreen.name,
                        path: 'about-screen'),
                    _i1.RouteConfig(ProfileFilterScreen.name,
                        path: 'filter-screen'),
                    _i1.RouteConfig(ProfileTourScreen.name,
                        path: 'tour-screen'),
                    _i1.RouteConfig(ProfileSightScreen.name,
                        path: 'sight-screen'),
                    _i1.RouteConfig(ProfileGuideScreen.name,
                        path: 'guide-screen'),
                    _i1.RouteConfig(ProfileDownloadScreen.name,
                        path: 'download-screen'),
                    _i1.RouteConfig(ProfileTourMapScreen.name,
                        path: 'tour-map-screen'),
                    _i1.RouteConfig(ProfilePaymentScreen.name,
                        path: 'payment-screen'),
                    _i1.RouteConfig(ProfileSightsListScreen.name,
                        path: 'sights-list-screen'),
                    _i1.RouteConfig(ProfileTourListScreen.name,
                        path: 'tour-list-screen'),
                    _i1.RouteConfig(ProfileMapPreviewScreen.name,
                        path: 'map-preview-screen')
                  ])
            ]),
        _i1.RouteConfig(AuthorizationScreenRoute.name,
            path: '/authorization-screen'),
        _i1.RouteConfig(OnboardingScreenRoute.name, path: '/onboarding-screen'),
        _i1.RouteConfig(RecoveryPasswordScreenRoute.name,
            path: '/recovery-password-screen'),
        _i1.RouteConfig(SuccessfulRegistrationScreenRoute.name,
            path: '/successful-registration-screen'),
        _i1.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i1.RouteConfig(DownloadScreenRoute.name, path: '/download-screen'),
        _i1.RouteConfig(TermsAndConditionsScreenRoute.name,
            path: '/terms-and-conditions-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo<SplashScreenRouteArgs> {
  SplashScreenRoute({_i2.Key? key})
      : super(name, path: '/', args: SplashScreenRouteArgs(key: key));

  static const String name = 'SplashScreenRoute';
}

class SplashScreenRouteArgs {
  const SplashScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class BaseNavigatorRoute extends _i1.PageRouteInfo {
  const BaseNavigatorRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/base-navigator', initialChildren: children);

  static const String name = 'BaseNavigatorRoute';
}

class AuthorizationScreenRoute extends _i1.PageRouteInfo {
  const AuthorizationScreenRoute() : super(name, path: '/authorization-screen');

  static const String name = 'AuthorizationScreenRoute';
}

class OnboardingScreenRoute
    extends _i1.PageRouteInfo<OnboardingScreenRouteArgs> {
  OnboardingScreenRoute({_i2.Key? key})
      : super(name,
            path: '/onboarding-screen',
            args: OnboardingScreenRouteArgs(key: key));

  static const String name = 'OnboardingScreenRoute';
}

class OnboardingScreenRouteArgs {
  const OnboardingScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class RecoveryPasswordScreenRoute
    extends _i1.PageRouteInfo<RecoveryPasswordScreenRouteArgs> {
  RecoveryPasswordScreenRoute({_i2.Key? key})
      : super(name,
            path: '/recovery-password-screen',
            args: RecoveryPasswordScreenRouteArgs(key: key));

  static const String name = 'RecoveryPasswordScreenRoute';
}

class RecoveryPasswordScreenRouteArgs {
  const RecoveryPasswordScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class SuccessfulRegistrationScreenRoute
    extends _i1.PageRouteInfo<SuccessfulRegistrationScreenRouteArgs> {
  SuccessfulRegistrationScreenRoute({_i2.Key? key})
      : super(name,
            path: '/successful-registration-screen',
            args: SuccessfulRegistrationScreenRouteArgs(key: key));

  static const String name = 'SuccessfulRegistrationScreenRoute';
}

class SuccessfulRegistrationScreenRouteArgs {
  const SuccessfulRegistrationScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class RegisterScreenRoute extends _i1.PageRouteInfo {
  const RegisterScreenRoute() : super(name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}

class DownloadScreenRoute extends _i1.PageRouteInfo<DownloadScreenRouteArgs> {
  DownloadScreenRoute({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: '/download-screen',
            args: DownloadScreenRouteArgs(key: key, tour: tour));

  static const String name = 'DownloadScreenRoute';
}

class DownloadScreenRouteArgs {
  const DownloadScreenRouteArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class TermsAndConditionsScreenRoute
    extends _i1.PageRouteInfo<TermsAndConditionsScreenRouteArgs> {
  TermsAndConditionsScreenRoute({_i2.Key? key, bool showTermsOfUse = false})
      : super(name,
            path: '/terms-and-conditions-screen',
            args: TermsAndConditionsScreenRouteArgs(
                key: key, showTermsOfUse: showTermsOfUse));

  static const String name = 'TermsAndConditionsScreenRoute';
}

class TermsAndConditionsScreenRouteArgs {
  const TermsAndConditionsScreenRouteArgs({this.key, required this.showTermsOfUse});

  final _i2.Key? key;

  final bool showTermsOfUse;
}

class MainScreenRouter extends _i1.PageRouteInfo {
  const MainScreenRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'MainScreenRouter';
}

class CatalogScreenRouter extends _i1.PageRouteInfo {
  const CatalogScreenRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'CatalogScreenRouter';
}

class MyOrdersScreenRouter extends _i1.PageRouteInfo {
  const MyOrdersScreenRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'MyOrdersScreenRouter';
}

class ProfileMainScreenRouter extends _i1.PageRouteInfo {
  const ProfileMainScreenRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'ProfileMainScreenRouter';
}

class MainScreen extends _i1.PageRouteInfo {
  const MainScreen() : super(name, path: '');

  static const String name = 'MainScreen';
}

class MainWhereGoSearchScreen
    extends _i1.PageRouteInfo<MainWhereGoSearchScreenArgs> {
  MainWhereGoSearchScreen({_i2.Key? key, required String countryCode})
      : super(name,
            path: 'where-go-search-screen',
            args: MainWhereGoSearchScreenArgs(
                key: key, countryCode: countryCode));

  static const String name = 'MainWhereGoSearchScreen';
}

class MainWhereGoSearchScreenArgs {
  const MainWhereGoSearchScreenArgs({this.key, required this.countryCode});

  final _i2.Key? key;

  final String countryCode;
}

class MainFilterScreen extends _i1.PageRouteInfo<MainFilterScreenArgs> {
  MainFilterScreen(
      {_i2.Key? key, required _i40.FilterType type, required String identifier})
      : super(name,
            path: 'filter-screen',
            args: MainFilterScreenArgs(
                key: key, type: type, identifier: identifier));

  static const String name = 'MainFilterScreen';
}

class MainFilterScreenArgs {
  const MainFilterScreenArgs(
      {this.key, required this.type, required this.identifier});

  final _i2.Key? key;

  final _i40.FilterType type;

  final String identifier;
}

class MainCityScreen extends _i1.PageRouteInfo<MainCityScreenArgs> {
  MainCityScreen({_i2.Key? key, required int cityId})
      : super(name,
            path: 'city-screen',
            args: MainCityScreenArgs(key: key, cityId: cityId));

  static const String name = 'MainCityScreen';
}

class MainCityScreenArgs {
  const MainCityScreenArgs({this.key, required this.cityId});

  final _i2.Key? key;

  final int cityId;
}

class MainGuideScreen extends _i1.PageRouteInfo<MainGuideScreenArgs> {
  MainGuideScreen(
      {_i2.Key? key, required String guideId, required String cityName})
      : super(name,
            path: 'guide-screen',
            args: MainGuideScreenArgs(
                key: key, guideId: guideId, cityName: cityName));

  static const String name = 'MainGuideScreen';
}

class MainGuideScreenArgs {
  const MainGuideScreenArgs(
      {this.key, required this.guideId, required this.cityName});

  final _i2.Key? key;

  final String guideId;

  final String cityName;
}

class MainTourListScreen extends _i1.PageRouteInfo<MainTourListScreenArgs> {
  MainTourListScreen(
      {_i2.Key? key,
      _i41.City? city,
      _i42.Sight? sight,
      _i43.Guide? guide,
      required String categoryId})
      : super(name,
            path: 'tour-list-screen',
            args: MainTourListScreenArgs(
                key: key,
                city: city,
                sight: sight,
                guide: guide,
                categoryId: categoryId));

  static const String name = 'MainTourListScreen';
}

class MainTourListScreenArgs {
  const MainTourListScreenArgs(
      {this.key, this.city, this.sight, this.guide, required this.categoryId});

  final _i2.Key? key;

  final _i41.City? city;

  final _i42.Sight? sight;

  final _i43.Guide? guide;

  final String categoryId;
}

class MainCityGuidesScreen extends _i1.PageRouteInfo<MainCityGuidesScreenArgs> {
  MainCityGuidesScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'city-guides-screen',
            args: MainCityGuidesScreenArgs(key: key, city: city));

  static const String name = 'MainCityGuidesScreen';
}

class MainCityGuidesScreenArgs {
  const MainCityGuidesScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class MainRecommendedToursScreen
    extends _i1.PageRouteInfo<MainRecommendedToursScreenArgs> {
  MainRecommendedToursScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'recommended-tours-screen',
            args: MainRecommendedToursScreenArgs(key: key, city: city));

  static const String name = 'MainRecommendedToursScreen';
}

class MainRecommendedToursScreenArgs {
  const MainRecommendedToursScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class MainTourScreen extends _i1.PageRouteInfo<MainTourScreenArgs> {
  MainTourScreen({required String tourId, String? tourName, _i2.Key? key})
      : super(name,
            path: 'tour-screen',
            args: MainTourScreenArgs(
                tourId: tourId, tourName: tourName, key: key));

  static const String name = 'MainTourScreen';
}

class MainTourScreenArgs {
  const MainTourScreenArgs({required this.tourId, this.tourName, this.key});

  final String tourId;

  final String? tourName;

  final _i2.Key? key;
}

class MainSightScreen extends _i1.PageRouteInfo<MainSightScreenArgs> {
  MainSightScreen({_i2.Key? key, required int sightId, String? sightName})
      : super(name,
            path: 'sight-screen',
            args: MainSightScreenArgs(
                key: key, sightId: sightId, sightName: sightName));

  static const String name = 'MainSightScreen';
}

class MainSightScreenArgs {
  const MainSightScreenArgs({this.key, required this.sightId, this.sightName});

  final _i2.Key? key;

  final int sightId;

  final String? sightName;
}

class MainSightsListScreen extends _i1.PageRouteInfo<MainSightsListScreenArgs> {
  MainSightsListScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'sights-list-screen',
            args: MainSightsListScreenArgs(key: key, city: city));

  static const String name = 'MainSightsListScreen';
}

class MainSightsListScreenArgs {
  const MainSightsListScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class MainTourMapScreen extends _i1.PageRouteInfo<MainTourMapScreenArgs> {
  MainTourMapScreen(
      {_i2.Key? key,
      required int tourActivatingTime,
      dynamic tourId,
      dynamic language,
      dynamic allLanguages})
      : super(name,
            path: 'tour-map-screen',
            args: MainTourMapScreenArgs(
                key: key,
                tourActivatingTime: tourActivatingTime,
                tourId: tourId,
                language: language,
                allLanguages: allLanguages));

  static const String name = 'MainTourMapScreen';
}

class MainTourMapScreenArgs {
  const MainTourMapScreenArgs(
      {this.key,
      required this.tourActivatingTime,
      this.tourId,
      this.language,
      this.allLanguages});

  final _i2.Key? key;

  final int tourActivatingTime;

  final dynamic tourId;

  final dynamic language;

  final dynamic allLanguages;
}

class MainDownloadScreen extends _i1.PageRouteInfo<MainDownloadScreenArgs> {
  MainDownloadScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'download-screen',
            args: MainDownloadScreenArgs(key: key, tour: tour));

  static const String name = 'MainDownloadScreen';
}

class MainDownloadScreenArgs {
  const MainDownloadScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class MainPaymentScreen extends _i1.PageRouteInfo<MainPaymentScreenArgs> {
  MainPaymentScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'payment-screen',
            args: MainPaymentScreenArgs(key: key, tour: tour));

  static const String name = 'MainPaymentScreen';
}

class MainPaymentScreenArgs {
  const MainPaymentScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class MainMapPreviewScreen extends _i1.PageRouteInfo<MainMapPreviewScreenArgs> {
  MainMapPreviewScreen({_i2.Key? key, String? tourId, String? tourName})
      : super(name,
            path: 'map-preview-screen',
            args: MainMapPreviewScreenArgs(
                key: key, tourId: tourId, tourName: tourName));

  static const String name = 'MainMapPreviewScreen';
}

class MainMapPreviewScreenArgs {
  const MainMapPreviewScreenArgs({this.key, this.tourId, this.tourName});

  final _i2.Key? key;

  final String? tourId;

  final String? tourName;
}

class CatalogScreen extends _i1.PageRouteInfo<CatalogScreenArgs> {
  CatalogScreen({_i2.Key? key})
      : super(name, path: '', args: CatalogScreenArgs(key: key));

  static const String name = 'CatalogScreen';
}

class CatalogScreenArgs {
  const CatalogScreenArgs({this.key});

  final _i2.Key? key;
}

class CatalogFilterScreen extends _i1.PageRouteInfo<CatalogFilterScreenArgs> {
  CatalogFilterScreen(
      {_i2.Key? key, required _i40.FilterType type, required String identifier})
      : super(name,
            path: 'filter-screen',
            args: CatalogFilterScreenArgs(
                key: key, type: type, identifier: identifier));

  static const String name = 'CatalogFilterScreen';
}

class CatalogFilterScreenArgs {
  const CatalogFilterScreenArgs(
      {this.key, required this.type, required this.identifier});

  final _i2.Key? key;

  final _i40.FilterType type;

  final String identifier;
}

class CatalogCityScreen extends _i1.PageRouteInfo<CatalogCityScreenArgs> {
  CatalogCityScreen({_i2.Key? key, required int cityId})
      : super(name,
            path: 'city-screen',
            args: CatalogCityScreenArgs(key: key, cityId: cityId));

  static const String name = 'CatalogCityScreen';
}

class CatalogCityScreenArgs {
  const CatalogCityScreenArgs({this.key, required this.cityId});

  final _i2.Key? key;

  final int cityId;
}

class CatalogGuideScreen extends _i1.PageRouteInfo<CatalogGuideScreenArgs> {
  CatalogGuideScreen(
      {_i2.Key? key, required String guideId, required String cityName})
      : super(name,
            path: 'guide-screen',
            args: CatalogGuideScreenArgs(
                key: key, guideId: guideId, cityName: cityName));

  static const String name = 'CatalogGuideScreen';
}

class CatalogGuideScreenArgs {
  const CatalogGuideScreenArgs(
      {this.key, required this.guideId, required this.cityName});

  final _i2.Key? key;

  final String guideId;

  final String cityName;
}

class CatalogTourListScreen
    extends _i1.PageRouteInfo<CatalogTourListScreenArgs> {
  CatalogTourListScreen(
      {_i2.Key? key,
      _i41.City? city,
      _i42.Sight? sight,
      _i43.Guide? guide,
      required String categoryId})
      : super(name,
            path: 'tour-list-screen',
            args: CatalogTourListScreenArgs(
                key: key,
                city: city,
                sight: sight,
                guide: guide,
                categoryId: categoryId));

  static const String name = 'CatalogTourListScreen';
}

class CatalogTourListScreenArgs {
  const CatalogTourListScreenArgs(
      {this.key, this.city, this.sight, this.guide, required this.categoryId});

  final _i2.Key? key;

  final _i41.City? city;

  final _i42.Sight? sight;

  final _i43.Guide? guide;

  final String categoryId;
}

class CatalogCityGuidesScreen
    extends _i1.PageRouteInfo<CatalogCityGuidesScreenArgs> {
  CatalogCityGuidesScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'city-guides-screen',
            args: CatalogCityGuidesScreenArgs(key: key, city: city));

  static const String name = 'CatalogCityGuidesScreen';
}

class CatalogCityGuidesScreenArgs {
  const CatalogCityGuidesScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class CatalogRecommendedToursScreen
    extends _i1.PageRouteInfo<CatalogRecommendedToursScreenArgs> {
  CatalogRecommendedToursScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'recommended-tours-screen',
            args: CatalogRecommendedToursScreenArgs(key: key, city: city));

  static const String name = 'CatalogRecommendedToursScreen';
}

class CatalogRecommendedToursScreenArgs {
  const CatalogRecommendedToursScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class CatalogTourScreen extends _i1.PageRouteInfo<CatalogTourScreenArgs> {
  CatalogTourScreen({required String tourId, String? tourName, _i2.Key? key})
      : super(name,
            path: 'tour-screen',
            args: CatalogTourScreenArgs(
                tourId: tourId, tourName: tourName, key: key));

  static const String name = 'CatalogTourScreen';
}

class CatalogTourScreenArgs {
  const CatalogTourScreenArgs({required this.tourId, this.tourName, this.key});

  final String tourId;

  final String? tourName;

  final _i2.Key? key;
}

class CatalogSightScreen extends _i1.PageRouteInfo<CatalogSightScreenArgs> {
  CatalogSightScreen({_i2.Key? key, required int sightId, String? sightName})
      : super(name,
            path: 'sight-screen',
            args: CatalogSightScreenArgs(
                key: key, sightId: sightId, sightName: sightName));

  static const String name = 'CatalogSightScreen';
}

class CatalogSightScreenArgs {
  const CatalogSightScreenArgs(
      {this.key, required this.sightId, this.sightName});

  final _i2.Key? key;

  final int sightId;

  final String? sightName;
}

class CatalogSightsListScreen
    extends _i1.PageRouteInfo<CatalogSightsListScreenArgs> {
  CatalogSightsListScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'sights-list-screen',
            args: CatalogSightsListScreenArgs(key: key, city: city));

  static const String name = 'CatalogSightsListScreen';
}

class CatalogSightsListScreenArgs {
  const CatalogSightsListScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class CatalogTourMapScreen extends _i1.PageRouteInfo<CatalogTourMapScreenArgs> {
  CatalogTourMapScreen(
      {_i2.Key? key,
      required int tourActivatingTime,
      dynamic tourId,
      dynamic language,
      dynamic allLanguages})
      : super(name,
            path: 'tour-map-screen',
            args: CatalogTourMapScreenArgs(
                key: key,
                tourActivatingTime: tourActivatingTime,
                tourId: tourId,
                language: language,
                allLanguages: allLanguages));

  static const String name = 'CatalogTourMapScreen';
}

class CatalogTourMapScreenArgs {
  const CatalogTourMapScreenArgs(
      {this.key,
      required this.tourActivatingTime,
      this.tourId,
      this.language,
      this.allLanguages});

  final _i2.Key? key;

  final int tourActivatingTime;

  final dynamic tourId;

  final dynamic language;

  final dynamic allLanguages;
}

class CatalogDownloadScreen
    extends _i1.PageRouteInfo<CatalogDownloadScreenArgs> {
  CatalogDownloadScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'download-screen',
            args: CatalogDownloadScreenArgs(key: key, tour: tour));

  static const String name = 'CatalogDownloadScreen';
}

class CatalogDownloadScreenArgs {
  const CatalogDownloadScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class CatalogPaymentScreen extends _i1.PageRouteInfo<CatalogPaymentScreenArgs> {
  CatalogPaymentScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'payment-screen',
            args: CatalogPaymentScreenArgs(key: key, tour: tour));

  static const String name = 'CatalogPaymentScreen';
}

class CatalogPaymentScreenArgs {
  const CatalogPaymentScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class CatalogMapPreviewScreen
    extends _i1.PageRouteInfo<CatalogMapPreviewScreenArgs> {
  CatalogMapPreviewScreen({_i2.Key? key, String? tourId, String? tourName})
      : super(name,
            path: 'map-preview-screen',
            args: CatalogMapPreviewScreenArgs(
                key: key, tourId: tourId, tourName: tourName));

  static const String name = 'CatalogMapPreviewScreen';
}

class CatalogMapPreviewScreenArgs {
  const CatalogMapPreviewScreenArgs({this.key, this.tourId, this.tourName});

  final _i2.Key? key;

  final String? tourId;

  final String? tourName;
}

class MyOrdersScreen extends _i1.PageRouteInfo {
  const MyOrdersScreen() : super(name, path: '');

  static const String name = 'MyOrdersScreen';
}

class MyOrdersOrdersFullListScreen
    extends _i1.PageRouteInfo<MyOrdersOrdersFullListScreenArgs> {
  MyOrdersOrdersFullListScreen(
      {_i2.Key? key, required List<_i39.Tour> tours, required String title})
      : super(name,
            path: 'orders-full-list-screen',
            args: MyOrdersOrdersFullListScreenArgs(
                key: key, tours: tours, title: title));

  static const String name = 'MyOrdersOrdersFullListScreen';
}

class MyOrdersOrdersFullListScreenArgs {
  const MyOrdersOrdersFullListScreenArgs(
      {this.key, required this.tours, required this.title});

  final _i2.Key? key;

  final List<_i39.Tour> tours;

  final String title;
}

class MyOrdersFilterScreen extends _i1.PageRouteInfo<MyOrdersFilterScreenArgs> {
  MyOrdersFilterScreen(
      {_i2.Key? key, required _i40.FilterType type, required String identifier})
      : super(name,
            path: 'filter-screen',
            args: MyOrdersFilterScreenArgs(
                key: key, type: type, identifier: identifier));

  static const String name = 'MyOrdersFilterScreen';
}

class MyOrdersFilterScreenArgs {
  const MyOrdersFilterScreenArgs(
      {this.key, required this.type, required this.identifier});

  final _i2.Key? key;

  final _i40.FilterType type;

  final String identifier;
}

class MyOrdersTourScreen extends _i1.PageRouteInfo<MyOrdersTourScreenArgs> {
  MyOrdersTourScreen({required String tourId, String? tourName, _i2.Key? key})
      : super(name,
            path: 'tour-screen',
            args: MyOrdersTourScreenArgs(
                tourId: tourId, tourName: tourName, key: key));

  static const String name = 'MyOrdersTourScreen';
}

class MyOrdersTourScreenArgs {
  const MyOrdersTourScreenArgs({required this.tourId, this.tourName, this.key});

  final String tourId;

  final String? tourName;

  final _i2.Key? key;
}

class MyOrdersGuideScreen extends _i1.PageRouteInfo<MyOrdersGuideScreenArgs> {
  MyOrdersGuideScreen(
      {_i2.Key? key, required String guideId, required String cityName})
      : super(name,
            path: 'guide-screen',
            args: MyOrdersGuideScreenArgs(
                key: key, guideId: guideId, cityName: cityName));

  static const String name = 'MyOrdersGuideScreen';
}

class MyOrdersGuideScreenArgs {
  const MyOrdersGuideScreenArgs(
      {this.key, required this.guideId, required this.cityName});

  final _i2.Key? key;

  final String guideId;

  final String cityName;
}

class MyOrdersSightScreen extends _i1.PageRouteInfo<MyOrdersSightScreenArgs> {
  MyOrdersSightScreen({_i2.Key? key, required int sightId, String? sightName})
      : super(name,
            path: 'sight-screen',
            args: MyOrdersSightScreenArgs(
                key: key, sightId: sightId, sightName: sightName));

  static const String name = 'MyOrdersSightScreen';
}

class MyOrdersSightScreenArgs {
  const MyOrdersSightScreenArgs(
      {this.key, required this.sightId, this.sightName});

  final _i2.Key? key;

  final int sightId;

  final String? sightName;
}

class MyOrdersDownloadScreen
    extends _i1.PageRouteInfo<MyOrdersDownloadScreenArgs> {
  MyOrdersDownloadScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'download-screen',
            args: MyOrdersDownloadScreenArgs(key: key, tour: tour));

  static const String name = 'MyOrdersDownloadScreen';
}

class MyOrdersDownloadScreenArgs {
  const MyOrdersDownloadScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class MyOrdersTourMapScreen
    extends _i1.PageRouteInfo<MyOrdersTourMapScreenArgs> {
  MyOrdersTourMapScreen(
      {_i2.Key? key,
      required int tourActivatingTime,
      dynamic tourId,
      dynamic language,
      dynamic allLanguages})
      : super(name,
            path: 'tour-map-screen',
            args: MyOrdersTourMapScreenArgs(
                key: key,
                tourActivatingTime: tourActivatingTime,
                tourId: tourId,
                language: language,
                allLanguages: allLanguages));

  static const String name = 'MyOrdersTourMapScreen';
}

class MyOrdersTourMapScreenArgs {
  const MyOrdersTourMapScreenArgs(
      {this.key,
      required this.tourActivatingTime,
      this.tourId,
      this.language,
      this.allLanguages});

  final _i2.Key? key;

  final int tourActivatingTime;

  final dynamic tourId;

  final dynamic language;

  final dynamic allLanguages;
}

class MyOrdersPaymentScreen
    extends _i1.PageRouteInfo<MyOrdersPaymentScreenArgs> {
  MyOrdersPaymentScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'payment-screen',
            args: MyOrdersPaymentScreenArgs(key: key, tour: tour));

  static const String name = 'MyOrdersPaymentScreen';
}

class MyOrdersPaymentScreenArgs {
  const MyOrdersPaymentScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class MyOrdersSightsListScreen
    extends _i1.PageRouteInfo<MyOrdersSightsListScreenArgs> {
  MyOrdersSightsListScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'sights-list-screen',
            args: MyOrdersSightsListScreenArgs(key: key, city: city));

  static const String name = 'MyOrdersSightsListScreen';
}

class MyOrdersSightsListScreenArgs {
  const MyOrdersSightsListScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class MyOrdersTourListScreen
    extends _i1.PageRouteInfo<MyOrdersTourListScreenArgs> {
  MyOrdersTourListScreen(
      {_i2.Key? key,
      _i41.City? city,
      _i42.Sight? sight,
      _i43.Guide? guide,
      required String categoryId})
      : super(name,
            path: 'tour-list-screen',
            args: MyOrdersTourListScreenArgs(
                key: key,
                city: city,
                sight: sight,
                guide: guide,
                categoryId: categoryId));

  static const String name = 'MyOrdersTourListScreen';
}

class MyOrdersTourListScreenArgs {
  const MyOrdersTourListScreenArgs(
      {this.key, this.city, this.sight, this.guide, required this.categoryId});

  final _i2.Key? key;

  final _i41.City? city;

  final _i42.Sight? sight;

  final _i43.Guide? guide;

  final String categoryId;
}

class MyOrdersMapPreviewScreen
    extends _i1.PageRouteInfo<MyOrdersMapPreviewScreenArgs> {
  MyOrdersMapPreviewScreen({_i2.Key? key, String? tourId, String? tourName})
      : super(name,
            path: 'map-preview-screen',
            args: MyOrdersMapPreviewScreenArgs(
                key: key, tourId: tourId, tourName: tourName));

  static const String name = 'MyOrdersMapPreviewScreen';
}

class MyOrdersMapPreviewScreenArgs {
  const MyOrdersMapPreviewScreenArgs({this.key, this.tourId, this.tourName});

  final _i2.Key? key;

  final String? tourId;

  final String? tourName;
}

class ProfileMainScreen extends _i1.PageRouteInfo {
  const ProfileMainScreen() : super(name, path: '');

  static const String name = 'ProfileMainScreen';
}

class ProfileEditDataScreen extends _i1.PageRouteInfo {
  const ProfileEditDataScreen() : super(name, path: 'edit-data-screen');

  static const String name = 'ProfileEditDataScreen';
}

class ProfileFavoritesScreen extends _i1.PageRouteInfo {
  const ProfileFavoritesScreen() : super(name, path: 'favorites-screen');

  static const String name = 'ProfileFavoritesScreen';
}

class ProfilePromocodesMenuScreen extends _i1.PageRouteInfo {
  const ProfilePromocodesMenuScreen()
      : super(name, path: 'promocodes-menu-screen');

  static const String name = 'ProfilePromocodesMenuScreen';
}

class ProfileMyPromocodesScreen extends _i1.PageRouteInfo {
  const ProfileMyPromocodesScreen() : super(name, path: 'my-promocodes-screen');

  static const String name = 'ProfileMyPromocodesScreen';
}

class ProfileSharePromocodeScreen extends _i1.PageRouteInfo {
  const ProfileSharePromocodeScreen()
      : super(name, path: 'share-promocode-screen');

  static const String name = 'ProfileSharePromocodeScreen';
}

class ProfileSettingsScreen extends _i1.PageRouteInfo {
  const ProfileSettingsScreen() : super(name, path: 'settings-screen');

  static const String name = 'ProfileSettingsScreen';
}

class ProfileQuestionsAndAnswersScreen
    extends _i1.PageRouteInfo<ProfileQuestionsAndAnswersScreenArgs> {
  ProfileQuestionsAndAnswersScreen({_i2.Key? key})
      : super(name,
            path: 'questions-and-answers-screen',
            args: ProfileQuestionsAndAnswersScreenArgs(key: key));

  static const String name = 'ProfileQuestionsAndAnswersScreen';
}

class ProfileQuestionsAndAnswersScreenArgs {
  const ProfileQuestionsAndAnswersScreenArgs({this.key});

  final _i2.Key? key;
}

class ProfileTermsAndConditionsScreen
    extends _i1.PageRouteInfo<ProfileTermsAndConditionsScreenArgs> {
  ProfileTermsAndConditionsScreen({_i2.Key? key, required bool showTermsOfUse})
      : super(name,
            path: 'terms-and-conditions-screen',
            args: ProfileTermsAndConditionsScreenArgs(
                key: key, showTermsOfUse: showTermsOfUse));

  static const String name = 'ProfileTermsAndConditionsScreen';
}

class ProfileTermsAndConditionsScreenArgs {
  const ProfileTermsAndConditionsScreenArgs({this.key, required this.showTermsOfUse});

  final _i2.Key? key;

  final bool showTermsOfUse;
}

class ProfileSupportScreen extends _i1.PageRouteInfo {
  const ProfileSupportScreen() : super(name, path: 'support-screen');

  static const String name = 'ProfileSupportScreen';
}

class ProfileAboutScreen extends _i1.PageRouteInfo {
  const ProfileAboutScreen() : super(name, path: 'about-screen');

  static const String name = 'ProfileAboutScreen';
}

class ProfileFilterScreen extends _i1.PageRouteInfo<ProfileFilterScreenArgs> {
  ProfileFilterScreen(
      {_i2.Key? key, required _i40.FilterType type, required String identifier})
      : super(name,
            path: 'filter-screen',
            args: ProfileFilterScreenArgs(
                key: key, type: type, identifier: identifier));

  static const String name = 'ProfileFilterScreen';
}

class ProfileFilterScreenArgs {
  const ProfileFilterScreenArgs(
      {this.key, required this.type, required this.identifier});

  final _i2.Key? key;

  final _i40.FilterType type;

  final String identifier;
}

class ProfileTourScreen extends _i1.PageRouteInfo<ProfileTourScreenArgs> {
  ProfileTourScreen({required String tourId, String? tourName, _i2.Key? key})
      : super(name,
            path: 'tour-screen',
            args: ProfileTourScreenArgs(
                tourId: tourId, tourName: tourName, key: key));

  static const String name = 'ProfileTourScreen';
}

class ProfileTourScreenArgs {
  const ProfileTourScreenArgs({required this.tourId, this.tourName, this.key});

  final String tourId;

  final String? tourName;

  final _i2.Key? key;
}

class ProfileSightScreen extends _i1.PageRouteInfo<ProfileSightScreenArgs> {
  ProfileSightScreen({_i2.Key? key, required int sightId, String? sightName})
      : super(name,
            path: 'sight-screen',
            args: ProfileSightScreenArgs(
                key: key, sightId: sightId, sightName: sightName));

  static const String name = 'ProfileSightScreen';
}

class ProfileSightScreenArgs {
  const ProfileSightScreenArgs(
      {this.key, required this.sightId, this.sightName});

  final _i2.Key? key;

  final int sightId;

  final String? sightName;
}

class ProfileGuideScreen extends _i1.PageRouteInfo<ProfileGuideScreenArgs> {
  ProfileGuideScreen(
      {_i2.Key? key, required String guideId, required String cityName})
      : super(name,
            path: 'guide-screen',
            args: ProfileGuideScreenArgs(
                key: key, guideId: guideId, cityName: cityName));

  static const String name = 'ProfileGuideScreen';
}

class ProfileGuideScreenArgs {
  const ProfileGuideScreenArgs(
      {this.key, required this.guideId, required this.cityName});

  final _i2.Key? key;

  final String guideId;

  final String cityName;
}

class ProfileDownloadScreen
    extends _i1.PageRouteInfo<ProfileDownloadScreenArgs> {
  ProfileDownloadScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'download-screen',
            args: ProfileDownloadScreenArgs(key: key, tour: tour));

  static const String name = 'ProfileDownloadScreen';
}

class ProfileDownloadScreenArgs {
  const ProfileDownloadScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class ProfileTourMapScreen extends _i1.PageRouteInfo<ProfileTourMapScreenArgs> {
  ProfileTourMapScreen(
      {_i2.Key? key,
      required int tourActivatingTime,
      dynamic tourId,
      dynamic language,
      dynamic allLanguages})
      : super(name,
            path: 'tour-map-screen',
            args: ProfileTourMapScreenArgs(
                key: key,
                tourActivatingTime: tourActivatingTime,
                tourId: tourId,
                language: language,
                allLanguages: allLanguages));

  static const String name = 'ProfileTourMapScreen';
}

class ProfileTourMapScreenArgs {
  const ProfileTourMapScreenArgs(
      {this.key,
      required this.tourActivatingTime,
      this.tourId,
      this.language,
      this.allLanguages});

  final _i2.Key? key;

  final int tourActivatingTime;

  final dynamic tourId;

  final dynamic language;

  final dynamic allLanguages;
}

class ProfilePaymentScreen extends _i1.PageRouteInfo<ProfilePaymentScreenArgs> {
  ProfilePaymentScreen({_i2.Key? key, required _i39.Tour tour})
      : super(name,
            path: 'payment-screen',
            args: ProfilePaymentScreenArgs(key: key, tour: tour));

  static const String name = 'ProfilePaymentScreen';
}

class ProfilePaymentScreenArgs {
  const ProfilePaymentScreenArgs({this.key, required this.tour});

  final _i2.Key? key;

  final _i39.Tour tour;
}

class ProfileSightsListScreen
    extends _i1.PageRouteInfo<ProfileSightsListScreenArgs> {
  ProfileSightsListScreen({_i2.Key? key, required _i41.City city})
      : super(name,
            path: 'sights-list-screen',
            args: ProfileSightsListScreenArgs(key: key, city: city));

  static const String name = 'ProfileSightsListScreen';
}

class ProfileSightsListScreenArgs {
  const ProfileSightsListScreenArgs({this.key, required this.city});

  final _i2.Key? key;

  final _i41.City city;
}

class ProfileTourListScreen
    extends _i1.PageRouteInfo<ProfileTourListScreenArgs> {
  ProfileTourListScreen(
      {_i2.Key? key,
      _i41.City? city,
      _i42.Sight? sight,
      _i43.Guide? guide,
      required String categoryId})
      : super(name,
            path: 'tour-list-screen',
            args: ProfileTourListScreenArgs(
                key: key,
                city: city,
                sight: sight,
                guide: guide,
                categoryId: categoryId));

  static const String name = 'ProfileTourListScreen';
}

class ProfileTourListScreenArgs {
  const ProfileTourListScreenArgs(
      {this.key, this.city, this.sight, this.guide, required this.categoryId});

  final _i2.Key? key;

  final _i41.City? city;

  final _i42.Sight? sight;

  final _i43.Guide? guide;

  final String categoryId;
}

class ProfileMapPreviewScreen
    extends _i1.PageRouteInfo<ProfileMapPreviewScreenArgs> {
  ProfileMapPreviewScreen({_i2.Key? key, String? tourId, String? tourName})
      : super(name,
            path: 'map-preview-screen',
            args: ProfileMapPreviewScreenArgs(
                key: key, tourId: tourId, tourName: tourName));

  static const String name = 'ProfileMapPreviewScreen';
}

class ProfileMapPreviewScreenArgs {
  const ProfileMapPreviewScreenArgs({this.key, this.tourId, this.tourName});

  final _i2.Key? key;

  final String? tourId;

  final String? tourName;
}

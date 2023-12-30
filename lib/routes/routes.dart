import 'package:auto_route/auto_route.dart';
import 'package:mapo_travel_guide/ui/screens/authorization/authorization_screen.dart';
import 'package:mapo_travel_guide/ui/screens/base_navigator.dart';
import 'package:mapo_travel_guide/ui/screens/catalog/catalog_screen.dart';
import 'package:mapo_travel_guide/ui/screens/city/city_screen.dart';
import 'package:mapo_travel_guide/ui/screens/city_guides/city_guides_screen.dart';
import 'package:mapo_travel_guide/ui/screens/download/download_screen.dart';
import 'package:mapo_travel_guide/ui/screens/filter/filter_screen.dart';
import 'package:mapo_travel_guide/ui/screens/guide/guide_screen.dart';
import 'package:mapo_travel_guide/ui/screens/main/main_screen.dart';
import 'package:mapo_travel_guide/ui/screens/map_preview/map_preview_screen.dart';
import 'package:mapo_travel_guide/ui/screens/my_orders/my_orders_screen.dart';
import 'package:mapo_travel_guide/ui/screens/my_orders/orders_full_list_screen.dart';
import 'package:mapo_travel_guide/ui/screens/onboarding/onboarding_screen.dart';
import 'package:mapo_travel_guide/ui/screens/payment/payment_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/about/about_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/edit_data/edit_data_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/favorites/favorites_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/profile_main_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/my_promocodes/my_promocodes_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/promocodes_menu/promocodes_menu_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/share_promocode/share_promocode_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/questions_and_answers/questions_and_answers_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/settings/settings_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/support/support_screen.dart';
import 'package:mapo_travel_guide/ui/screens/recommended_tours/recommended_tours_screen.dart';
import 'package:mapo_travel_guide/ui/screens/recovery_password/recovery_password_screen.dart';
import 'package:mapo_travel_guide/ui/screens/register/register_screen.dart';
import 'package:mapo_travel_guide/ui/screens/sight/sight_screen.dart';
import 'package:mapo_travel_guide/ui/screens/sights_list/sights_list_screen.dart';
import 'package:mapo_travel_guide/ui/screens/splash/splash_screen.dart';
import 'package:mapo_travel_guide/ui/screens/successfull_registration/successful_registration_screen.dart';
import 'package:mapo_travel_guide/ui/screens/profile/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:mapo_travel_guide/ui/screens/tour/tour_screen.dart';
import 'package:mapo_travel_guide/ui/screens/tour_list/tour_list_screen.dart';
import 'package:mapo_travel_guide/ui/screens/tour_map/tour_map_screen.dart';
import 'package:mapo_travel_guide/ui/screens/where_go_search/where_go_search_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashScreen, initial: true),
    AdaptiveRoute(page: BaseNavigator, maintainState: false, children: [
      AdaptiveRoute(page: EmptyRouterPage, name: 'MainScreenRouter', initial: true, maintainState: true, children: [
        AdaptiveRoute(page: MainScreen, name: 'MainScreen', initial: true, maintainState: true),
        AdaptiveRoute(page: WhereGoSearchScreen, name: 'MainWhereGoSearchScreen', maintainState: true),
        AdaptiveRoute(page: FilterScreen, name: 'MainFilterScreen'),

        //City flow
        AdaptiveRoute(page: CityScreen, name: 'MainCityScreen'),
        AdaptiveRoute(page: GuideScreen, name: 'MainGuideScreen'),
        AdaptiveRoute(page: TourListScreen, name: 'MainTourListScreen', maintainState: true),
        AdaptiveRoute(page: CityGuidesScreen, name: 'MainCityGuidesScreen'),
        AdaptiveRoute(page: RecommendedToursScreen, name: 'MainRecommendedToursScreen'),

        //Tour flow
        AdaptiveRoute(page: TourScreen, name: 'MainTourScreen'),
        AdaptiveRoute(page: SightScreen, name: 'MainSightScreen'),
        AdaptiveRoute(page: SightsListScreen, name: 'MainSightsListScreen'),
        AdaptiveRoute(page: TourMapScreen, name: 'MainTourMapScreen'),
        AdaptiveRoute(page: DownloadScreen, name: 'MainDownloadScreen'),
        AdaptiveRoute(page: PaymentScreen, name: 'MainPaymentScreen'),
        AdaptiveRoute(page: MapPreviewScreen, name: 'MainMapPreviewScreen'),
      ]),
      AdaptiveRoute(page: EmptyRouterPage, name: 'CatalogScreenRouter', initial: true, maintainState: true, children: [
        AdaptiveRoute(page: CatalogScreen, name: 'CatalogScreen', initial: true, maintainState: true),
        AdaptiveRoute(page: FilterScreen, name: 'CatalogFilterScreen'),

        //City flow
        AdaptiveRoute(page: CityScreen, name: 'CatalogCityScreen'),
        AdaptiveRoute(page: GuideScreen, name: 'CatalogGuideScreen'),
        AdaptiveRoute(page: TourListScreen, name: 'CatalogTourListScreen', maintainState: true),
        AdaptiveRoute(page: CityGuidesScreen, name: 'CatalogCityGuidesScreen'),
        AdaptiveRoute(page: RecommendedToursScreen, name: 'CatalogRecommendedToursScreen'),

        //Tour flow
        AdaptiveRoute(page: TourScreen, name: 'CatalogTourScreen'),
        AdaptiveRoute(page: SightScreen, name: 'CatalogSightScreen'),
        AdaptiveRoute(page: SightsListScreen, name: 'CatalogSightsListScreen'),
        AdaptiveRoute(page: TourMapScreen, name: 'CatalogTourMapScreen'),
        AdaptiveRoute(page: DownloadScreen, name: 'CatalogDownloadScreen'),
        AdaptiveRoute(page: PaymentScreen, name: 'CatalogPaymentScreen'),
        AdaptiveRoute(page: MapPreviewScreen, name: 'CatalogMapPreviewScreen'),
      ]),
      AdaptiveRoute(page: EmptyRouterPage, name: 'MyOrdersScreenRouter', initial: true, children: [
        AdaptiveRoute(page: MyOrdersScreen, name: 'MyOrdersScreen', initial: true),
        AdaptiveRoute(page: OrdersFullListScreen, name: 'MyOrdersOrdersFullListScreen'),
        AdaptiveRoute(page: FilterScreen, name: 'MyOrdersFilterScreen'),

        //Tour flow
        AdaptiveRoute(page: TourScreen, name: 'MyOrdersTourScreen'),
        AdaptiveRoute(page: GuideScreen, name: 'MyOrdersGuideScreen'),
        AdaptiveRoute(page: SightScreen, name: 'MyOrdersSightScreen'),
        AdaptiveRoute(page: DownloadScreen, name: 'MyOrdersDownloadScreen'),
        AdaptiveRoute(page: TourMapScreen, name: 'MyOrdersTourMapScreen'),
        AdaptiveRoute(page: PaymentScreen, name: 'MyOrdersPaymentScreen'),
        AdaptiveRoute(page: SightsListScreen, name: 'MyOrdersSightsListScreen'),
        AdaptiveRoute(page: TourListScreen, name: 'MyOrdersTourListScreen', maintainState: true),
        AdaptiveRoute(page: MapPreviewScreen, name: 'MyOrdersMapPreviewScreen'),
      ]),
      AdaptiveRoute(page: EmptyRouterPage, name: 'ProfileMainScreenRouter', initial: true, maintainState: true, children: [
        AdaptiveRoute(page: ProfileMainScreen, name: 'ProfileMainScreen', initial: true, maintainState: true),
        AdaptiveRoute(page: EditDataScreen, name: 'ProfileEditDataScreen'),
        AdaptiveRoute(page: FavoritesScreen, name: 'ProfileFavoritesScreen'),
        AdaptiveRoute(page: PromocodesMenuScreen, name: 'ProfilePromocodesMenuScreen'),
        AdaptiveRoute(page: MyPromocodesScreen, name: 'ProfileMyPromocodesScreen'),
        AdaptiveRoute(page: SharePromocodeScreen, name: 'ProfileSharePromocodeScreen'),
        AdaptiveRoute(page: SettingsScreen, name: 'ProfileSettingsScreen'),
        AdaptiveRoute(page: QuestionsAndAnswersScreen, name: 'ProfileQuestionsAndAnswersScreen'),
        AdaptiveRoute(page: TermsAndConditionsScreen, name: 'ProfileTermsAndConditionsScreen'),
        AdaptiveRoute(page: SupportScreen, name: 'ProfileSupportScreen'),
        AdaptiveRoute(page: AboutScreen, name: 'ProfileAboutScreen'),

        AdaptiveRoute(page: FilterScreen, name: 'ProfileFilterScreen'),

        //Tour flow
        AdaptiveRoute(page: TourScreen, name: 'ProfileTourScreen'),
        AdaptiveRoute(page: SightScreen, name: 'ProfileSightScreen'),
        AdaptiveRoute(page: GuideScreen, name: 'ProfileGuideScreen'),
        AdaptiveRoute(page: DownloadScreen, name: 'ProfileDownloadScreen'),
        AdaptiveRoute(page: TourMapScreen, name: 'ProfileTourMapScreen'),
        AdaptiveRoute(page: PaymentScreen, name: 'ProfilePaymentScreen'),
        AdaptiveRoute(page: SightsListScreen, name: 'ProfileSightsListScreen'),
        AdaptiveRoute(page: TourListScreen, name: 'ProfileTourListScreen', maintainState: true),
        AdaptiveRoute(page: MapPreviewScreen, name: 'ProfileMapPreviewScreen'),
      ]),
    ]),
    AdaptiveRoute(page: AuthorizationScreen),
    AdaptiveRoute(page: OnboardingScreen),
    AdaptiveRoute(page: RecoveryPasswordScreen, maintainState: false),
    AdaptiveRoute(page: SuccessfulRegistrationScreen),
    AdaptiveRoute(page: RegisterScreen, maintainState: false),
    AdaptiveRoute(page: DownloadScreen, fullscreenDialog: true),
    AdaptiveRoute(page: TermsAndConditionsScreen),
  ],
)
class $MyRouter {}

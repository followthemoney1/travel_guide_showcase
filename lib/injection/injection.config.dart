// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:appsflyer_sdk/appsflyer_sdk.dart' as _i51;
import 'package:event_bus/event_bus.dart' as _i52;
import 'package:flutter_pay/flutter_pay.dart' as _i53;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:in_app_review/in_app_review.dart' as _i67;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../data/db/hive_manager.dart' as _i4;
import '../data/db/models/user.dart' as _i24;
import '../data/dto/country/country.dart' as _i16;
import '../data/dto/guide/guide.dart' as _i62;
import '../data/dto/payment/payment.dart' as _i56;
import '../data/dto/tour/tour.dart' as _i66;
import '../data/network/auth_api_client.dart' as _i18;
import '../data/network/catalog_api_client.dart' as _i3;
import '../data/network/city_api_client.dart' as _i17;
import '../data/network/download_api_client.dart' as _i73;
import '../data/network/filter_api_client.dart' as _i74;
import '../data/network/guide_api.dart' as _i75;
import '../data/network/main_api_client.dart' as _i77;
import '../data/network/map_api_client.dart' as _i68;
import '../data/network/models/city.dart' as _i63;
import '../data/network/models/download_tour_response.dart' as _i58;
import '../data/network/models/guides.dart' as _i59;
import '../data/network/models/my_orders.dart' as _i65;
import '../data/network/models/popular_city.dart' as _i8;
import '../data/network/models/profile.dart' as _i64;
import '../data/network/models/questions_and_answers.dart' as _i57;
import '../data/network/models/recommended_tours.dart' as _i60;
import '../data/network/models/search_response.dart' as _i5;
import '../data/network/models/sight_response.dart' as _i61;
import '../data/network/models/sights.dart' as _i55;
import '../data/network/models/tour_route.dart' as _i54;
import '../data/network/my_orders_api_client.dart' as _i78;
import '../data/network/payment_api_client.dart' as _i80;
import '../data/network/profile_api_client.dart' as _i81;
import '../data/network/search_api_client.dart' as _i7;
import '../data/network/sight_api_client.dart' as _i83;
import '../data/network/tour_api_client.dart' as _i86;
import '../repository/auth_repository.dart' as _i26;
import '../repository/catalog_repository.dart' as _i15;
import '../repository/city_repository.dart' as _i33;
import '../repository/download_repository.dart' as _i35;
import '../repository/filter_repository.dart' as _i45;
import '../repository/guide_repository.dart' as _i76;
import '../repository/main_repository.dart' as _i39;
import '../repository/map_repository.dart' as _i21;
import '../repository/my_orders_repository.dart' as _i79;
import '../repository/payment_repository.dart' as _i43;
import '../repository/profile_repository.dart' as _i28;
import '../repository/search_repository.dart' as _i6;
import '../repository/sight_repository.dart' as _i47;
import '../repository/tour_repository.dart' as _i87;
import '../ui/screens/authorization/cubit/authorization_cubit.dart' as _i72;
import '../ui/screens/catalog/cubit/catalog_cubit.dart' as _i31;
import '../ui/screens/city/cubit/city_cubit.dart' as _i50;
import '../ui/screens/city_guides/cubit/city_guides_cubit.dart' as _i32;
import '../ui/screens/download/cubit/download_cubit.dart' as _i34;
import '../ui/screens/filter/cubit/filter_cubit.dart' as _i41;
import '../ui/screens/guide/cubit/guide_cubit.dart' as _i19;
import '../ui/screens/main/cubit/main_screen_cubit.dart' as _i40;
import '../ui/screens/main/widgets/languages_bottom_sheet/cubit/languages_bottom_sheet_cubit.dart'
    as _i38;
import '../ui/screens/map_preview/cubit/map_preview_cubit.dart' as _i20;
import '../ui/screens/my_orders/cubit/my_orders_cubit.dart' as _i88;
import '../ui/screens/onboarding/cubit/onboarding_screen_cubit.dart' as _i22;
import '../ui/screens/payment/cubit/payment_cubit.dart' as _i42;
import '../ui/screens/profile/edit_data/cubit/edit_data_cubit.dart' as _i36;
import '../ui/screens/profile/favorites/cubit/favorites_cubit.dart' as _i37;
import '../ui/screens/profile/profile_main/cubit/profile_main_cubit.dart'
    as _i23;
import '../ui/screens/profile/promocodes/cubit/promocodes_cubit.dart' as _i27;
import '../ui/screens/profile/questions_and_answers/cubit/questions_and_answers_cubit.dart'
    as _i29;
import '../ui/screens/profile/settings/cubit/settings_screen_cubit.dart'
    as _i69;
import '../ui/screens/profile/support/cubit/support_cubit.dart' as _i70;
import '../ui/screens/recommended_tours/cubit/recommended_tours_cubit.dart'
    as _i44;
import '../ui/screens/recovery_password/cubit/recovery_password_cubit.dart'
    as _i82;
import '../ui/screens/register/cubit/register_cubit.dart' as _i30;
import '../ui/screens/sight/cubit/sight_cubit.dart' as _i46;
import '../ui/screens/sights_list/cubit/sights_list_cubit.dart' as _i48;
import '../ui/screens/splash/cubit/splash_screen_cubit.dart' as _i84;
import '../ui/screens/successfull_registration/cubit/successful_registration_cubit.dart'
    as _i85;
import '../ui/screens/tour/cubit/tour_cubit.dart' as _i11;
import '../ui/screens/tour_list/cubit/tour_list_cubit.dart' as _i49;
import '../ui/screens/tour_map/cubit/tour_map_cubit.dart' as _i71;
import '../ui/screens/where_go_search/cubit/where_go_search_cubit.dart' as _i14;
import '../ui/shared/dialogs/in_app_review_service.dart' as _i12;
import '../ui/shared/speech_recognition_cubit/speech_recognition_cubit.dart'
    as _i10;
import '../util/branch_link_provider.dart' as _i13;
import 'modules/appsflyer_module.dart' as _i89;
import 'modules/event_bus_module.dart' as _i90;
import 'modules/flutter_pay_module.dart' as _i91;
import 'modules/hive_module.dart' as _i93;
import 'modules/in_app_review_module.dart' as _i94;
import 'modules/secure_storage_module.dart'
    as _i92; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appsFlyerModule = _$AppsFlyerModule();
  final eventBusModule = _$EventBusModule();
  final flutterPayModule = _$FlutterPayModule();
  final secureStorageModule = _$SecureStorageModule();
  final hiveModule = _$HiveModule();
  final inAppReviewModule = _$InAppReviewModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.lazySingleton<_i3.CatalogApiClient>(() => _i3.CatalogApiClient());
  gh.factory<_i4.HiveBoxConfigurator<_i5.SearchResponse>>(
      () => hiveModule.searchResponseBoxManager);
  gh.lazySingleton<_i6.SearchRepository>(() => _i6.SearchRepository(
      get<_i7.SearchApiClient>(),
      get<_i4.HiveBoxConfigurator<_i5.SearchResponse>>(),
      get<_i4.HiveBoxConfigurator<_i8.PopularCityResponse>>()));
  await gh.factoryAsync<_i9.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i10.SpeechRecognitionCubit>(
      () => _i10.SpeechRecognitionCubit());
  gh.factory<_i11.TourCubit>(() => _i11.TourCubit(
      get<_i12.InAppReviewService>(), get<_i13.BranchLinkProvider>()));
  gh.factory<_i14.WhereGoSearchCubit>(
      () => _i14.WhereGoSearchCubit(get<_i6.SearchRepository>()));
  gh.lazySingleton<_i15.CatalogRepository>(() => _i15.CatalogRepository(
      get<_i3.CatalogApiClient>(),
      get<_i4.HiveBoxConfigurator<_i16.Country>>()));
  gh.lazySingleton<_i17.CityApiClient>(
      () => _i17.CityApiClient(get<_i18.AuthApiClient>()));
  gh.factory<_i19.GuideCubit>(() => _i19.GuideCubit(
      get<_i12.InAppReviewService>(), get<_i13.BranchLinkProvider>()));
  gh.factory<_i20.MapPreviewCubit>(
      () => _i20.MapPreviewCubit(get<_i21.MapRepository>()));
  gh.lazySingleton<_i22.OnboardingScreenCubit>(
      () => _i22.OnboardingScreenCubit(get<_i9.SharedPreferences>()));
  gh.lazySingleton<_i23.ProfileMainCubit>(() => _i23.ProfileMainCubit(
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i25.FlutterSecureStorage>(),
      get<_i26.AuthRepository>()));
  gh.lazySingleton<_i27.PromocodesCubit>(
      () => _i27.PromocodesCubit(get<_i28.ProfileRepository>()));
  gh.factory<_i29.QuestionsAndAnswersCubit>(
      () => _i29.QuestionsAndAnswersCubit(get<_i28.ProfileRepository>()));
  gh.factory<_i30.RegisterCubit>(
      () => _i30.RegisterCubit(get<_i26.AuthRepository>()));
  gh.factory<_i31.CatalogCubit>(
      () => _i31.CatalogCubit(get<_i15.CatalogRepository>()));
  gh.lazySingleton<_i32.CityGuidesCubit>(
      () => _i32.CityGuidesCubit(get<_i33.CityRepository>()));
  gh.factory<_i34.DownloadCubit>(
      () => _i34.DownloadCubit(get<_i35.DownloadRepository>()));
  gh.factory<_i36.EditDataCubit>(() => _i36.EditDataCubit(
      get<_i28.ProfileRepository>(),
      get<_i25.FlutterSecureStorage>(),
      get<_i4.HiveBoxConfigurator<_i24.User>>()));
  gh.lazySingleton<_i37.FavoritesCubit>(
      () => _i37.FavoritesCubit(get<_i28.ProfileRepository>()));
  gh.factory<_i38.LanguagesBottomSheetCubit>(
      () => _i38.LanguagesBottomSheetCubit(get<_i39.MainRepository>()));
  gh.factory<_i40.MainScreenCubit>(() => _i40.MainScreenCubit(
      get<_i39.MainRepository>(),
      get<_i25.FlutterSecureStorage>(),
      get<_i9.SharedPreferences>(),
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i41.FilterCubit>()));
  gh.factory<_i42.PaymentCubit>(() => _i42.PaymentCubit(
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i43.PaymentRepository>()));
  gh.lazySingleton<_i44.RecommendedToursCubit>(() => _i44.RecommendedToursCubit(
      get<_i33.CityRepository>(),
      get<_i45.FilterRepository>(),
      get<_i39.MainRepository>(),
      get<_i41.FilterCubit>()));
  gh.lazySingleton<_i46.SightCubit>(
      () => _i46.SightCubit(get<_i47.SightRepository>()));
  gh.factory<_i48.SightsListCubit>(() => _i48.SightsListCubit(
      get<_i47.SightRepository>(),
      get<_i45.FilterRepository>(),
      get<_i41.FilterCubit>()));
  gh.factory<_i49.TourListCubit>(() => _i49.TourListCubit(
      get<_i33.CityRepository>(),
      get<_i45.FilterRepository>(),
      get<_i39.MainRepository>(),
      get<_i41.FilterCubit>()));
  gh.factory<_i50.CityCubit>(() => _i50.CityCubit(get<_i33.CityRepository>(),
      get<_i39.MainRepository>(), get<_i41.FilterCubit>()));
  gh.singleton<_i51.AppsflyerSdk>(appsFlyerModule.initAppsFlyer());
  gh.singleton<_i13.BranchLinkProvider>(_i13.BranchLinkProvider());
  gh.singleton<_i52.EventBus>(eventBusModule.eventBus);
  gh.singleton<_i53.FlutterPay>(flutterPayModule.payManager);
  gh.singleton<_i25.FlutterSecureStorage>(secureStorageModule.secureStorage);
  gh.singleton<_i4.HiveBoxConfigurator<_i54.TourRouteResponse>>(
      hiveModule.tourRouteResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i55.CitySightsResponse>>(
      hiveModule.citySightsBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i56.Payment>>(
      hiveModule.paymentBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i16.Country>>(
      hiveModule.countriesBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i57.QuestionAndAnswerResponse>>(
      hiveModule.questionAndAnswerResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i58.DownloadTourResponse>>(
      hiveModule.downloadTourResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i59.GuidesResponse>>(
      hiveModule.guidesResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i60.RecommendedToursResponse>>(
      hiveModule.recommendedToursResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i61.SightResponse>>(
      hiveModule.sightResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i24.User>>(hiveModule.userBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i62.Guide>>(hiveModule.guideBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i63.CityResponse>>(
      hiveModule.cityResponseBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i64.FavoritesResponse>>(
      hiveModule.favoriteToursBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i64.UserPromocodesResponse>>(
      hiveModule.userPromocodesBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i65.ActiveOrdersResponse>>(
      hiveModule.activeOrdersBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i65.ArchiveOrdersResponse>>(
      hiveModule.archiveOrdersBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i8.PopularCityResponse>>(
      hiveModule.popularCitiesBoxManager);
  gh.singleton<_i4.HiveBoxConfigurator<_i66.Tour>>(hiveModule.tourBoxManager);
  gh.singleton<_i67.InAppReview>(inAppReviewModule.inAppReview);
  gh.singleton<_i12.InAppReviewService>(_i12.InAppReviewService(
      get<_i67.InAppReview>(), get<_i25.FlutterSecureStorage>()));
  gh.singleton<_i68.MapApiClient>(_i68.MapApiClient());
  gh.singleton<_i21.MapRepository>(_i21.MapRepository(get<_i68.MapApiClient>(),
      get<_i4.HiveBoxConfigurator<_i54.TourRouteResponse>>()));
  gh.singleton<_i7.SearchApiClient>(_i7.SearchApiClient());
  gh.singleton<_i69.SettingsScreenCubit>(
      _i69.SettingsScreenCubit(get<_i25.FlutterSecureStorage>()));
  gh.singleton<_i70.SupportCubit>(
      _i70.SupportCubit(get<_i4.HiveBoxConfigurator<_i24.User>>()));
  gh.singleton<_i71.TourMapCubit>(_i71.TourMapCubit(get<_i21.MapRepository>()));
  gh.singleton<_i18.AuthApiClient>(_i18.AuthApiClient(
      get<_i25.FlutterSecureStorage>(),
      get<_i4.HiveBoxConfigurator<_i24.User>>()));
  gh.singleton<_i26.AuthRepository>(_i26.AuthRepository(
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i18.AuthApiClient>(),
      get<_i25.FlutterSecureStorage>()));
  gh.singleton<_i72.AuthorizationCubit>(_i72.AuthorizationCubit(
      get<_i26.AuthRepository>(), get<_i25.FlutterSecureStorage>()));
  gh.singleton<_i33.CityRepository>(_i33.CityRepository(
      get<_i17.CityApiClient>(),
      get<_i4.HiveBoxConfigurator<_i63.CityResponse>>(),
      get<_i4.HiveBoxConfigurator<_i60.RecommendedToursResponse>>(),
      get<_i4.HiveBoxConfigurator<_i59.GuidesResponse>>()));
  gh.singleton<_i73.DownloadApiClient>(
      _i73.DownloadApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i35.DownloadRepository>(_i35.DownloadRepository(
      get<_i73.DownloadApiClient>(),
      get<_i4.HiveBoxConfigurator<_i58.DownloadTourResponse>>()));
  gh.singleton<_i74.FilterApiClient>(
      _i74.FilterApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i45.FilterRepository>(
      _i45.FilterRepository(get<_i74.FilterApiClient>()));
  gh.singleton<_i75.GuideApi>(_i75.GuideApi(get<_i18.AuthApiClient>()));
  gh.singleton<_i76.GuideRepository>(_i76.GuideRepository(
      get<_i75.GuideApi>(), get<_i4.HiveBoxConfigurator<_i62.Guide>>()));
  gh.singleton<_i77.MainApiClient>(
      _i77.MainApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i39.MainRepository>(
      _i39.MainRepository(get<_i77.MainApiClient>()));
  gh.singleton<_i78.MyOrdersApiClient>(
      _i78.MyOrdersApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i79.MyOrdersRepository>(_i79.MyOrdersRepository(
      get<_i78.MyOrdersApiClient>(),
      get<_i4.HiveBoxConfigurator<_i65.ActiveOrdersResponse>>(),
      get<_i4.HiveBoxConfigurator<_i65.ArchiveOrdersResponse>>()));
  gh.singleton<_i80.PaymentApiClient>(
      _i80.PaymentApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i43.PaymentRepository>(_i43.PaymentRepository(
      get<_i80.PaymentApiClient>(), get<_i4.HiveBoxConfigurator<_i66.Tour>>()));
  gh.singleton<_i81.ProfileApiClient>(
      _i81.ProfileApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i28.ProfileRepository>(_i28.ProfileRepository(
      get<_i81.ProfileApiClient>(),
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i4.HiveBoxConfigurator<_i64.FavoritesResponse>>(),
      get<_i4.HiveBoxConfigurator<_i64.UserPromocodesResponse>>(),
      get<_i4.HiveBoxConfigurator<_i57.QuestionAndAnswerResponse>>()));
  gh.singleton<_i82.RecoveryPasswordCubit>(
      _i82.RecoveryPasswordCubit(get<_i26.AuthRepository>()));
  gh.singleton<_i83.SightApiClient>(
      _i83.SightApiClient(get<_i18.AuthApiClient>()));
  gh.singleton<_i47.SightRepository>(_i47.SightRepository(
      get<_i83.SightApiClient>(),
      get<_i4.HiveBoxConfigurator<_i61.SightResponse>>(),
      get<_i4.HiveBoxConfigurator<_i55.CitySightsResponse>>()));
  gh.singleton<_i84.SplashScreenCubit>(_i84.SplashScreenCubit(
      get<_i9.SharedPreferences>(),
      get<_i4.HiveBoxConfigurator<_i24.User>>(),
      get<_i35.DownloadRepository>()));
  gh.singleton<_i85.SuccessfulRegistrationCubit>(
      _i85.SuccessfulRegistrationCubit(get<_i26.AuthRepository>()));
  gh.singleton<_i86.TourApi>(_i86.TourApi(get<_i18.AuthApiClient>()));
  gh.singleton<_i87.TourRepository>(_i87.TourRepository(
      get<_i86.TourApi>(), get<_i4.HiveBoxConfigurator<_i66.Tour>>()));
  gh.singleton<_i41.FilterCubit>(
      _i41.FilterCubit(get<_i45.FilterRepository>()));
  gh.singleton<_i88.MyOrdersCubit>(
      _i88.MyOrdersCubit(get<_i79.MyOrdersRepository>()));
  return get;
}

class _$AppsFlyerModule extends _i89.AppsFlyerModule {}

class _$EventBusModule extends _i90.EventBusModule {}

class _$FlutterPayModule extends _i91.FlutterPayModule {}

class _$SecureStorageModule extends _i92.SecureStorageModule {}

class _$HiveModule extends _i93.HiveModule {}

class _$InAppReviewModule extends _i94.InAppReviewModule {}

class _$SharedPrefsModule extends _i92.SharedPrefsModule {}

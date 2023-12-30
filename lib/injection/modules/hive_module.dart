import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/dto/country/country.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/payment/payment.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/city.dart';
import 'package:mapo_travel_guide/data/network/models/download_tour_response.dart';
import 'package:mapo_travel_guide/data/network/models/guides.dart';
import 'package:mapo_travel_guide/data/network/models/my_orders.dart';
import 'package:mapo_travel_guide/data/network/models/popular_city.dart';
import 'package:mapo_travel_guide/data/network/models/profile.dart';
import 'package:mapo_travel_guide/data/network/models/questions_and_answers.dart';
import 'package:mapo_travel_guide/data/network/models/recommended_tours.dart';
import 'package:mapo_travel_guide/data/network/models/search_response.dart';
import 'package:mapo_travel_guide/data/network/models/sight_response.dart';
import 'package:mapo_travel_guide/data/network/models/sights.dart';
import 'package:mapo_travel_guide/data/network/models/tour_route.dart';

@module
abstract class HiveModule {
  @singleton
  HiveBoxConfigurator<User> get userBoxManager => HiveBoxConfigurator<User>(HiveBoxesNames.user);

  @singleton
  HiveBoxConfigurator<Guide> get guideBoxManager => HiveBoxConfigurator<Guide>(HiveBoxesNames.guide);

  @singleton
  HiveBoxConfigurator<CityResponse> get cityResponseBoxManager => HiveBoxConfigurator<CityResponse>(HiveBoxesNames.cityResponse);

  @singleton
  HiveBoxConfigurator<FavoritesResponse> get favoriteToursBoxManager =>
      HiveBoxConfigurator<FavoritesResponse>(HiveBoxesNames.favoriteTours);

  @singleton
  HiveBoxConfigurator<UserPromocodesResponse> get userPromocodesBoxManager =>
      HiveBoxConfigurator<UserPromocodesResponse>(HiveBoxesNames.userPromocodes);

  @singleton
  HiveBoxConfigurator<ActiveOrdersResponse> get activeOrdersBoxManager =>
      HiveBoxConfigurator<ActiveOrdersResponse>(HiveBoxesNames.activeOrders);

  @singleton
  HiveBoxConfigurator<ArchiveOrdersResponse> get archiveOrdersBoxManager =>
      HiveBoxConfigurator<ArchiveOrdersResponse>(HiveBoxesNames.archiveOrders);

  @singleton
  HiveBoxConfigurator<QuestionAndAnswerResponse> get questionAndAnswerResponseBoxManager =>
      HiveBoxConfigurator<QuestionAndAnswerResponse>(HiveBoxesNames.questionAndAnswer);

  @singleton
  HiveBoxConfigurator<CitySightsResponse> get citySightsBoxManager => HiveBoxConfigurator<CitySightsResponse>(HiveBoxesNames.citySights);

  HiveBoxConfigurator<SearchResponse> get searchResponseBoxManager => HiveBoxConfigurator<SearchResponse>(HiveBoxesNames.searchResponse);

  @singleton
  HiveBoxConfigurator<PopularCityResponse> get popularCitiesBoxManager =>
      HiveBoxConfigurator<PopularCityResponse>(HiveBoxesNames.popularCities);

  @singleton
  HiveBoxConfigurator<Country> get countriesBoxManager => HiveBoxConfigurator<Country>(HiveBoxesNames.country);

  // @singleton
  // HiveBoxConfigurator<FilterCityTourTypeResponse> get filterCityTourTypeResponseBoxManager =>
  //     HiveBoxConfigurator<FilterCityTourTypeResponse>(HiveBoxesNames.filterCityTourTypeResponse);
  //
  // @singleton
  // HiveBoxConfigurator<FilterGuideTourTypeResponse> get filterGuideTourTypeResponseBoxManager =>
  //     HiveBoxConfigurator<FilterGuideTourTypeResponse>(HiveBoxesNames.filterGuideTourTypeResponse);
  //
  // @singleton
  // HiveBoxConfigurator<FilterSightTourTypeResponse> get filterSightTourTypeResponseBoxManager =>
  //     HiveBoxConfigurator<FilterSightTourTypeResponse>(HiveBoxesNames.filterSightTourTypeResponse);

  @singleton
  HiveBoxConfigurator<SightResponse> get sightResponseBoxManager => HiveBoxConfigurator<SightResponse>(HiveBoxesNames.sightResponse);

  @singleton
  HiveBoxConfigurator<RecommendedToursResponse> get recommendedToursResponseBoxManager =>
      HiveBoxConfigurator<RecommendedToursResponse>(HiveBoxesNames.recommendedToursResponse);

  @singleton
  HiveBoxConfigurator<GuidesResponse> get guidesResponseBoxManager => HiveBoxConfigurator<GuidesResponse>(HiveBoxesNames.guidesResponse);

  @singleton
  HiveBoxConfigurator<DownloadTourResponse> get downloadTourResponseBoxManager => HiveBoxConfigurator<DownloadTourResponse>(HiveBoxesNames.downloadTourResponse);

  @singleton
  HiveBoxConfigurator<Tour> get tourBoxManager => HiveBoxConfigurator<Tour>(HiveBoxesNames.tour);

  @singleton
  HiveBoxConfigurator<TourRouteResponse> get tourRouteResponseBoxManager =>
      HiveBoxConfigurator<TourRouteResponse>(HiveBoxesNames.tourRouteResponse);
  @singleton
  HiveBoxConfigurator<Payment> get paymentBoxManager => HiveBoxConfigurator<Payment>(HiveBoxesNames.payment);

}

abstract class HiveBoxesNames {
  static const configurations = 'configurations';
  static const user = 'user';
  static const guide = 'guide';
  static const favoriteTours = 'favoriteTours';
  static const userPromocodes = 'userPromocodes';
  static const activeOrders = 'activeOrders';
  static const archiveOrders = 'archiveOrders';
  static const cityResponse = 'cityResponse';
  static const questionAndAnswer = 'questionAndAnswer';
  static const citySights = 'citySights';
  static const country = 'country';
  static const popularCities = 'popularCities';
  static const searchResponse = 'searchResponse';
  // static const filterCityTourTypeResponse = 'filterCityTourTypeResponse';
  // static const filterSightTourTypeResponse = 'filterSightTourTypeResponse';
  // static const filterGuideTourTypeResponse = 'filterGuideTourTypeResponse';
  static const sightResponse = 'sightResponse';
  static const recommendedToursResponse = 'recommendedToursResponse';
  static const guidesResponse = 'guidesResponse';
  static const downloadTourResponse = 'downloadTourResponse';
  static const tour = 'tour';
  static const payment = 'payment';
  static const tourRouteResponse = 'tourRouteResponse';
  static const ImageUrl = 'ImageUrl';
}

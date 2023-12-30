import 'dart:developer';

import 'package:hive/hive.dart';

abstract class HiveTypes {
  static const city = 1;
  static const tour = 2;
  static const tourType = 3;
  static const guide = 4;
  static const sight = 5;
  static const cityResponse = 6;
  static const favorites = 7;
  static const userPromocodes = 8;
  static const activeOrders = 9;
  static const archiveOrders = 10;
  static const achievement = 11;
  static const questionAndAnswer = 12;
  static const questionAndAnswerResponse = 13;
  static const user = 14;
  static const toursQuantity = 15;
  static const citySights = 16;
  static const country = 17;
  static const searchResponse = 18;
  static const popularCities = 19;
  static const filterCityTourTypeResponse = 20;
  static const filterSightTourTypeResponse = 21;
  static const filterGuideTourTypeResponse = 22;
  static const sightResponse = 23;
  static const recommendedToursResponse = 24;
  static const guidesResponse = 25;
  static const tourLanguageInfo = 26;
  static const downloadTourInfo = 27;
  static const timeForTourRemains = 28;
  static const tourRouteResponse = 29;
  static const sightRouteItem = 30;
  static const payment = 31;
  static const cityTranslate = 32;
  static const countryTranslate = 33;
  static const imageDto = 34;
  static const popularToursResponse = 36;
  static const meResponse = 37;
  static const socialNetworks = 38;
}

class HiveBoxConfigurator<E> {
  final String boxName;
  Box<E>? _box;

  HiveBoxConfigurator(this.boxName) {
    Hive.openBox<E>(boxName).then((value) {
      _box = value;
      log('Hive Box with name: ${value.name} opened');
    });
  }

  Iterable<E>? get values => _box?.values;

  Iterable? get keys => _box?.keys;

  Map<dynamic, E>? get toMap => _box?.toMap();

  bool get isNotEmpty => _box?.isNotEmpty ?? false;

  E? get(dynamic key, {E? defaultValue}) {
    return _box?.get(key, defaultValue: defaultValue);
  }

  Future<int> add(E value) async {
    return await _box!.add(value);
  }

  Future<void> delete(dynamic key) async {
    await _box!.delete(key);
  }

  Future<void> put(dynamic key, E value) async {
    await _box!.put(key, value);
  }

  Future<void> close() async {
    await _box!.close();
  }
}

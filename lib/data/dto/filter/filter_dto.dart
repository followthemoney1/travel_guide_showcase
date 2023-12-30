import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';

class FilterDto {
  String? identifier;
  SortOrder sortBy;
  Set<Language> languagesSelected;
  Set<FilterCategory> categoriesSelected;

  FilterDto({this.identifier, required this.sortBy, required this.languagesSelected, required this.categoriesSelected});
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_category.freezed.dart';
part 'filter_category.g.dart';

@freezed
class FilterCategory with _$FilterCategory {
  factory FilterCategory({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String imageUrl,
    @Default(0) int itemsAmount,
  }) = _FilterCategory;

  factory FilterCategory.fromJson(Map<String, dynamic> json) => _$FilterCategoryFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'filter_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterCategory _$FilterCategoryFromJson(Map<String, dynamic> json) {
  return _FilterCategory.fromJson(json);
}

/// @nodoc
class _$FilterCategoryTearOff {
  const _$FilterCategoryTearOff();

  _FilterCategory call(
      {int id = 0,
      String name = '',
      String imageUrl = '',
      int itemsAmount = 0}) {
    return _FilterCategory(
      id: id,
      name: name,
      imageUrl: imageUrl,
      itemsAmount: itemsAmount,
    );
  }

  FilterCategory fromJson(Map<String, Object> json) {
    return FilterCategory.fromJson(json);
  }
}

/// @nodoc
const $FilterCategory = _$FilterCategoryTearOff();

/// @nodoc
mixin _$FilterCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get itemsAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCategoryCopyWith<FilterCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCategoryCopyWith<$Res> {
  factory $FilterCategoryCopyWith(
          FilterCategory value, $Res Function(FilterCategory) then) =
      _$FilterCategoryCopyWithImpl<$Res>;
  $Res call({int id, String name, String imageUrl, int itemsAmount});
}

/// @nodoc
class _$FilterCategoryCopyWithImpl<$Res>
    implements $FilterCategoryCopyWith<$Res> {
  _$FilterCategoryCopyWithImpl(this._value, this._then);

  final FilterCategory _value;
  // ignore: unused_field
  final $Res Function(FilterCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? itemsAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemsAmount: itemsAmount == freezed
          ? _value.itemsAmount
          : itemsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FilterCategoryCopyWith<$Res>
    implements $FilterCategoryCopyWith<$Res> {
  factory _$FilterCategoryCopyWith(
          _FilterCategory value, $Res Function(_FilterCategory) then) =
      __$FilterCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String imageUrl, int itemsAmount});
}

/// @nodoc
class __$FilterCategoryCopyWithImpl<$Res>
    extends _$FilterCategoryCopyWithImpl<$Res>
    implements _$FilterCategoryCopyWith<$Res> {
  __$FilterCategoryCopyWithImpl(
      _FilterCategory _value, $Res Function(_FilterCategory) _then)
      : super(_value, (v) => _then(v as _FilterCategory));

  @override
  _FilterCategory get _value => super._value as _FilterCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? itemsAmount = freezed,
  }) {
    return _then(_FilterCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemsAmount: itemsAmount == freezed
          ? _value.itemsAmount
          : itemsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterCategory implements _FilterCategory {
  _$_FilterCategory(
      {this.id = 0, this.name = '', this.imageUrl = '', this.itemsAmount = 0});

  factory _$_FilterCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_FilterCategoryFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String imageUrl;
  @JsonKey(defaultValue: 0)
  @override
  final int itemsAmount;

  @override
  String toString() {
    return 'FilterCategory(id: $id, name: $name, imageUrl: $imageUrl, itemsAmount: $itemsAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.itemsAmount, itemsAmount) ||
                const DeepCollectionEquality()
                    .equals(other.itemsAmount, itemsAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(itemsAmount);

  @JsonKey(ignore: true)
  @override
  _$FilterCategoryCopyWith<_FilterCategory> get copyWith =>
      __$FilterCategoryCopyWithImpl<_FilterCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilterCategoryToJson(this);
  }
}

abstract class _FilterCategory implements FilterCategory {
  factory _FilterCategory(
      {int id,
      String name,
      String imageUrl,
      int itemsAmount}) = _$_FilterCategory;

  factory _FilterCategory.fromJson(Map<String, dynamic> json) =
      _$_FilterCategory.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  int get itemsAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterCategoryCopyWith<_FilterCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

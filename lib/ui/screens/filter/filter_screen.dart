import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/items/filter_category_item.dart';
import 'package:mapo_travel_guide/ui/shared/items/filter_language_item.dart';
import 'package:mapo_travel_guide/ui/shared/items/filter_sorting_items.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class FilterScreen extends StatelessWidget {
  final filterCubit = locator.get<FilterCubit>();

  FilterScreen({
    Key? key,
    required FilterType type,
    required String identifier,
  }) : super(key: key) {
    filterCubit.type = type;
    filterCubit.identifier = identifier;
    filterCubit.initCubit();
  }

  final dividerColor = Color.fromRGBO(48, 56, 74, .2);
  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    return Scaffold(
      appBar: _buildAppBar(context, loc),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          )),
          child: BlocBuilder<FilterCubit, FilterState>(
            bloc: filterCubit,
            builder: (context, state) {
              print(state);
              return state.when(
                initial: () => initApp(loc, context),
                error: (err) {
                  composeRedMessage(err.localizedMessage(context)).show(context);
                  return initApp(loc, context);
                },
                loading: () => EndlessProgress(),
                clear: () => initApp(loc, context),
              );
            },
          )),
    );
  }

 PreferredSizeWidget _buildAppBar(BuildContext context, MLoc loc) {
    return GradientAppBar(
      title: loc.filters,
      trailing: Row(
        children: [
          IconButton(
            icon: Icon(Icons.done),
            splashRadius: 25,
            color: colorWhite,
            onPressed: () async {
              await context.router.pop(filterCubit.getFilterDto());
            },
          ),
          IconButton(
            icon: Icon(Icons.delete_sweep),
            splashRadius: 25,
            color: colorWhite,
            onPressed: () => filterCubit.clearFilter(),
          ),
        ],
      ),
    );
  }

  Widget initApp(MLoc loc, BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: paddingDefault,
          ),
          child: Text(
            loc.selectCateg,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          child: FilterCategoryItem(
              category: FilterCategory(
                id: 0,
                name: loc.uAll,
                imageUrl: categoryAllImage,
                itemsAmount: filterCubit.categories.fold(
                  0,
                  (previousValue, element) => previousValue + element.itemsAmount,
                ),
              ),
              filterCubit: filterCubit),
        ),
        ...filterCubit.categories
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                  child: FilterCategoryItem(category: e, filterCubit: filterCubit),
                ))
            .toList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          child: Divider(
            height: 45,
            thickness: 1,
            color: dividerColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: paddingDefault,
            right: paddingDefault,
          ),
          child: Text(
            loc.chooseLang,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        ...filterCubit.languages
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: paddingSmall,
                  ),
                  child: FilterLanguageItem(
                    language: e,
                    filterCubit: filterCubit,
                  ),
                ))
            .toList(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          child: Divider(
            height: 45,
            thickness: 1,
            color: dividerColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: paddingDefault,
            right: paddingDefault,
          ),
          child: Text(
            loc.sorting,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: FilterSortingItems(
            filterCubit: filterCubit,
          ),
        )
      ],
    );
  }
}

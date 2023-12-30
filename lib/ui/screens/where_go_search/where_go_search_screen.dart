import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/where_go_search/cubit/where_go_search_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/app_bar_with_search_field.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/items/city_item.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class WhereGoSearchScreen extends StatefulWidget {
  final String countryCode;

  WhereGoSearchScreen({Key? key, required this.countryCode}) : super(key: key);

  @override
  _WhereGoSearchScreenState createState() => _WhereGoSearchScreenState();
}

class _WhereGoSearchScreenState extends State<WhereGoSearchScreen> {
  final _controller = TextEditingController();
  WhereGoSearchCubit searchCubit = locator<WhereGoSearchCubit>();

  @override
  void initState() {
    super.initState();
    searchCubit.initState(widget.countryCode);
  }

  @override
  void dispose() {
    searchCubit.initState(widget.countryCode);
    super.dispose();
  }

  @override
  Widget build(BuildContext mainContext) {
    final loc = MLoc.of(mainContext);

    searchCubit.checkLanguageChanging(widget.countryCode);

    return Scaffold(
      appBar: AppBarWithSearchField<City>(
        onBackArrowTap: () => mainContext.router.pop(),
        itemBuilder: (BuildContext context, itemData) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
            child: Text(itemData.name),
          );
        },
        placeholder: loc.whereGo,
        onChanged: (value) {
          if (value.isEmpty) {
            searchCubit.initState(widget.countryCode);
          }
        },
        onSuggestionSelected: (suggestion) async {
          final city = suggestion;
          if (city.id == null) {
            _controller.clear();
            return;
          }
          _controller.text = city.name;
          await searchCubit.getCity(city.id!);
        },
        suggestionsCallback: (String pattern) async {
          var result = pattern.isNotEmpty ? await searchCubit.matchCities(pattern) : await searchCubit.matchCities('');
          if (result!.isEmpty) {
            result.add(City(name: loc.noCity));
          }
          return result;
        },
        controller: _controller,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocBuilder<WhereGoSearchCubit, WhereGoSearchState>(
          bloc: searchCubit,
          builder: (context, state) {
            return state.when(
              initial: () => _buildInitial(mainContext, loc),
              result: () => _buildResult(mainContext, loc),
              error: (message) => MapoErrorWidget(message: message),
              loading: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInitial(BuildContext context, MLoc loc) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: paddingDefault,
        vertical: paddingSmall,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: paddingSmall,
          ),
          child: Text(
            loc.popPlaces,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ...searchCubit.popularCities.map(
          (e) => Padding(
            padding: EdgeInsets.only(bottom: paddingSmall),
            child: CityItem(
              onTap: () => goToCity(context, e.id!),
              city: e,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResult(BuildContext context, MLoc loc) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: paddingDefault,
        vertical: paddingSmall,
      ),
      children: [
        Text(
          loc.searchRes,
          style: Theme.of(context).textTheme.headline6,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: paddingSmall),
          child: CityItem(
            onTap: () => goToCity(context, searchCubit.result.id!),
            city: searchCubit.result,
          ),
        ),
        if (searchCubit.nearbyCities.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: paddingSmall),
            child: Text(
              loc.nearbyPlaces,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ...searchCubit.nearbyCities.map(
          (e) => Padding(
            padding: EdgeInsets.only(bottom: 14.0),
            child: CityItem(
              onTap: () => goToCity(context, e.id!),
              city: e,
            ),
          ),
        )
      ],
    );
  }

  void goToCity(BuildContext context, int cityId) async {
    await context.router.push(
      MainCityScreen(cityId: cityId),
    );
    searchCubit.initState(widget.countryCode);
  }
}

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/profile/favorites/cubit/favorites_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final FavoritesCubit cubit = FavoritesCubit(locator<ProfileRepository>());

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.favorites),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill),
          ),
          child: BlocBuilder<FavoritesCubit, FavoritesState>(
              bloc: cubit,
              builder: (context, state) {
                return state.when(initial: () => EndlessProgress(), favoritesError: (ErrorResponse message) => MapoErrorWidget(message: message), favoritesLoading: () => EndlessProgress(), loaded: (List<Tour> tours) => _initContent(theme, loc, context, tours: tours));
              }),
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context, {List<Tour>? tours}) {
    return tours != null && tours.isNotEmpty
        ? ListView(
            physics: BouncingScrollPhysics(),
            children: tours
                .map((tour) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: spaceSuperSmall,
                        horizontal: spaceDefault,
                      ),
                      child: TourItemCard(
                        price: cubit.prices[Platform.isAndroid ? tour.googleProductId : tour.appleProductId]!,
                        tour: tour,
                        showPrice: !(tour.paid),
                        onTap: () => _goToTheTourScreen(tour),
                      ),
                    ))
                .toList())
        : Center(
            child: Text(
            loc.favoritesListEmpty,
            textAlign: TextAlign.center,
            style: theme.textTheme.headline5!.apply(color: colorDarkBlue),
          ));
  }

  void _goToTheTourScreen(Tour tour) async {
    await context.router.push(ProfileTourScreen(
      tourId: tour.id.toString(),
      tourName: tour.name,
    ));
    await cubit.initialization();
  }
}

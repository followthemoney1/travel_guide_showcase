import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/sight/cubit/sight_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/expansion_text.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/header_row.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';

class SightScreen extends StatelessWidget {
  final _sightCubit = locator.get<SightCubit>();
  final String? sightName;

  SightScreen({Key? key, required int sightId, this.sightName = ''}) : super(key: key) {
    _sightCubit.sightId = sightId;
  }

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
  
    return Scaffold(
      appBar: GradientAppBar(
        title: sightName,
        onBackArrow: () => context.router.pop(),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocBuilder<SightCubit, SightState>(
          bloc: _sightCubit,
          builder: (context, state) {
            return state.when(
              loaded: () => _buildInitial(context, loc),
              loading: () => EndlessProgress(),
              error: (error) => MapoErrorWidget(message: error),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInitial(BuildContext context, MLoc loc) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * .35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(itemCornersRadius),
                bottomLeft: Radius.circular(itemCornersRadius),
              ),
              boxShadow: [itemShadowDefault()],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(itemCornersRadius),
                bottomLeft: Radius.circular(itemCornersRadius),
              ),
              child: CachedNetworkImage(
                imageUrl: _sightCubit.sightImageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpacer(spaceSmall),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: Text(
                  _sightCubit.sightName,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: ExpansionText(_sightCubit.sightDescription),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.only(left: paddingDefault),
                child: HeaderRow(
                  headerText: loc.includedInSuchTours,
                  onPressed: _sightCubit.recommendedTours.length > 3 ? () => _goToAllTours(context) : null,
                ),
              ),
              verticalSpacer(spaceSmall),
              ..._sightCubit.recommendedTours
                  .map((tour) => Padding(
                        padding: const EdgeInsets.only(left: paddingDefault, right: paddingDefault, bottom: paddingSuperSmall),
                        child: TourItemCard(
                          price: _sightCubit.prices[Platform.isAndroid ? tour.googleProductId : tour.appleProductId] ?? '',
                          tour: tour,
                          showPrice: !(tour.paid),
                          onTap: () => _goToTour(
                            context,
                            tour.id.toString(),
                            tour.name,
                          ),
                        ),
                      ))
                  .toList()
            ],
          ),
        ],
      ),
    );
  }

  void _goToAllTours(BuildContext context) {
    final navigator = AutoRouter.of(context);
    if (navigator.routeData.name == MainScreenRouter.name) {
      context.router.push(MainTourListScreen(
        categoryId: '',
        sight: Sight(
          id: _sightCubit.sightId,
          name: _sightCubit.sightName,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      context.router.push(CatalogTourListScreen(
        categoryId: '',
        sight: Sight(
          id: _sightCubit.sightId,
          name: _sightCubit.sightName,
        ),
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      context.router.push(ProfileTourListScreen(
        categoryId: '',
        sight: Sight(
          id: _sightCubit.sightId,
          name: _sightCubit.sightName,
        ),
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      context.router.push(MyOrdersTourListScreen(
        categoryId: '',
        sight: Sight(
          id: _sightCubit.sightId,
          name: _sightCubit.sightName,
        ),
      ));
    }
  }

  void _goToTour(BuildContext context, String tourId, String tourName) {
    final navigator = AutoRouter.of(context);
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    }
  }
}

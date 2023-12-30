import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/city_guides/cubit/city_guides_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/items/guide_item.dart';

import '../../theme.dart';

class CityGuidesScreen extends StatelessWidget {
  final City city;
  final _cityGuidesCubit = locator.get<CityGuidesCubit>();
  CityGuidesScreen({Key? key, required this.city}) : super(key: key) {
    _cityGuidesCubit.cityId = city.id!;
  }

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);

    return Scaffold(
      appBar: _buildAppBar(context, loc),
      body: BlocBuilder<CityGuidesCubit, CityGuidesState>(
        builder: (context, state) {
          return state.when(
            initial: (guides) => _buildInitial(context, loc, guides),
            loading: () => EndlessProgress(),
            error: (error) => _buildError(context, error),
          );
        },
      ),
    );
  }

  Widget _buildInitial(BuildContext context, MLoc loc, List<Guide> guides) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: paddingDefault,
      ),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Text(
            loc.allGuides,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ...guides
            .map(
              (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: GuideItem(
                    guide: e,
                    onTap: () => _goToGuideScreen(context, e),
                  )),
            )
            .toList()
      ],
    );
  }

  Widget _buildError(BuildContext context, ErrorResponse message) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.warning,
            color: colorRed,
            size: 50,
          ),
          Text(
            message.localizedMessage(context),
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }

 PreferredSizeWidget _buildAppBar(BuildContext context, MLoc loc) {
    return GradientAppBar(
      title: city.name,
      onBackArrow: () => context.router.pop(),
    );
  }

  void _goToGuideScreen(BuildContext context, Guide guide) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainGuideScreen(
        cityName: city.name,
        guideId: guide.id.toString(),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogGuideScreen(
        cityName: city.name,
        guideId: guide.id.toString(),
      ));
    }
  }
}

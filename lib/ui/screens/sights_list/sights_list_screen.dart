import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/filter_repository.dart';
import 'package:mapo_travel_guide/repository/sight_repository.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/sights_list/cubit/sights_list_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/empty_list_placeholder.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/items/sights_item.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class SightsListScreen extends StatelessWidget {
  final SightsListCubit cubit = locator<SightsListCubit>();
  final City city;

  SightsListScreen({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
        appBar: DefaultAppBar(
          title: city.name,
          actions: [
            MapoIconButton(
              imagePath: Images.filter,
              onTap: () => _goToFilter(
                mainContext,
                FilterType.sightsByCityId,
                city.id.toString(),
              ),
              color: Colors.white,
              size: 18,
            ),
          ],
        ),
        body: Material(
            child: Ink(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.cloudsBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocConsumer<SightsListCubit, SightsListState>(
            bloc: cubit,
            listener: (context, state) {
              state.maybeWhen(
                error: (message) => composeRedMessage(message.localizedMessage(context)).show(context),
                orElse: () => _initContent(theme, loc, context),
              );
            },
            builder: (context, state) {
              return state.when(
                initial: () {
                  cubit.initialization(cityId: city.id!);
                  return EndlessProgress();
                },
                error: (ErrorResponse message) => _initContent(theme, loc, context),
                loading: () => EndlessProgress(),
                loaded: (List<Sight> sightsList) => _initContent(
                  theme,
                  loc,
                  context,
                  sightsList: sightsList,
                ),
              );
            },
          ),
        )));
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context, {List<Sight>? sightsList}) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: paddingDefault),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: Text(loc.allSights, style: Theme.of(context).textTheme.headline6),
        ),
        buildSights(loc, sightsList ??= [], context)
      ],
    );
  }

  Widget buildSights(MLoc loc, List<Sight> sights, BuildContext context) {
    return sights.isEmpty
        ? EmptyListPlaceholder(placeholderText: loc.noSightsYet)
        : Column(
            children: sights
                .map((sightsRes) => SightItem(
                      sights: sightsRes,
                      onTap: () => _goToPopularSight(sightsRes.id, sightsRes.name, context),
                    ))
                .toList(),
          );
  }

  void _goToPopularSight(int sightsId, String sightName, BuildContext context) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersSightScreen(
        sightId: sightsId,
        sightName: sightName,
      ));
    }
  }

  void _goToFilter(BuildContext context, FilterType type, String identifier) async {
    final navigator = context.router;
    var value;
    if (navigator.routeData.name == CatalogScreenRouter.name) {
      value = await navigator.push(CatalogFilterScreen(
        type: type,
        identifier: identifier,
      ));
    } else if (navigator.routeData.name == MainScreenRouter.name) {
      value = await navigator.push(MainFilterScreen(
        type: type,
        identifier: identifier,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      value = await navigator.push(ProfileFilterScreen(
        type: type,
        identifier: identifier,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      value = await navigator.push(MyOrdersFilterScreen(
        type: type,
        identifier: identifier,
      ));
    }
    if (value is FilterDto) {
      await cubit.applyFilter(city.id!, value);
    }
  }
}

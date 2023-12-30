import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/cubit/promocodes_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../../theme.dart';

class MyPromocodesScreen extends StatefulWidget {
  @override
  _MyPromocodesScreenState createState() => _MyPromocodesScreenState();
}

class _MyPromocodesScreenState extends State<MyPromocodesScreen> {
  final PromocodesCubit cubit = PromocodesCubit(locator<ProfileRepository>());
  PageController controller = PageController();
  int _curr = 0;

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.myPromocodes),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: BlocBuilder<PromocodesCubit, PromocodesState>(
              bloc: cubit,
              builder: (context, state) {
                return state.when(initial: () => EndlessProgress(), promocodesError: (ErrorResponse message) => MapoErrorWidget(message: message), promocodesLoading: () => EndlessProgress(), promocodesLoaded: (List<Tour> promocodes) => _initContent(theme, loc, context, promocodes: promocodes));
              }),
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context, {List<Tour>? promocodes}) {
    var activeToursList = promocodes ??= [];
    var usedToursList = promocodes;
    return Column(
      children: [
        _buildTabButtons(loc),
        Flexible(
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int num) {
              setState(() {
                _curr = num;
              });
            },
            children: [
              _buildTab(activeToursList, true),
              _buildTab(usedToursList, false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabButtons(MLoc loc) {
    return Padding(
        padding: EdgeInsets.all(spaceDefault),
        child: Container(
          height: 48,
          child: Row(
            children: _curr == 0
                ? [
                    Expanded(child: GreenButton(onPressed: () => controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear), title: loc.activePromocodes, noUpperCase: true, boldText: true)),
                    horizontalSpacer(horizontalSpace),
                    Expanded(
                      child: BorderlessButton(onPressed: () => controller.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear), title: loc.usedPromocodes, noUpperCase: true, boldText: true),
                    ),
                  ]
                : [
                    Expanded(
                      child: BorderlessButton(onPressed: () => controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear), title: loc.activePromocodes, noUpperCase: true, boldText: true),
                    ),
                    horizontalSpacer(horizontalSpace),
                    Expanded(
                      child: GreenButton(onPressed: () => controller.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear), title: loc.usedPromocodes, noUpperCase: true, boldText: true),
                    ),
                  ],
          ),
        ));
  }

  Widget _buildTab(List<Tour>? tours, bool active) {
    var toursList = tours != null
        ? tours
            .map((tour) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: spaceDefault, vertical: spaceSuperSmall),
                  child: TourItemCard(
                    price: cubit.prices[Platform.isAndroid ? tour.googleProductId : tour.appleProductId]!,
                    tour: tour,
                    showPrice: !active,
                    lineThrough: !active,
                    showId: true,
                  ),
                ))
            .toList()
        : [];
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Padding(padding: EdgeInsets.symmetric(horizontal: spaceDefault, vertical: 10), child: Text('26.10', style: Theme.of(context).textTheme.headline6)), ...toursList],
    ));
  }
}

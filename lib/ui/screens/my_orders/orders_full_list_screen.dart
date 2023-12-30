import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/currencies.dart';
import 'package:mapo_travel_guide/util/images.dart';

class OrdersFullListScreen extends StatelessWidget {
  final List<Tour> tours;
  final String title;

  const OrdersFullListScreen({Key? key, required this.tours, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    return Scaffold(
      appBar: DefaultAppBar(title: title),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: spaceDefault),
            child: FutureBuilder<Map<String, String>>(
              initialData: {},
              future: Currencies.prepareToursPrices(tours),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                      physics: BouncingScrollPhysics(),
                      children: tours
                          .map((tour) => Padding(
                                padding: EdgeInsets.symmetric(vertical: spaceSuperSmall),
                                child: TourItemCard(
                                  price: snapshot.data![Platform.isAndroid ? tour.googleProductId : tour.appleProductId] ?? '',
                                  tour: tour,
                                  showPrice: title != loc.allActive,
                                  onTap: () => _gouToATour(context, tour.id!, tour.name),
                                ),
                              ))
                          .toList());
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  void _gouToATour(BuildContext context, int id, String tourName) async {
    await context.router.push(MyOrdersTourScreen(
      tourId: id.toString(),
      tourName: tourName,
    ));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class CitiesNearbyItem extends StatelessWidget {
  final City city;
  final Function() onTap;

  const CitiesNearbyItem({Key? key, required this.city, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    var theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        child: Container(
          height: cardHeight,
          child: Material(
            child: InkWell(
              onTap: onTap,
              highlightColor: colorWhite,
              borderRadius: BorderRadius.circular(buttonCornersRadius),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                    imageUrl: city.imageUrl,
                  ),
                  Container(
                    decoration: BoxDecoration(gradient: darkGradientBottomTop()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(paddingSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          city.name,
                          style: theme.textTheme.subtitle1!.apply(color: colorWhite),
                        ),
                        Text(
                          '${city.toursAmount} ${loc.tours}',
                          style: theme.textTheme.overline!.apply(color: colorWhite),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

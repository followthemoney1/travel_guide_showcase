import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';

class CityItem extends StatelessWidget {
  final City city;
  final Function()? onTap;
  const CityItem({Key? key, required this.city, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [itemShadowDefault()],
        color: colorWhite,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        child: Container(
          height: cardHeight,
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CachedNetworkImage(
                    imageUrl: city.imageUrl,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: paddingSmall),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AutoSizeText(
                          city.name,
                          maxFontSize: maxFontSize,
                          minFontSize: minFontSize,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.subtitle1!.apply(color: colorDarkBlue),
                        ),
                        Text(
                          '${loc.audiotours} ${city.toursAmount}',
                          style: Theme.of(context).textTheme.bodyText2!.apply(color: colorNavyBlue),
                        ),
                        Text(
                          '${loc.guides} ${city.guidesAmount}',
                          style: Theme.of(context).textTheme.bodyText2!.apply(color: colorNavyBlue),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  radius: 100,
                  borderRadius: BorderRadius.circular(buttonCornersRadius),
                  onTap: onTap,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

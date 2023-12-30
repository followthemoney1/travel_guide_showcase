import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GuideItem extends StatelessWidget {
  final Guide guide;
  final Function()? onTap;

  const GuideItem({Key? key, this.onTap, required this.guide}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var loc = MLoc.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: paddingSmall),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          boxShadow: [itemShadowDefault()],
          color: colorWhite,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          child: Container(
            height: cardHeight,
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(buttonCornersRadius),
                onTap: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      width: cardImageWidth,
                      height: cardHeight,
                      fit: BoxFit.cover,
                      imageUrl: guide.imageUrl,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              '${guide.name} ${guide.surname}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              softWrap: true,
                              style: theme.textTheme.subtitle1!.apply(color: colorDarkBlue),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${guide.numberOfTours} ${loc.tours}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              softWrap: true,
                              style: theme.textTheme.bodyText2,
                            ),
                          ),
                          Row(
                            children: [
                              SmoothStarRating(
                                allowHalfRating: true,
                                color: colorYellow,
                                borderColor: colorYellow,
                                starCount: 5,
                                // isReadOnly: true,
                                rating: guide.averageRate,
                                size: 20,
                              ),
                              horizontalSpacer(spaceSuperSmall),
                              Text(
                                '${guide.averageRate}',
                                style: theme.textTheme.overline,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class SightItem extends StatelessWidget {
  final Sight sights;
  final Function()? onTap;

  const SightItem({
    Key? key,
    this.onTap,
    required this.sights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    var theme = Theme.of(context);
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
          child: Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(buttonCornersRadius),
              onTap: onTap,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(flex: 3, child: SizedBox.shrink()),
                      Expanded(
                        flex: 7,
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CachedNetworkImage(height: iconSizeSmall, fit: BoxFit.cover, imageUrl: sights.flagUrl),
                                  horizontalSpacer(spaceSuperSmall),
                                  Flexible(
                                      child: Text(
                                    sights.place,
                                    style: theme.textTheme.overline,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                ],
                              ),
                              Text(
                                sights.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: true,
                                style: theme.textTheme.subtitle1!.apply(color: colorDarkBlue),
                              ),
                              Text(
                                '${loc.includedIn} ${sights.inclusionNumber}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: true,
                                style: theme.textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned.fill(
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: .3,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: sights.imageUrl.first,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

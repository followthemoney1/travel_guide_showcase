import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class TourItemCard extends StatelessWidget {
  final String price;
  final Tour tour;
  final double bottomRowHeight = 20;
  final double elementsSpace = 5;
  final bool showPrice;
  final bool showId;
  final bool lineThrough;
  final double avatarRadius = 6;
  final Function()? onTap;

  TourItemCard({
    Key? key,
    required this.tour,
    this.showPrice = true,
    this.lineThrough = false,
    this.showId = false,
    this.onTap,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [itemShadowDefault()],
        color: colorWhite,
      ),
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
                  padding: const EdgeInsets.symmetric(horizontal: paddingSuperSmall, vertical: paddingSuperPuperSmall),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        if (tour.typeIcon != null)
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(colorDarkBlue, BlendMode.srcIn),
                            child: CachedNetworkImage(
                              imageUrl: tour.typeIcon,
                              height: iconSizeSmall,
                              width: iconSizeSmall,
                            ),
                          ),
                        horizontalSpacer(spaceSuperPuperSmall),
                        Text(
                          tour.type,
                          style: Theme.of(context).textTheme.caption!.apply(color: colorNavyBlue, fontSizeDelta: -3),
                        ),
                      ]),
                      AutoSizeText(
                        tour.name,
                        maxLines: 2,
                        maxFontSize: maxFontSize,
                        minFontSize: minFontSize,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.subtitle2!.apply(color: colorDarkBlue),
                      ),
                      verticalSpacer(spaceSuperPuperSmall),
                      Row(children: [
                        CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(tour.guide!.imageUrl),
                          radius: avatarRadius,
                        ),
                        horizontalSpacer(horizontalSpace),
                        Text('${tour.guide!.name} ${tour.guide!.surname}',
                            style: Theme.of(context).textTheme.caption!.apply(color: colorDarkBlue, fontSizeDelta: -1))
                      ]),
                      verticalSpacer(spaceSuperPuperSmall),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(flex: 0, child: _buildBadge(context, Images.duration, tour.duration)),
                          Flexible(flex: 0, child: _buildBadge(context, Images.distance, tour.distance)),
                          Flexible(flex: 0, child: _buildBadge(context, Images.gps, tour.stopsAmount.toString())),
                          Flexible(flex: 1, child: _buildGradientBadge(context)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(buttonCornersRadius), bottomLeft: Radius.circular(buttonCornersRadius)),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: .3,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: tour.imageUrl.first,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(buttonCornersRadius),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(buttonCornersRadius),
                      onTap: onTap,
                    ))),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(BuildContext context, String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [smallShadow()],
        color: colorWhite,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        child: Container(
          height: bottomRowHeight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              ImageIcon(AssetImage(imagePath), size: 8, color: colorDarkBlue),
              AutoSizeText(
                title,
                minFontSize: minBadgeFontSize,
                maxFontSize: maxFontSize,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: Theme.of(context).textTheme.caption!.apply(color: colorDarkBlue, fontSizeFactor: 0.4),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildGradientBadge(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [smallShadow()],
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        child: Container(
          width: 52,
          height: bottomRowHeight,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: showPrice ? [colorOrangeGradientStart, colorOrangeGradientEnd] : [colorGreenGradientStart, colorGreenGradientEnd]),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: showPrice
                  ? Center(
                      child: AutoSizeText(
                      price,
                      maxLines: 1,
                      maxFontSize: maxFontSize,
                      minFontSize: minFontSize,
                      style: Theme.of(context).textTheme.caption!.apply(color: Colors.white),
                    ))
                  : Icon(Icons.play_arrow, color: Colors.white, size: 8)),
        ),
      ),
    );
  }
}

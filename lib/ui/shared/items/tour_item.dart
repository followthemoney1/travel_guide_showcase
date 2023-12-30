import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/ui/shared/green_badge.dart';
import 'package:mapo_travel_guide/ui/shared/orange_badge.dart';
import 'package:mapo_travel_guide/ui/shared/rounded_badge.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';

class TourItem extends StatelessWidget {
  final Tour tour;
  final Function()? onTap;
  final bool showPrice;
  final String price;

  const TourItem({Key? key, required this.price, required this.tour, required this.onTap, required this.showPrice}) : super(key: key);

  final tourItemRadius = 8.0;
  static const verticalPadding = 11.0;
  static const horizontalPadding = 15.0;
  final horizontalSpace = 5.0;
  final minWidth = 325.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var loc = MLoc.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(tourItemRadius),
        boxShadow: [itemShadowDefault()],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(tourItemRadius),
        child: Container(
          height: tourItemHeight,
          width: width * .845 < minWidth ? minWidth : width * .845,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(tour.imageUrl.first),
              fit: BoxFit.cover,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: darkGradientBottomTop()),
                  ),
                  Positioned(
                    top: 0,
                    right: horizontalPadding,
                    child: _buildBookmark(context, loc.parseAdditionalMarking(tour.additionalMarking)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: verticalPadding,
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTourType(context, tour.type, tour.typeIcon),
                        FractionallySizedBox(
                          widthFactor: .8,
                          child: Text(
                            tour.name,
                            style: Theme.of(context).textTheme.subtitle1!.apply(color: colorWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(tour.guide!.imageUrl),
                              radius: 8.5,
                            ),
                            horizontalSpacer(horizontalSpace),
                            Text(
                              '${tour.guide!.name} ${tour.guide!.surname}',
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: Theme.of(context).textTheme.overline!.apply(color: colorWhite),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoundedBadge(
                              imagePath: Images.duration,
                              title: tour.duration,
                            ),
                            RoundedBadge(
                              imagePath: Images.distance,
                              title: tour.distance,
                            ),
                            RoundedBadge(
                              imagePath: Images.gps,
                              title: tour.stopsAmount.toString(),
                            ),
                            showPrice ? OrangeBadge(title: price) : GreenBadge(),
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
    );
  }

  Widget _buildBookmark(BuildContext context, String title) {
    return ClipPath(
      clipper: BookmarkClipper(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 9,
          vertical: 12,
        ),
        color: colorWhite,
        width: 22,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.caption!.copyWith(height: .9, color: colorDarkBlue, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildTourType(BuildContext context, String type, String typeIcon) {
    return Row(
      children: [
        if (typeIcon != null)
          ColorFiltered(
              colorFilter: ColorFilter.mode(colorWhite, BlendMode.srcIn),
              child: CachedNetworkImage(
                imageUrl: typeIcon,
                height: iconSizeMiddle,
              )),
        horizontalSpacer(horizontalSpace),
        Text(
          type,
          style: Theme.of(context).textTheme.caption!.apply(
                fontWeightDelta: 2,
                letterSpacingFactor: 2,
                color: colorWhite,
              ),
        ),
      ],
    );
  }
}

class BookmarkClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 2, size.height - 8);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BookmarkClipper oldClipper) => false;
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class BadgeButton extends StatelessWidget {
  final Function()? onTap;
  final String quantity;
  final String name;
  final String badgeImage;

  const BadgeButton({
    Key? key,
    this.onTap,
    required this.quantity,
    required this.name,
    required this.badgeImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(paddingSuperPuperSmall),
                  decoration: BoxDecoration(
                    color: colorWhite.withOpacity(.8),
                    borderRadius: BorderRadius.circular(itemCornersRadius),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: badgeImage,
                    height: iconSizeMiddle,
                    width: iconSizeMiddle,
                  ),
                ),
                horizontalSpacer(12.0),
                Expanded(
                  child: Text(
                    name,
                    style: theme.textTheme.subtitle1!.apply(color: colorWhite, fontSizeFactor: .9),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: colorWhite,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    quantity,
                    style: theme.textTheme.subtitle1!.apply(color: colorWhite, fontSizeFactor: 0.7),
                  ),
                ),
              ],
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}

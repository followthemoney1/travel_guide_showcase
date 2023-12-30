import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class BuyTour extends StatelessWidget {
  final String price;
  final Function()? onTap;

  const BuyTour({Key? key, required this.price, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(itemCornersRadius),
        boxShadow: [itemShadowDefault()],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingSmall, vertical: paddingSuperSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(loc.buyTheTour, style: theme.textTheme.caption),
                Text(price, style: theme.textTheme.headline5),
              ],
            ),
            cartButton(),
          ],
        ),
      ),
    );
  }

  Widget cartButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [smallShadow()],
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          height: greenButtonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: orangeGradientLeftRight(),
          ),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(100),
            child: Padding(
              padding: const EdgeInsets.all(paddingSuperSmall),
              child: Image.asset(
                Images.shopingCart,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

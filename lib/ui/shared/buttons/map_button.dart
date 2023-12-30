import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class MapButton extends StatelessWidget {
  final Function()? onCLick;

  const MapButton({Key? key, this.onCLick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [itemShadowDefault()],
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonCornersRadius),
            gradient: orangeGradientLeftRight(),
          ),
          child: InkWell(
            onTap: onCLick,
            borderRadius: BorderRadius.circular(buttonCornersRadius),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: paddingSuperSmall),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.locationOn,
                    height: iconSize,
                  ),
                  Text(
                    loc.routeOnTheMap,
                    style: theme.textTheme.subtitle2!.apply(color: colorWhite),
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

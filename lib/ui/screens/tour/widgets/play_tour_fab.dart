import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class PlayTourFab extends StatelessWidget {
  final String time;
  final isTourActivated;
  final Function()? onPlayTap;
  final Function()? onDownloadTap;
  final bool isAnimationPaused;

  const PlayTourFab({
    Key? key,
    required this.time,
    this.onPlayTap,
    this.onDownloadTap,
    required this.isAnimationPaused,
    this.isTourActivated,
  }) : super(key: key);

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
        padding: const EdgeInsets.symmetric(
          horizontal: paddingSmall,
          vertical: paddingSuperSmall,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  isTourActivated ? loc.startTheTour : loc.activateTheTour,
                  style: theme.textTheme.caption,
                ),
                Row(
                  children: [
                    Image.asset(Images.alarm, height: iconSizeSmall),
                    horizontalSpacer(spaceSuperSmall),
                    Text(time, style: theme.textTheme.headline5),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                downloadButton(),
                horizontalSpacer(spaceSuperSmall),
                playButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget downloadButton() {
    return Container(
      height: greenButtonHeight,
      width: greenButtonHeight,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onDownloadTap,
          borderRadius: BorderRadius.circular(100),
          child: isAnimationPaused
              ? Padding(
                  padding: const EdgeInsets.all(paddingSuperSmall),
                  child: Image.asset(
                    Images.download,
                    fit: BoxFit.contain,
                  ),
                )
              : FlareActor('assets/anim/Loading_arrow.flr', animation: 'arrow', fit: BoxFit.contain),
        ),
      ),
    );
  }

  Widget playButton() {
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
          width: greenButtonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: greenGradientLeftRight(),
          ),
          child: InkWell(
            onTap: onPlayTap,
            borderRadius: BorderRadius.circular(100),
            child: Padding(
              padding: const EdgeInsets.all(paddingSuperSmall),
              child: Image.asset(
                Images.playButton,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

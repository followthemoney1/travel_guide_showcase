import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class RoundedBadge extends StatelessWidget {
  final String imagePath;
  final String title;
  const RoundedBadge({Key? key, required this.imagePath, required this.title}) : super(key: key);

  final horizontalSpace = 5.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorWhite.withOpacity(.8),
          borderRadius: BorderRadius.circular(15)),
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: iconSizeSmall,
            color: colorDarkBlue,
          ),
          horizontalSpacer(horizontalSpace),
          AutoSizeText(
            title,
            minFontSize: minFontSize,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.caption!.apply(
                  color: colorDarkBlue,
                ),
          )
        ],
      ),
    );
  }
}

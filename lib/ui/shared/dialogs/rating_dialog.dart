import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final String content;
  final Function(double rate) onRate;

  const RatingDialog({Key? key, required this.title, required this.content, required this.onRate}) : super(key: key);

  @override
  _RatingDialogState createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  double rate = 0.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var loc = MLoc.of(context);
    var theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(itemCornersRadius),
      ),
      backgroundColor: colorWhite,
      elevation: 0.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: paddingSmall, left: paddingSmall),
            child: Text(
              widget.title,
              style: theme.textTheme.subtitle1,
            ),
          ),
          Divider(color: colorNavyBlue),
          verticalSpacer(spaceSuperSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: Text(
              widget.content,
              style: theme.textTheme.bodyText2,
            ),
          ),
          verticalSpacer(spaceSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: Row(
              children: [
                SmoothStarRating(
                  color: colorYellow,
                  rating: rate,
                  borderColor: colorYellow,
                  size: size.height * .035,
                  spacing: -3,
                  onRatingChanged: (rating) {
                    setState(() {
                      rate = rating;
                    });
                  },
                ),
                horizontalSpacer(8),
                Text(
                  rate.toString(),
                  style: theme.textTheme.bodyText1,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BorderlessButton(onPressed: () => context.router.pop(), title: loc.cancel),
              BorderlessButton(
                  onPressed: () {
                    widget.onRate(rate);
                    context.router.pop();
                  },
                  title: loc.rate),
            ],
          ),
        ],
      ),
    );
  }
}

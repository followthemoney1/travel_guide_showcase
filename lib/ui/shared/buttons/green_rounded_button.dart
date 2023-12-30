import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class GreenRoundedButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;

  const GreenRoundedButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final height = 40.0;
  final arrowHeight = 15.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(height / 2),
            boxShadow: [
              defaultShadow()
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Ink(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [colorGreenGradientStart, colorGreenGradientEnd]),
                borderRadius: BorderRadius.circular(height / 2),
              ),
              child: InkWell(
                onTap: onPressed,
                borderRadius: BorderRadius.circular(height / 2),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        horizontalSpacer(8),
                        Image.asset(
                          Images.arrow_right,
                          height: arrowHeight,
                          color: colorWhite,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

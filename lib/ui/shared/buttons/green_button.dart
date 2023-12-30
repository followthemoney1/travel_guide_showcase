import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class GreenButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final bool noUpperCase;
  final bool boldText;
  final double btnHeight;

  const GreenButton({
    Key? key,
    required this.onPressed,
    required this.title, this.noUpperCase = false, this.boldText = false, this.btnHeight = buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [
          defaultShadow()
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          height: btnHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [colorGreenGradientStart, colorGreenGradientEnd]),
            borderRadius: BorderRadius.circular(buttonCornersRadius),
          ),
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(buttonCornersRadius),
            child: Center(
              child: Text(
                noUpperCase? title : title.toUpperCase(),
                style: boldText? Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.bold) : Theme.of(context).textTheme.button,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

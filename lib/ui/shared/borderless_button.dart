import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

import 'gradient_text.dart';

class BorderlessButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final bool noUpperCase;
  final bool boldText;
  final Alignment titleAlignment;
  final double height;

  const BorderlessButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.noUpperCase = false,
      this.boldText = false,
      this.titleAlignment = Alignment.center,
      this.height = buttonHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        height: height,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          child: Align(
            alignment: titleAlignment,
            child: GradientText(
              noUpperCase ? title : title.toUpperCase(),
              gradient: LinearGradient(colors: [colorGreenGradientStart, colorGreenGradientEnd]),
              style: boldText ? Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.bold) : Theme.of(context).textTheme.button!,
            ),
          ),
        ),
      ),
    );
  }
}

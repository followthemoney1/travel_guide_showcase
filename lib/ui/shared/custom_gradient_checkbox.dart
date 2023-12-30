import 'package:flutter/material.dart';

import '../theme.dart';

class CustomGradientCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;
  final double size;
  CustomGradientCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.size = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedCrossFade(
        firstChild: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              border: Border.all(
                color: colorGrey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(2)),
        ),
        secondChild: Container(
          alignment: Alignment.center,
          width: size,
          height: size,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [colorGreenGradientStart, colorGreenGradientEnd]),
              borderRadius: BorderRadius.circular(2)),
          child: Icon(
            Icons.check,
            color: colorWhite,
            size: 18,
          ),
        ),
        crossFadeState:
            !value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(
          milliseconds: 100,
        ),
      ),
    );
  }
}

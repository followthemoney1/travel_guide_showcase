import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class GreenBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorGreenGradientStart, colorGreenGradientEnd],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(14)),
        height: 30,
      padding: const EdgeInsets.symmetric(horizontal: paddingSuperSmall),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
        child: Center(
          child: Icon(Icons.play_arrow, color: Colors.white, size: iconSizeSmall),
        ),
      ),
    );
  }
}

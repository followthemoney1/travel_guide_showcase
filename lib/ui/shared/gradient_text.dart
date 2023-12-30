import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    required this.gradient,
    required this.style,
  });

  final String text;
  final Gradient gradient;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: AutoSizeText(
        text,
        maxFontSize: maxFontSize,
        minFontSize: minFontSize,
        maxLines: 1,
        style: style.apply(color: Colors.white),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class OrangeBadge extends StatelessWidget {
  final String? title;
  const OrangeBadge({Key? key, this.title}) : super(key: key);

  final horizontalSpace = 5.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [colorOrangeGradientStart, colorOrangeGradientEnd],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(14)),
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: paddingSuperSmall),
      child: Center(
        child: AutoSizeText(
          title ?? '',
          style: Theme.of(context).textTheme.button!.copyWith(fontSize: 15),
          minFontSize: 8,
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class UnderlinedText extends StatelessWidget {
  final String text;
  final Function() onClick;

  const UnderlinedText({Key? key, required this.text, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          onTap: onClick,
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: const EdgeInsets.all(paddingSmall),
            child: AutoSizeText(
              text,
              minFontSize: minFontSize,
              maxFontSize: maxFontSize,
              maxLines: 1,
              style: theme.textTheme.bodyText2!.copyWith(
                color: colorDarkBlue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

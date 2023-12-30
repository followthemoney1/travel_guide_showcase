import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/small_text_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class HeaderRow extends StatelessWidget {
  final Function()? onPressed;
  final String headerText;

  const HeaderRow({Key? key, this.onPressed, required this.headerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var loc = MLoc.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: AutoSizeText(
          headerText,
          minFontSize: minFontSize,
          maxFontSize: maxFontSize,
          style: theme.textTheme.headline6,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        )),
        onPressed != null
            ? Padding(
                padding: const EdgeInsets.only(right: paddingSmall),
                child: SmallTextButton(
                  title: loc.all,
                  onPressed: onPressed,
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class TextDialog extends StatelessWidget {
  final Widget? icon;
  final String title;
  final String content;
  final String btnOkText;
  final bool withCancel;
  final Function()? onOk;

  const TextDialog({Key? key, required this.title, required this.content, this.onOk, required this.btnOkText, this.withCancel = true, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(left: paddingSmall),
                  child: icon,
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: paddingSmall,
                    left: paddingSmall,
                    right: paddingSmall,
                  ),
                  child: AutoSizeText(
                    title,
                    maxLines: 2,
                    maxFontSize: maxFontSize,
                    minFontSize: minFontSize,
                    style: theme.textTheme.subtitle1,
                  ),
                ),
              ),
            ],
          ),
          Divider(color: colorNavyBlue),
          verticalSpacer(spaceSuperSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: Text(
              content,
              style: theme.textTheme.bodyText2,
            ),
          ),
          verticalSpacer(spaceSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (withCancel) BorderlessButton(onPressed: () => context.router.pop(), title: loc.cancel),
              BorderlessButton(
                  onPressed: () {
                    onOk?.call();
                    context.router.pop();
                  },
                  title: btnOkText),
            ],
          ),
        ],
      ),
    );
  }
}

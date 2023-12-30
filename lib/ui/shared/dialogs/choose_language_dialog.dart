import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class ChooseLanguageDialog extends StatefulWidget {
  final List<String> languages;
  final Function(String) onContinue;

  ChooseLanguageDialog({Key? key, required this.onContinue, required this.languages}) : super(key: key);

  @override
  _ChooseLanguageDialogState createState() => _ChooseLanguageDialogState();
}

class _ChooseLanguageDialogState extends State<ChooseLanguageDialog> {
  String _groupValue = '';

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
          Padding(
            padding: const EdgeInsets.only(top: paddingSmall, left: paddingSmall),
            child: Text(
              loc.chooseLanguageDialogTitle,
              style: theme.textTheme.subtitle1,
            ),
          ),
          Divider(color: colorNavyBlue),
          verticalSpacer(spaceSuperSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: Text(
              loc.chooseLanguageDialogText,
              style: theme.textTheme.bodyText2,
            ),
          ),
          verticalSpacer(spaceSmall),
          ...widget.languages.map(
            (language) => languageRow(
              language,
              FullLang.getFullName(language, nativeName: true),
              theme,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BorderlessButton(
                  onPressed: () {
                    widget.onContinue(_groupValue);
                    context.router.pop();
                  },
                  title: loc.mContinue),
            ],
          ),
        ],
      ),
    );
  }

  Widget languageRow(String langCode, String language, ThemeData theme) {
    return Row(
      children: [
        Radio(
          value: langCode,
          groupValue: _groupValue,
          onChanged: (String? value) {
            setState(() {
              _groupValue = value!;
            });
          },
        ),
        horizontalSpacer(spaceSmall),
        Text(
          language,
          style: theme.textTheme.bodyText2,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

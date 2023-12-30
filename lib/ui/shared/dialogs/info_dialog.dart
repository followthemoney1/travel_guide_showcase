import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../custom_gradient_checkbox.dart';

class InfoDialog extends StatefulWidget {
  final String title;
  final String content;
  final String btnOkText;
  final String id;
  final Function() onOk;

  const InfoDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.btnOkText,
    required this.id,
    required this.onOk,
  }) : super(key: key);

  @override
  _InfoDialogState createState() => _InfoDialogState();
}

class _InfoDialogState extends State<InfoDialog> {
  bool _isSelected = false;
  final FilterCubit cubit = locator<FilterCubit>();

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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: paddingSmall,
                    left: paddingSmall,
                    right: paddingSmall,
                  ),
                  child: AutoSizeText(
                    widget.title,
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
          verticalSpacer(paddingSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
            child: Text(
              widget.content,
              style: theme.textTheme.bodyText2,
            ),
          ),
          verticalSpacer(spaceSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(buttonCornersRadius),
                onTap: () {
                  setState(() {
                    _isSelected = !_isSelected;
                  });
                  cubit.toggleInfoPopupForCity(widget.id, !_isSelected);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: paddingSuperSmall,
                    bottom: paddingSuperSmall,
                    right: paddingSuperSmall,
                  ),
                  child: Row(
                    children: [
                      horizontalSpacer(paddingSmall),
                      CustomGradientCheckbox(
                        value: _isSelected,
                        onChanged: (value) {
                          setState(() {
                            _isSelected = value;
                          });
                          cubit.toggleInfoPopupForCity(widget.id, !value);
                        },
                      ),
                      horizontalSpacer(paddingSuperPuperSmall),
                      AutoSizeText(
                        loc.neverShowAgain,
                        maxLines: 2,
                        maxFontSize: maxFontSize,
                        minFontSize: minFontSize,
                        style: theme.textTheme.bodyText2!.apply(fontSizeFactor: .8),
                      ),
                    ],
                  ),
                ),
              ),
              BorderlessButton(
                onPressed: widget.onOk,
                title: widget.btnOkText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

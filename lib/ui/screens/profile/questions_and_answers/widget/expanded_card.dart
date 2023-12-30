import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../../theme.dart';

class ExpandableCard extends StatefulWidget {
  final String title;
  final String expandedTitle;

  ExpandableCard({Key? key, required this.title, required this.expandedTitle}) : super(key: key);

  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> with SingleTickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(paddingDefault, paddingSuperSmall, paddingDefault, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          boxShadow: [smallShadow()],
        ),
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(buttonCornersRadius),
            ),
            child: InkWell(
              onTap: onCardTapped,
              borderRadius: BorderRadius.circular(buttonCornersRadius),
              child: AnimatedSize(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 300),
                vsync: this,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: paddingSuperPuperSmall,
                                top: paddingSuperPuperSmall,
                                bottom: paddingSuperPuperSmall,
                              ),
                              child: Text(widget.title, style: theme.textTheme.subtitle2),
                            ),
                          ),
                          ExpandIcon(isExpanded: isExpanded, onPressed: null)
                        ],
                      ),
                      isExpanded
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: paddingSuperPuperSmall),
                                  child: Divider(color: colorDarkBlue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(widget.expandedTitle, style: theme.textTheme.bodyText2),
                                ),
                              ],
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onCardTapped() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}

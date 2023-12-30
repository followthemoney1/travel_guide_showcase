import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class SmallTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;

  const SmallTextButton({Key? key, this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(100),
        child: Padding(
          padding: const EdgeInsets.all(paddingSmall),
          child: Text(
            title,
            style: theme.textTheme.bodyText2,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EmptyListPlaceholder extends StatelessWidget {
  final String placeholderText;

  const EmptyListPlaceholder({Key? key, required this.placeholderText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        placeholderText,
        style: theme.textTheme.bodyText1,
      ),
    );
  }
}

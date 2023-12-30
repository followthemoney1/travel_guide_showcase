import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../../theme.dart';

class ProfileButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String? leadingAsset;
  final Color? color;
  final horizontalSpace = 10.0;

  ProfileButton({required this.onTap, required this.text, this.leadingAsset, this.color});

  @override
  Widget build(BuildContext context) {
    Widget leading = SizedBox.shrink();
    var title = Text(text, style: Theme.of(context).textTheme.bodyText2!.apply(fontSizeDelta: 4, color: color ?? colorDarkBlue));
    if (leadingAsset != null) {
      leading = ImageIcon(AssetImage(leadingAsset!), color: color ?? colorNavyBlue);
      var style = title.style!.apply(fontSizeDelta: -4);
      title = Text(text, style: style);
    }
    return ListTile(onTap: onTap, title: Row(children: [leading, leadingAsset != null ? horizontalSpacer(horizontalSpace) : SizedBox.shrink(), title]), dense: true);
  }
}

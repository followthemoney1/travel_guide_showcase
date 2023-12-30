import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double? toolbarHeight;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;

  const DefaultAppBar({
    Key? key,
    this.title,
    this.toolbarHeight,
    this.bottom,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parentRoute = ModalRoute.of(context);
    var theme = Theme.of(context);

    var titleWidget = AutoSizeText(title ?? '',
        maxFontSize: maxFontSize,
        minFontSize: minToolbarFontSize,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.headline5!.apply(
          color: colorWhite,
          fontSizeFactor: 0.9,
        ));

    return AppBar(
        actions: actions,
        leading: leading,
        leadingWidth: parentRoute!.canPop ? 94 : 0,
        automaticallyImplyLeading: automaticallyImplyLeading,
        title: parentRoute.canPop ? Transform.translate(offset: Offset(-40, 0), child: titleWidget) : titleWidget,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorGreenGradientStart,
                colorGreenGradientEnd,
              ],
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

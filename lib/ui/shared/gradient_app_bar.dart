import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class GradientAppBar extends StatelessWidget with PreferredSizeWidget {
  const GradientAppBar({
    Key? key,
    this.toolbarHeight,
    this.bottom,
    required this.title,
    this.trailing,
    this.onBackArrow,
    this.leading,
  }) : super(key: key);
  final double? toolbarHeight;
  final PreferredSizeWidget? bottom;
  final void Function()? onBackArrow;
  final String? title;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final hasBackArrow = onBackArrow != null && leading == null;
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [colorGreenGradientStart, colorGreenGradientEnd])),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(hasBackArrow ? 22 : paddingDefault, 4, 25, 4),
          child: Row(
            children: [
              if (hasBackArrow)
                Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      splashRadius: 25,
                      color: colorWhite,
                      onPressed: () => onBackArrow == null ? onBackArrow!() : context.router.pop(),
                    )),
              if (leading != null)
                Material(
                  color: Colors.transparent,
                  child: leading,
                ),
              Expanded(
                child: AutoSizeText(
                  title ?? '',
                  maxFontSize: maxFontSize,
                  minFontSize: minToolbarFontSize,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6!.apply(color: colorWhite),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: trailing,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

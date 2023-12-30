import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class SocialButton extends StatelessWidget {
  final String name;
  final String image;
  final Function()? onClick;
  final TextStyle? style;

  const SocialButton({Key? key, required this.name, required this.image, required this.onClick, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [defaultShadow()],
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          height: buttonHeight,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(buttonCornersRadius),
          ),
          child: InkWell(
            onTap: onClick,
            borderRadius: BorderRadius.circular(buttonCornersRadius),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  height: 24,
                ),
                SizedBox(width: 15),
                Text(
                  name,
                  style: style ?? theme.textTheme.subtitle2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

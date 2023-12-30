import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class GreenSquareButton extends StatelessWidget {
  final Function()? onPressed;
  final double btnHeight;
  final bool disabled;

  const GreenSquareButton({
    Key? key,
    required this.onPressed,
    this.btnHeight = buttonHeight,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColorGrey = colorGrey.withOpacity(.4);

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(buttonCornersRadiusSmall),
        boxShadow: !disabled ? [defaultShadow()] : [],
      ),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          // height: btnHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: !disabled ? [colorGreenGradientStart, colorGreenGradientEnd] : [backgroundColorGrey, backgroundColorGrey],
            ),
            borderRadius: BorderRadius.circular(buttonCornersRadiusSmall),
          ),
          child: InkWell(
            onTap: disabled ? null : onPressed,
            borderRadius: BorderRadius.circular(buttonCornersRadiusSmall),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(paddingSuperSmall),
                child: Icon(
                  Icons.done,
                  color: !disabled ? colorWhite : colorDarkBlue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

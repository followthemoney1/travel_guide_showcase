import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

Widget verticalSpacer(double size) {
  return SizedBox(height: size);
}

Widget horizontalSpacer(double size) {
  return SizedBox(width: size);
}

LinearGradient darkGradientBottomTop() => LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [Colors.black.withOpacity(.7), Colors.transparent],
    );

LinearGradient orangeGradientLeftRight() => LinearGradient(
      colors: [colorOrangeGradientStart, colorOrangeGradientEnd],
    );

LinearGradient greenGradientLeftRight() => LinearGradient(
      colors: [colorGreenGradientStart, colorGreenGradientEnd],
    );

BoxShadow defaultShadow() => BoxShadow(
      color: shadowColor1.withOpacity(0.15),
      blurRadius: 10,
      offset: Offset(0, .4),
    );

BoxShadow itemShadowDefault() => BoxShadow(
      color: shadowColor2.withOpacity(0.15),
      blurRadius: 10,
      offset: Offset(0, 4),
    );

BoxShadow smallShadow() => BoxShadow(
      color: shadowColor1.withOpacity(0.09),
      blurRadius: 5,
      offset: Offset(1, 2),
    );

///Don't forget to call .show(context) when using this method
Flushbar composeRedMessage(String message) => Flushbar(
      message: message,
      backgroundColor: colorRed,
      margin: EdgeInsets.all(16),
      icon: Icon(
        Icons.warning_amber_rounded,
        color: colorWhite,
      ),
      boxShadows: [defaultShadow()],
      borderRadius: BorderRadius.circular(8),
      duration: Duration(seconds: 5),
    );

///Don't forget to call .show(context) when using this method
Flushbar composeGreenMessage(String message) => Flushbar(
      message: message,
      backgroundGradient: LinearGradient(colors: [colorGreenGradientStart, colorGreenGradientEnd]),
      margin: EdgeInsets.all(16),
      boxShadows: [defaultShadow()],
      borderRadius: BorderRadius.circular(8),
      duration: Duration(seconds: 3),
    );

Widget gradientMask(Widget child) => ShaderMask(
      shaderCallback: (Rect bounds) => LinearGradient(colors: [colorGreenGradientStart, colorGreenGradientEnd]).createShader(bounds),
      child: child,
    );

import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class MapoIconButton extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  final double padding;
  final double size;
  final Color? color;

  const MapoIconButton({Key? key, this.onTap, required this.imagePath, this.padding = iconPadding, this.size = iconSize, this.color = colorDarkBlue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Image.asset(imagePath, width: size, color: color),
        ),
      ),
    );
  }
}

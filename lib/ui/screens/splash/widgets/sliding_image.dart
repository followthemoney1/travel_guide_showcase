import 'dart:math';

import 'package:flutter/material.dart';

class SlidingImage extends StatefulWidget {
  final String imagePath;
  final double width, height;
  final SlidingDirection direction;
  final double? top, bottom, left, right;
  final double topAfter, bottomAfter, leftAfter, rightAfter;
  final double topBefore, bottomBefore, leftBefore, rightBefore;

  SlidingImage(this.imagePath,
      {Key? key,
      required this.width,
      required this.height,
      required this.direction,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.topAfter = 0,
      this.bottomAfter = 0,
      this.leftAfter = 0,
      this.rightAfter = 0,
      this.topBefore = 0,
      this.bottomBefore = 0,
      this.leftBefore = 0,
      this.rightBefore = 0})
      : super(key: key);

  @override
  _SlidingImageState createState() => _SlidingImageState();
}

class _SlidingImageState extends State<SlidingImage> {
  double? top, bottom, left, right;

  @override
  void initState() {
    top = widget.top;
    bottom = widget.bottom;
    left = widget.left;
    right = widget.right;
    _initPosition(widget.direction, widget.width, widget.height);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _startSliding(widget.direction, widget.width, widget.height);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      curve: Curves.linearToEaseOut,
      child: Image.asset(
        widget.imagePath,
        width: widget.width,
        height: widget.height,
        fit: BoxFit.fill,
      ),
      duration: Duration(
        seconds: 1,
        milliseconds: (Random().nextDouble() * 4000).toInt(),
      ),
    );
  }

  void _startSliding(SlidingDirection direction, double width, double height) {
    setState(() {
      switch (direction) {
        case SlidingDirection.top:
          top = 0 + widget.topAfter;
          break;
        case SlidingDirection.right:
          right = 0 + widget.rightAfter;
          break;
        case SlidingDirection.bottom:
          bottom = 0 + widget.bottomAfter;
          break;
        case SlidingDirection.left:
          left = 0 + widget.leftAfter;
      }
    });
  }

  void _initPosition(SlidingDirection direction, double width, double height) {
    switch (direction) {
      case SlidingDirection.top:
        top = -height - widget.topBefore;
        break;
      case SlidingDirection.right:
        right = -width - widget.rightBefore;
        break;
      case SlidingDirection.bottom:
        bottom = -height - widget.bottomBefore;
        break;
      case SlidingDirection.left:
        left = -width - widget.leftBefore;
    }
  }
}

enum SlidingDirection {
  top,
  right,
  bottom,
  left,
}

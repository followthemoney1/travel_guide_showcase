import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class AnimatedTabDots extends StatefulWidget {
  final TabController tabController;

  AnimatedTabDots({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  _AnimatedTabDotsState createState() => _AnimatedTabDotsState();
}

class _AnimatedTabDotsState extends State<AnimatedTabDots> {
  final duration = Duration(milliseconds: 300);
  final selectedDotWidth = 20.0;
  final dotWidth = 10.0;
  late List<double> dotsWidth;
  late double containerWidth;

  void changeTabsWidth() {
    setState(() {
      dotsWidth[widget.tabController.previousIndex] = 10;
      dotsWidth[widget.tabController.index] = 20;
    });
  }

  @override
  void initState() {
    widget.tabController.addListener(changeTabsWidth);
    dotsWidth = [selectedDotWidth] +
        List.filled(widget.tabController.length - 1, dotWidth);
    containerWidth = 20 + (widget.tabController.length - 1) * 30.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: dotsWidth.map<Widget>((e) => _buildDot(e)).toList(),
      ),
    );
  }

  Widget _buildDot(double width) {
    return AnimatedContainer(
      duration: duration,
      decoration: BoxDecoration(
        color: width < 20 ? colorGrey : colorGreenGradientEnd,
        borderRadius: BorderRadius.circular(5),
      ),
      width: width,
      height: 10,
    );
  }

  @override
  void dispose() {
    widget.tabController.removeListener(changeTabsWidth);
    super.dispose();
  }
}

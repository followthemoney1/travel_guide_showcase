import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class ExpansionText extends StatefulWidget {
  ExpansionText(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  _ExpansionTextState createState() => _ExpansionTextState();
}

class _ExpansionTextState extends State<ExpansionText> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  final minLengthOfTheText = 210;

  late ExpandableController _expansionController;
  late AnimationController _controller;
  late Animation<double> _iconTurns;

  @override
  void initState() {
    final _easeInTween = CurveTween(curve: Curves.easeIn);
    _expansionController = ExpandableController();
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _iconTurns = _controller.drive(Tween<double>(begin: 0.0, end: 0.5).chain(_easeInTween));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _expansionController.dispose();
    super.dispose();
  }

  void _handleTap() async {
    _expansionController.toggle();
    _isExpanded = !_isExpanded;
    if (_isExpanded) {
      await _controller.forward();
    } else {
      await _controller.reverse();
      if (!mounted) return;
    }
    setState(() {});
  }

  Widget _buildChildren(BuildContext context) {
    return RotationTransition(
      turns: _iconTurns,
      child: MapoIconButton(
        imagePath: Images.arrow_down,
        size: iconSizeSmall,
        onTap: _handleTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var text = Text(
      widget.text,
      textAlign: TextAlign.justify,
      style: theme.textTheme.bodyText2,
      softWrap: true,
    );

    return widget.text.length < minLengthOfTheText
        ? text
        : Column(
            children: [
              ExpandablePanel(
                collapsed: Text(
                  widget.text,
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  maxLines: 6,
                  style: theme.textTheme.bodyText2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: text,
                controller: _expansionController,
              ),
              // if (_isExpanded) verticalSpacer(spaceSmall),
              AnimatedBuilder(
                animation: _controller.view,
                builder: (context, _) => _buildChildren(context),
              ),
            ],
          );
  }
}

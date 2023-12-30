import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class BottomBar extends StatefulWidget {
  final void Function(int) onChangeIndex;
  final bool userNotEmpty;

  const BottomBar({Key? key, required this.onChangeIndex, required this.userNotEmpty}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 0;
  late List<String> _itemsIcons;
  late List<String> _itemsLabels;
  late List<bool> _itemsActive;

  @override
  void initState() {
    _itemsActive = [true, false, false, false];
    _itemsIcons = <String>[Images.home, Images.vector, Images.myOrders, Images.avatar];
    if (!widget.userNotEmpty) {
      _itemsIcons.remove(Images.myOrders);
      _itemsActive.removeAt(2);
    }
    super.initState();
  }

  void _initItemsLabels(MLoc loc) {
    _itemsLabels = <String>[
      loc.mainLabel,
      loc.catalog,
      loc.myOrders,
      loc.profile,
    ];
    if (!widget.userNotEmpty) {
      _itemsLabels.remove(loc.myOrders);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    _initItemsLabels(loc);

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: colorNud),
        height: 66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            widget.userNotEmpty ? 4 : 3,
            (index) => Expanded(
              child: _BottomBarItem(
                label: _itemsLabels[index],
                imagePath: _itemsIcons[index],
                active: _itemsActive[index],
                onPressed: () {
                        setState(() {
                          _itemsActive[_currentIndex] = false;
                          _currentIndex = index;
                          _itemsActive[index] = true;
                        });
                        widget.onChangeIndex(index);
                      }
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool active;
  final void Function() onPressed;

  const _BottomBarItem({
    Key? key,
    required this.label,
    required this.imagePath,
    this.active = false,
    required this.onPressed,
  }) : super(key: key);

  Widget _activeIcon(BuildContext context) => ShaderMask(
        shaderCallback: (Rect bounds) => LinearGradient(colors: [colorGreenGradientStart, colorGreenGradientEnd]).createShader(bounds),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(imagePath),
              color: colorWhite,
            ),
            AutoSizeText(
              label,
              minFontSize: minFontSize,
              maxFontSize: maxFontSize,
              maxLines: 1,
              style: Theme.of(context).textTheme.overline!.apply(
                    color: colorWhite,
                  ),
            ),
          ],
        ),
      );

  Widget _notActiveIcon(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            AssetImage(imagePath),
            color: colorGrey,
          ),
          AutoSizeText(
            label,
            minFontSize: minFontSize,
            maxFontSize: maxFontSize,
            maxLines: 1,
            style: Theme.of(context).textTheme.overline,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: active ? _activeIcon(context) : _notActiveIcon(context),
      ),
    );
  }
}

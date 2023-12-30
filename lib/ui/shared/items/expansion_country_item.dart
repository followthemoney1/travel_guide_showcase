import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/country/country.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../theme.dart';
import 'city_item.dart';

class ExpansionCountryItem extends StatefulWidget {
  final Country country;
  final Function(bool) onGoToAnotherScreen;

  ExpansionCountryItem({Key? key, required this.country, required this.onGoToAnotherScreen}) : super(key: key);

  @override
  _ExpansionCountryItemState createState() => _ExpansionCountryItemState();
}

class _ExpansionCountryItemState extends State<ExpansionCountryItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    final _easeInTween = CurveTween(curve: Curves.easeIn);
    _controller = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(Tween<double>(begin: 0.0, end: 0.5).chain(_easeInTween));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {});
        });
      }
    });
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    var loc = MLoc.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 14.0, bottom: _isExpanded ? 14 : 0),
          decoration: BoxDecoration(color: colorWhite, boxShadow: [defaultShadow()], borderRadius: BorderRadius.circular(buttonCornersRadius)),
          child: ListTile(
            onTap: _handleTap,
            leading: CachedNetworkImage(
              imageUrl: widget.country.flagUrl,
              width: 25,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: AutoSizeText(
                    widget.country.name,
                    maxFontSize: maxFontSize,
                    minFontSize: minFontSize,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.subtitle2!.apply(color: colorDarkBlue),
                  ),
                ),
                Flexible(
                  flex: 0,
                  child: AutoSizeText(
                    '${loc.cities} ${widget.country.cityList.length}',
                    maxFontSize: maxFontSize,
                    minFontSize: minFontSize,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.overline!.apply(color: colorNavyBlue),
                  ),
                ),
              ],
            ),
            trailing: RotationTransition(
              turns: _iconTurns,
              child: const Icon(Icons.expand_more),
            ),
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.center,
            heightFactor: _heightFactor.value,
            child: child,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final closed = !_isExpanded && _controller.isDismissed;

    final Widget result = Offstage(
        child: TickerMode(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.country.cityList
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: CityItem(
                        city: e,
                        onTap: () async {
                          widget.onGoToAnotherScreen(true);
                          await context.router.push(CatalogCityScreen(cityId: e.id!));
                          widget.onGoToAnotherScreen(false);
                        },
                      ),
                    ))
                .toList(),
          ),
          enabled: !closed,
        ),
        offstage: closed);

    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: closed ? null : result,
    );
  }
}

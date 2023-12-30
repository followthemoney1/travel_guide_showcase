import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class MapoErrorWidget extends StatelessWidget {
  final ErrorResponse message;
  final bool withBackButton;

  const MapoErrorWidget({Key? key, required this.message, this.withBackButton = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.warning,
            color: colorRed,
            size: 50,
          ),
          Text(
            message.localizedMessage(context),
            style: Theme.of(context).textTheme.headline5,
          ),
          verticalSpacer(spaceDefaultDoubled),
          if (withBackButton)
            MapoIconButton(
              imagePath: Images.arrow_back,
              onTap: () => context.router.pop(),
            ),
        ],
      ),
    );
  }
}

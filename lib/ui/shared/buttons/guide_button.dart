import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class GuideButton extends StatelessWidget {
  final Function() onTap;
  final String guideImage;
  final String guideName;
  final String guideSurname;

  const GuideButton({
    Key? key,
    required this.onTap,
    required this.guideImage,
    required this.guideName,
    required this.guideSurname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault, vertical: paddingSmall),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(guideImage),
                radius: 8.5,
              ),
              horizontalSpacer(horizontalSpace),
              Text(
                '${guideName} ${guideSurname}',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

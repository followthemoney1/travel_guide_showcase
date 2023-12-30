import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class Achievement extends StatelessWidget {
  final String image;
  final String text;
  final Function()? onTap;

  const Achievement({Key? key, required this.image, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var badgeSize = size.height * .13;
    return Padding(
      padding: const EdgeInsets.only(left: paddingSmall),
      child: Container(
        height: badgeSize,
        width: badgeSize,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              Images.achievementBack,
              fit: BoxFit.scaleDown,
            ),
            Material(
              color: Colors.transparent,
              child: Ink(
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                          imageUrl: image,
                          fit: BoxFit.scaleDown,
                          height: size.height * .09,
                        ),
                        AutoSizeText(
                          text,
                          style: theme.textTheme.caption,
                          minFontSize: minFontSize,
                          maxFontSize: maxFontSize,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/screens/tour_map/cubit/tour_map_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

import '../../../theme.dart';

class TextVersionTour extends StatelessWidget {
  final TourMapCubit cubit;
  final BuildContext parentContext;

  TextVersionTour({Key? key, required this.cubit, required this.parentContext}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var _sightMapItem = cubit.currentSight;
    var size = MediaQuery.of(context).size;
    final loc = MLoc.of(context);
    return Scaffold(
      appBar: _buildAppBar(loc, context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        controller: ModalScrollController.of(parentContext),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: size.height * .36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(itemCornersRadius),
                      bottomLeft: Radius.circular(itemCornersRadius),
                    ),
                    boxShadow: [itemShadowDefault()],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(itemCornersRadius),
                      bottomLeft: Radius.circular(itemCornersRadius),
                    ),
                    child: PageView(
                      children: _sightMapItem!.imageUrl.isNotEmpty
                          ? _sightMapItem.imageUrl
                              .map((url) => CachedNetworkImage(
                                    height: 100,
                                    placeholder: (context, url) => EndlessProgress(),
                                    imageUrl: url,
                                    fit: BoxFit.cover,
                                  ))
                              .toList()
                          : [Container()],
                      controller: _controller,
                    ),
                  ),
                ),
                verticalSpacer(spaceSmall),
                ScrollingPageIndicator(
                  dotColor: colorGrey,
                  dotSelectedColor: colorGreenGradientEnd,
                  dotSize: 8,
                  dotSelectedSize: 10,
                  dotSpacing: 18,
                  controller: _controller,
                  itemCount: _sightMapItem.imageUrl.length,
                  orientation: Axis.horizontal,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Text(
                '${loc.place} ${cubit.currentSightNumberLabel}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            verticalSpacer(paddingSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Text(
                _sightMapItem.name,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            verticalSpacer(paddingSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Text(
                _sightMapItem.textVersion,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(MLoc loc, BuildContext context) {
    return GradientAppBar(
      title: loc.textVersion,
      leading: IconButton(
        icon: Icon(Icons.clear),
        splashRadius: 25,
        color: colorWhite,
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}

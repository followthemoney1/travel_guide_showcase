import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/sight_route_item.dart';
import 'package:mapo_travel_guide/ui/screens/tour_map/cubit/tour_map_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/default_audio_player.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:mapo_travel_guide/util/utils.dart';

class AudioTourItem extends StatelessWidget {
  final TourMapCubit tourMapCubit;
  final void Function(SightRouteItem) onChangeSight;

  AudioTourItem({Key? key, required this.onChangeSight, required this.tourMapCubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    return Container(
        color: colorWhite,
        height: 160,
        child: Column(
          children: [
            _buildHeader(context, loc),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                  child: _buildAudioCard(context, loc),
                ),
                tourMapCubit.currentSightIndex > 0
                    ? Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(buttonCornersRadius),
                              onTap: () {
                                tourMapCubit.prevItem();
                                onChangeSight(tourMapCubit.currentSight!);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: paddingSmall, vertical: paddingDefault),
                                child: Image.asset(
                                  Images.chevronLeft,
                                  width: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                tourMapCubit.currentSightIndex < tourMapCubit.sightsAmount - 1
                    ? Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(buttonCornersRadius),
                              onTap: () {
                                tourMapCubit.nextItem();
                                onChangeSight(tourMapCubit.currentSight!);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: paddingSmall, vertical: paddingDefault),
                                child: Image.asset(
                                  Images.chevronRight,
                                  width: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ],
        ));
  }

  Widget _buildAudioCard(BuildContext context, MLoc loc) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        boxShadow: [defaultShadow()],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(buttonCornersRadius),
              ),
              child: CachedNetworkImage(
                imageUrl: tourMapCubit.currentSight?.imageUrl.first ?? '',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            width: 230,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextVersionButton(loc),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: AutoSizeText(
                        tourMapCubit.currentSight?.name ?? '',
                        style: Theme.of(context).textTheme.subtitle2!.apply(color: colorDarkBlue),
                        minFontSize: 6,
                      ),
                    ),
                  ),
                  tourMapCubit.audioPlayer != null
                      ? _buildPlayButton(context, loc)
                      : Center(
                          child: AutoSizeText(
                            MLoc.of(context).noAudioAvailable,
                            maxFontSize: maxFontSize,
                            minFontSize: minFontSize,
                            style: Theme.of(context).textTheme.bodyText2!.apply(color: colorRed),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextVersionButton(MLoc loc) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(itemCornersRadius),
        onTap: () => tourMapCubit.textVersion(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                Images.textVersion,
                width: 10,
              ),
              horizontalSpacer(5),
              gradientMask(Text(
                loc.textVersion,
                style: TextStyle(
                  color: colorWhite,
                  fontSize: 7,
                  letterSpacing: .4,
                  // height: 16,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayButton(BuildContext context, MLoc loc) {
    return Material(
      color: Colors.transparent,
      child: DefaultAudioPlayer(
        audioPlayer: tourMapCubit.audioPlayer!,
        playlist: tourMapCubit.getCurrentPlaylist(),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, MLoc loc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault, vertical: 15),
      child: Row(
        children: [
          horizontalSpacer(10),
          Text(
            tourMapCubit.currentSightNumberLabel,
            style: Theme.of(context).textTheme.overline,
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.alarm,
                size: 8,
              ),
              horizontalSpacer(3),
              BlocBuilder<TourMapCubit, TourMapState>(
                buildWhen: (_, current) => current.maybeWhen(
                    error: (error) => false,
                    initial: (sight) => false,
                    loading: () => false,
                    locationPermission: () => false,
                    locationUpdated: (pos) => false,
                    textVersion: () => false,
                    timesUp: () => false,
                    tourAudioIsMissing: () => false,
                    accessTimeUpdated: () => true,
                    orElse: () => false),
                bloc: tourMapCubit,
                builder: (context, state) {
                  return Text(
                    calculateRemainingTimeAndConvert(tourMapCubit.tourActivating, loc),
                    style: Theme.of(context).textTheme.overline,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

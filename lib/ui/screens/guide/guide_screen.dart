import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/guide/cubit/guide_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/guide/widgets/achievement.dart' as achiv;
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/expansion_text.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/header_row.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/ui/shared/rating_row.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class GuideScreen extends StatefulWidget {
  final String guideId;
  final String cityName;

  GuideScreen({Key? key, required this.guideId, required this.cityName}) : super(key: key);

  @override
  _GuideScreenState createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  final GuideCubit cubit = locator<GuideCubit>();

  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    cubit.cityName = widget.cityName;
    cubit.guideId = widget.guideId;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var loc = MLoc.of(context);
    return Scaffold(
      appBar: GradientAppBar(
        title: cubit.cityName,
        onBackArrow: () => context.router.pop(),
        trailing: IconButton(
          splashRadius: 24,
          icon: Icon(
            Icons.share,
            color: colorWhite,
          ),
          onPressed: () => cubit.shareGuide(),
        ),
      ),
      body: Container(
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.cloudsBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocConsumer<GuideCubit, GuideState>(
            bloc: cubit,
            listener: (context, state) {
              state.maybeWhen(
                error: (err) => composeRedMessage(err.localizedMessage(context)).show(context),
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                guideInitial: () => initContent(context, size, theme, loc),
                guideLoading: () => EndlessProgress(),
                error: (err) => MapoErrorWidget(
                  message: err,
                ),
              );
            },
          )),
    );
  }

  Widget initContent(BuildContext context, Size size, ThemeData theme, MLoc loc) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          initPhoto(size),
          verticalSpacer(spaceDefault),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Text(
              '${cubit.guide!.name} ${cubit.guide!.surname}',
              style: theme.textTheme.headline6,
            ),
          ),
          verticalSpacer(spaceDefault),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: ExpansionText(cubit.guide!.description),
          ),
          if (cubit.guide!.atLeastOneTourBought) verticalSpacer(spaceSmall),
          if (cubit.guide!.atLeastOneTourBought) composeSocialPanel(),
          if (cubit.guide!.atLeastOneTourBought) verticalSpacer(spaceSmall),
          if (cubit.achievements.length > 3) verticalSpacer(spaceSmall),
          buildAchievements(size),
          verticalSpacer(spaceSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: RatingRow(
              dialogTitle: loc.guideRating,
              dialogContent: loc.rateTheGuide,
              rating: cubit.averageRate,
              canRate: false,
              // onRate: (rate) {
              //   cubit.updateRate(rate);
              //   composeGreenMessage(loc.thanksForTheRating).show(context);
              // },
            ),
          ),
          verticalSpacer(spaceSmall),
          Padding(
            padding: const EdgeInsets.only(left: paddingDefault, bottom: paddingSmall),
            child: HeaderRow(
              headerText: loc.guideAudioTours,
              onPressed: cubit.guide!.tours.length > defaultAmountOfItems ? () => _goToGuideAudioTours(context) : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: buildGuideTours(context),
          ),
        ],
      ),
    );
  }

  Widget composeSocialPanel() {
    var socialNetworks = cubit.guide!.socialNetworks;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (socialNetworks?.Vkontakte != null && socialNetworks!.Vkontakte.isNotEmpty)
          MapoIconButton(
            imagePath: Images.snVk,
            size: iconSize,
            padding: paddingSmall,
            onTap: () => launch(socialNetworks.Vkontakte),
          ),
        if (socialNetworks?.Instagram != null && socialNetworks!.Instagram.isNotEmpty)
          MapoIconButton(
            imagePath: Images.snInstagram,
            size: iconSize,
            padding: paddingSmall,
            onTap: () => launch(socialNetworks.Instagram),
          ),
        if (socialNetworks?.Twitter != null && socialNetworks!.Twitter.isNotEmpty)
          MapoIconButton(
            imagePath: Images.snTwitter,
            size: iconSize,
            padding: paddingSmall,
            onTap: () => launch(socialNetworks.Twitter),
          ),
        if (socialNetworks?.Facebook != null && socialNetworks!.Facebook.isNotEmpty)
          MapoIconButton(
            imagePath: Images.snFacebook,
            size: iconSize,
            padding: paddingSmall,
            onTap: () => launch(socialNetworks.Facebook),
          ),
      ],
    );
  }

  Widget initPhoto(Size size) {
    var videoUrl = cubit.guide?.videoUrl;
    YoutubePlayer? player;
    var convertUrlToId = videoUrl != null && videoUrl.isNotEmpty ? YoutubePlayer.convertUrlToId(videoUrl) : null;
    if (convertUrlToId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: convertUrlToId,
        flags: YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
          forceHD: true,
        ),
      );
      player = YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        onReady: () {
          _controller!.addListener(() {});
        },
        thumbnail: Stack(
          fit: StackFit.passthrough,
          children: [
            CachedNetworkImage(imageUrl: cubit.guide!.imageUrl, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: darkGradientBottomTop(),
              ),
            ),
          ],
        ),
        bottomActions: [
          CurrentPosition(),
        ],
      );
    }

    return Container(
      width: double.maxFinite,
      height: size.height * .35,
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
        child: player != null
            ? FocusScope(
                autofocus: true,
                child: player,
              )
            : InteractiveViewer(
                scaleEnabled: true,
                panEnabled: true,
                child: CachedNetworkImage(
                  imageUrl: cubit.guide!.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }

  Widget buildAchievements(Size size) {
    return cubit.achievements.length > 3
        ? Container(
            height: size.height * .13,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: cubit.achievements.map((achievement) {
                return achievement.imageUrl == '-1'
                    ? horizontalSpacer(paddingSmall)
                    : achiv.Achievement(
                        onTap: () {},
                        image: achievement.imageUrl,
                        text: achievement.text,
                      );
              }).toList(),
            ),
          )
        : SizedBox.shrink();
  }

  Widget buildGuideTours(BuildContext context) {
    return Column(
      children: cubit.guide!.tours
          .map((tour) => Padding(
                padding: const EdgeInsets.only(bottom: paddingSmall),
                child: TourItemCard(
                    price: cubit.prices[Platform.isAndroid ? tour.googleProductId : tour.appleProductId]!,
                    tour: tour,
                    showPrice: !(tour.paid),
                    onTap: () => _goToTourScreen(
                          context,
                          tour.id.toString(),
                          tour.name,
                        )),
              ))
          .toList(),
    );
  }

  void _goToTourScreen(BuildContext context, String tourId, String tourName) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
    }
  }

  void _goToGuideAudioTours(BuildContext context) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainTourListScreen(
        categoryId: '',
        guide: Guide(
          id: cubit.guide!.id,
          name: cubit.guide!.name,
        ),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogTourListScreen(
        categoryId: '',
        guide: Guide(
          id: cubit.guide!.id,
          name: cubit.guide!.name,
        ),
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersTourListScreen(
        categoryId: '',
        guide: Guide(
          id: cubit.guide!.id,
          name: cubit.guide!.name,
        ),
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileTourListScreen(
        categoryId: '',
        guide: Guide(
          id: cubit.guide!.id,
          name: cubit.guide!.name,
        ),
      ));
    }
  }
}

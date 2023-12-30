import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';

@singleton
class BranchLinkProvider {
  final logoPlaceholder = 'https://mapo.guide/img/travel-guide_main-logo.3a80065f.png';
  final androidPackageName = 'com.leaditteam.mapotravelguide';
  final androidMinVer = 25;
  final appleBundleId = 'com.leaditteam.mapoGuides';
  final appleMinVer = '1.0.55';
  final appStoreId = '1550582242';

  final channelTour = 'channelTour';
  final tourIdKey = 'tourId';

  final channelGuide = 'channelGuide';
  final guideIdKey = 'guideId';
  final guideCityNameKey = 'guideCityNameKey';

  Map<dynamic, dynamic>? dataFromAuth;
  // final channelTour = 'channelTour';

  void handleLink(BuildContext context, Map<dynamic, dynamic> data) {
    if (data['~channel'] == channelTour) {
      log('navigating to a tour');
      context.router.push(MainTourScreen(
        tourId: data[tourIdKey],
        tourName: data['\$og_title'],
      ));
    } else if (data['~channel'] == channelGuide) {
      log('navigating to a guide');
      context.router.push(MainGuideScreen(
        guideId: data[guideIdKey],
        cityName: data[guideCityNameKey],
      ));
    }
  }

  Future<String> generateDeepLinkForATour(int tourId, {String? imageUrl, String? tourName, String? tourDescription}) async {
    final buo = BranchUniversalObject(
      canonicalIdentifier: appleBundleId,
      title: tourName ?? 'Mapo Guides tour',
      imageUrl: imageUrl ?? logoPlaceholder,
      contentDescription: tourDescription ?? 'Check the tour for details',
      publiclyIndex: true,
      locallyIndex: true,
    );

    FlutterBranchSdk.registerView(buo: buo);

    final linkProperties = BranchLinkProperties(
      channel: channelTour,
    );

    linkProperties.addControlParam(tourIdKey, tourId.toString());

    final eventStandart = BranchEvent.standardEvent(BranchStandardEvent.SHARE);
    FlutterBranchSdk.trackContent(buo: buo, branchEvent: eventStandart);

    final response = await FlutterBranchSdk.getShortUrl(buo: buo, linkProperties: linkProperties);

    return response.success ? response.result : null;
  }

  Future<String> generateDeepLinkForAGuide(int guideId, String cityName, {String? imageUrl, String? guideName, String? guideDescription}) async {
    final buo = BranchUniversalObject(
      canonicalIdentifier: appleBundleId,
      title: guideName ?? 'Mapo Guides guide',
      imageUrl: imageUrl ?? logoPlaceholder,
      contentDescription: guideDescription ?? 'Check profile for details',
      publiclyIndex: true,
      locallyIndex: true,
    );

    FlutterBranchSdk.registerView(buo: buo);

    final linkProperties = BranchLinkProperties(
      channel: channelGuide,
    );

    linkProperties.addControlParam(guideIdKey, guideId.toString());
    linkProperties.addControlParam(guideCityNameKey, cityName);

    final eventStandart = BranchEvent.standardEvent(BranchStandardEvent.SHARE);
    FlutterBranchSdk.trackContent(buo: buo, branchEvent: eventStandart);

    final response = await FlutterBranchSdk.getShortUrl(buo: buo, linkProperties: linkProperties);

    return response.success ? response.result : null;
  }
}

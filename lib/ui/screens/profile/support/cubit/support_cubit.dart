import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:share/share.dart';

part 'support_cubit.freezed.dart';
part 'support_state.dart';

@singleton
class SupportCubit extends Cubit<SupportState> {
  final HiveBoxConfigurator<User> _userBoxManager;
  SupportCubit(this._userBoxManager) : super(SupportState.initial());
  late BranchUniversalObject _buo;
  late BranchLinkProperties _linkProperties;

  void initDeepLinkData(BuildContext context) {
    final loc = MLoc.of(context);
    _buo = BranchUniversalObject(
      canonicalIdentifier: appBundleId,
      title: 'Mapo travel guide',
      imageUrl: 'https://grishkoff.pro/wp-content/uploads/2019/03/coastal-family-health-travel-clinic.jpg',
      contentDescription: loc.about,
      keywords: ['Mapo', 'Travel', 'Guide', 'MapoTravelGuide'],
      publiclyIndex: true,
      locallyIndex: true,
    );

    FlutterBranchSdk.registerView(buo: _buo);

    _linkProperties = BranchLinkProperties(
      channel: 'shareSheet',
      feature: 'sharing',
      stage: 'new share',
      tags: [],
    );

    final user = _userBoxManager.get(0);

    if (user != null) {
      _linkProperties.addControlParam('refferal', user.email);
    }

    final eventStandart = BranchEvent.standardEvent(BranchStandardEvent.SHARE);
    FlutterBranchSdk.trackContent(buo: _buo, branchEvent: eventStandart);
  }

  void shareLink() async {
    if (_buo == null || _linkProperties == null) {
      return;
    }
    final response = await FlutterBranchSdk.getShortUrl(buo: _buo, linkProperties: _linkProperties);
    if (response.success) {
      await Share.share(response.result);
    } else {
      print('Error : ${response.errorCode} - ${response.errorMessage}');
    }
  }
}

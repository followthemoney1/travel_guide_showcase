import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/widgets/profile_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/util/images.dart';

import '../../../../theme.dart';

class PromocodesMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext mainContext) {
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.promocodes),
      body: Material(
        child: Ink(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
            child: Padding(
              padding: EdgeInsets.all(spaceDefault),
              child: ListView(physics: BouncingScrollPhysics(), children: [
                ProfileButton(
                  onTap: () => mainContext.router.push(ProfileMyPromocodesScreen()),
                  text: loc.myPromocodes,
                ),
                ProfileButton(
                  onTap: () => mainContext.router.push(ProfileSharePromocodeScreen()),
                  text: loc.sharePromocodes,
                ),
              ]),
            )),
      ),
    );
  }
}

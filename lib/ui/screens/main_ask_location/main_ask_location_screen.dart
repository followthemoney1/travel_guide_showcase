import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/screens/main/cubit/main_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class MainAskLocationScreen extends StatelessWidget {
  final MainScreenCubit bloc;

  const MainAskLocationScreen({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var loc = MLoc.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: paddingDefault),
        height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacer(size.height * .15),
            Image.asset(
              Images.logoLong,
              width: size.width * .45,
            ),
            verticalSpacer(spaceDefault),
            Image.asset(
              Images.satellite,
              width: size.width * .28,
            ),
            verticalSpacer(spaceDefault),
            Text(
              loc.askOnLocal,
              style: theme.textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            verticalSpacer(size.height * .13),
            GreenButton(onPressed: openLocationSettings, title: loc.turnOn),
            verticalSpacer(spaceSmall),
            BorderlessButton(onPressed: continueWithoutGeolocation, title: loc.continWithoutGeo),
          ],
        ),
      ),
    );
  }

  void openLocationSettings() {
    bloc.enableLocation();
  }

  void continueWithoutGeolocation() {
    bloc.continueWithoutGeolocation();
  }
}

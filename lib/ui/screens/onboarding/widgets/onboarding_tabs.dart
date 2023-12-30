import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/onboarding/cubit/onboarding_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../shared/animated_tab_dots.dart';

class OnboardingTabs extends StatefulWidget {
  OnboardingTabs({Key? key}) : super(key: key);

  @override
  _OnboardingTabsState createState() => _OnboardingTabsState();
}

class _OnboardingTabsState extends State<OnboardingTabs> with TickerProviderStateMixin {
  late TabController _tabController;
  final _tabsAmount = 3;

  @override
  void initState() {
    final onboardingScreenCubit = locator<OnboardingScreenCubit>();
    _tabController = TabController(length: _tabsAmount, vsync: this);
    _tabController.addListener(() => onboardingScreenCubit.changeTab(_tabController.index == _tabsAmount - 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);

    final height = MediaQuery.of(context).size.height;
    return BlocListener<OnboardingScreenCubit, OnboardingScreenState>(
      listenWhen: (_, cur) => cur.maybeWhen(
        nextTab: () => true,
        inital: () => false,
        lastTab: () => false,
        orElse: () => false,
      ),
      listener: (context, state) {
        _tabController.index += 1;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * .8,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * .15,
                    ),
                    FractionallySizedBox(
                      widthFactor: .5,
                      child: Image.asset(
                        Images.onboardingFirstScreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                      child: AutoSizeText(
                        loc.onboarding1,
                        maxLines: 3,
                        maxFontSize: maxFontSize,
                        minFontSize: minFontSize,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        Images.onboardingSecondScreen,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                        child: AutoSizeText(
                          loc.onboarding2,
                          maxLines: 4,
                          maxFontSize: maxFontSize,
                          minFontSize: minFontSize,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: height * .15,
                    ),
                    FractionallySizedBox(
                      widthFactor: .5,
                      child: Image.asset(
                        Images.onboardingThirdScreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                      child: AutoSizeText(
                        loc.onboarding3,
                        maxLines: 5,
                        maxFontSize: maxFontSize,
                        minFontSize: minFontSize,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AnimatedTabDots(tabController: _tabController),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

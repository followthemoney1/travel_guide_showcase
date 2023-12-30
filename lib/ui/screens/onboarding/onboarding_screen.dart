import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/onboarding/cubit/onboarding_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/onboarding/widgets/onboarding_tabs.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              OnboardingTabs(),
              Positioned(
                top: height * .14,
                child: Image.asset(
                  Images.logoLong,
                  width: width * .45,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: paddingDefault,
            ),
            child: BlocBuilder<OnboardingScreenCubit, OnboardingScreenState>(
              buildWhen: (prev, curr) => prev != curr,
              builder: (context, state) => state.maybeWhen(
                lastTab: () => _buildOneButton(context),
                inital: () => _buildTwoButtons(context),
                nextTab: () => _buildTwoButtons(context),
                orElse: () => _buildTwoButtons(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOneButton(BuildContext context) {
    final loc = MLoc.of(context);
    final onboardingScreenCubit = locator<OnboardingScreenCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(
          flex: 3,
        ),
        Expanded(
          flex: 2,
          child: GreenButton(
            onPressed: () {
              //onboardingScreenCubit.onboardingViewed();
              AutoRouter.of(context).replace(AuthorizationScreenRoute());
            },
            title: loc.begin,
          ),
        ),
      ],
    );
  }

  Widget _buildTwoButtons(BuildContext context) {
    final loc = MLoc.of(context);
    final onboardingScreenCubit = locator<OnboardingScreenCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: BorderlessButton(
            onPressed: () => AutoRouter.of(context).replace(AuthorizationScreenRoute()),
            title: loc.skip,
          ),
        ),
        Spacer(),
        Expanded(
          flex: 2,
          child: GreenButton(
            onPressed: () => onboardingScreenCubit.nextTab(),
            title: loc.next,
          ),
        ),
      ],
    );
  }
}

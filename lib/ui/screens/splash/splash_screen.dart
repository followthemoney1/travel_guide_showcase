import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/splash/cubit/splash_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/splash/widgets/sliding_image.dart';
import 'package:mapo_travel_guide/util/images.dart';

class SplashScreen extends StatelessWidget {
  final SplashScreenCubit _cubit = locator<SplashScreenCubit>();

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext baseContext) {
    final width = MediaQuery.of(baseContext).size.width;
    final height = MediaQuery.of(baseContext).size.height;
    final paddingHorizontal = width * .025;
    final paddingVertical = height / width > 2 ? height * .012 : height * .024;
    return Scaffold(
      body: BlocListener<SplashScreenCubit, SplashScreenState>(
        bloc: _cubit,
        listener: (context, state) {
          state.maybeWhen(
            authorized: () => AutoRouter.of(baseContext).replace(BaseNavigatorRoute()),
            nonAuthorized: () => AutoRouter.of(baseContext).replace(AuthorizationScreenRoute()),
            onboarding: () => AutoRouter.of(baseContext).replace(OnboardingScreenRoute()),
            orElse: () {},
          );
        },
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              ..._buildLeftImages(width, height, paddingVertical),
              ..._buildRightImages(width, height, paddingVertical),
              ..._buildRemainingImages(width, height, paddingHorizontal, paddingVertical),
              Positioned(
                top: height * .24,
                left: width * .3,
                child: Image.asset(
                  Images.logo,
                  height: height * (height / width > 2 ? .2 : .23),
                  width: width * .4,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRightImages(double width, double height, double paddingVertical) {
    return [
      SlidingImage(
        Images.splashScreenRight1,
        width: width * .33,
        height: height * .19,
        top: 0,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenRight2,
        width: width * .28,
        height: height * .08,
        top: height * .19 + paddingVertical,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenRight3,
        width: width * .25,
        height: height * .16,
        top: height * .19 + paddingVertical + height * .08 + paddingVertical,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenRight4,
        width: width * .42,
        height: height * .12,
        top: height * .19 + paddingVertical + height * .08 + paddingVertical + height * .16 + paddingVertical,
        rightBefore: width * .28,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenRight5,
        width: width * .2,
        height: height * .17,
        top: height * .19 + paddingVertical + height * .08 + paddingVertical + height * .16 + paddingVertical + height * .12 + paddingVertical,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenRight6,
        width: width * .3,
        height: height * .13,
        top: height * .19 + paddingVertical + height * .08 + paddingVertical + height * .16 + paddingVertical + height * .12 + paddingVertical + height * .17 + paddingVertical,
        direction: SlidingDirection.right,
      ),
    ];
  }

  List<Widget> _buildLeftImages(double width, double height, double paddingVertical) {
    return [
      SlidingImage(
        Images.splashScreenLeft1,
        top: 0,
        width: width * .38,
        height: height * .1,
        direction: SlidingDirection.left,
      ),
      SlidingImage(
        Images.splashScreenLeft2,
        top: height * .1 + paddingVertical,
        width: width * .38,
        height: height * .1,
        direction: SlidingDirection.left,
      ),
      SlidingImage(
        Images.splashScreenLeft3,
        top: height * .1 + paddingVertical + height * .1 + paddingVertical,
        width: width * .25,
        height: height * .1,
        direction: SlidingDirection.left,
      ),
      SlidingImage(
        Images.splashScreenLeft4,
        top: height * .1 + paddingVertical + height * .1 + paddingVertical + height * .1 + paddingVertical,
        width: width * .25,
        height: height * .27,
        direction: SlidingDirection.left,
      ),
      SlidingImage(
        Images.splashScreenLeft5,
        top: height * .1 + paddingVertical + height * .1 + paddingVertical + height * .1 + paddingVertical + height * .27 + paddingVertical,
        width: width * .378,
        height: height * .30,
        direction: SlidingDirection.left,
      ),
    ];
  }

  List<Widget> _buildRemainingImages(double width, double height, double paddingHorizontal, paddingVertical) {
    return [
      SlidingImage(
        Images.splashScreenCenter1,
        left: width * .38 + paddingHorizontal,
        width: width * .24,
        height: height * .19,
        direction: SlidingDirection.top,
      ),
      SlidingImage(
        Images.splashScreenCenter2,
        width: width * .28,
        height: height * .1,
        top: height * .19 + paddingVertical + height * .08 + paddingVertical + height * .16 + paddingVertical + paddingVertical,
        rightAfter: width * .42 + paddingHorizontal,
        direction: SlidingDirection.right,
      ),
      SlidingImage(
        Images.splashScreenCenter3,
        width: width * .36,
        height: height * .17,
        left: width * .378 + paddingHorizontal,
        bottomAfter: height * .13 + paddingVertical,
        direction: SlidingDirection.bottom,
      ),
      SlidingImage(
        Images.splashScreenCenter4,
        left: width * .378 + paddingHorizontal,
        width: width * .27,
        height: height * .13,
        direction: SlidingDirection.bottom,
      ),
    ];
  }
}

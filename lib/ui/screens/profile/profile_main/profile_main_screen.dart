import 'package:auto_route/auto_route.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/cubit/profile_main_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/profile_main/widgets/profile_button.dart';
import 'package:mapo_travel_guide/ui/screens/profile/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../theme.dart';

class ProfileMainScreen extends StatefulWidget {
  @override
  _ProfileMainScreenState createState() => _ProfileMainScreenState();

  ProfileMainScreen();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  EventBus navigationBus = locator<EventBus>();
  bool wentToAnotherScreen = false;

  @override
  void initState() {
    super.initState();
    locator<ProfileMainCubit>().emit(ProfileMainState.initial());
    _listenBottomBarButton();
  }

  void _listenBottomBarButton() {
    navigationBus.on<NavigateProfileScreenRootEvent>().listen((event) {
      if (wentToAnotherScreen) {
        wentToAnotherScreen = false;
        context.router.popUntilRoot();
      }
    });
  }

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.profile),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill),
          ),
          child: BlocConsumer<ProfileMainCubit, ProfileMainState>(listener: (context, state) {
            // state.maybeWhen(
            //     proceedLogout: () {
            //       context.router.root.pushAndPopUntil(
            //         AuthorizationScreenRoute(),
            //         predicate: (route) => true,
            //       );
            //     },
            //     orElse: () {});
          }, builder: (context, state) {
            return state.maybeWhen(
              initial: () => _initContent(theme, loc, context),
              loading: () => EndlessProgress(),
              error: (err) {
                composeRedMessage(err.localizedMessage(context)).show(context);
                return MapoErrorWidget(message: err);
              },
              orElse: () => EndlessProgress(),
            );
          }),
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context) {
    var cubit = locator<ProfileMainCubit>();
    return Padding(
      padding: EdgeInsets.all(spaceDefault),
      child: ListView(physics: BouncingScrollPhysics(), children: [
        cubit.userExist()
            ? ProfileButton(
                text: loc.editData,
                leadingAsset: Images.pencil,
                onTap: () async {
                  wentToAnotherScreen = true;
                  await context.router.push(ProfileEditDataScreen());
                  wentToAnotherScreen = false;
                },
              )
            : SizedBox.shrink(),
        cubit.userExist()
            ? ProfileButton(
                text: loc.favorites,
                leadingAsset: Images.favorite,
                onTap: () async {
                  wentToAnotherScreen = true;
                  await context.router.push(ProfileFavoritesScreen());
                  wentToAnotherScreen = false;
                },
              )
            : SizedBox.shrink(),
        // cubit.userExist()
        //     ? ProfileButton(
        //         text: loc.promocodes,
        //         leadingAsset: Images.coupon,
        //         onTap: () => ExtendedNavigator.of(context).push(ProfileRoutes.promocodesMenuScreen),
        //       )
        //     : SizedBox.shrink(),
        ProfileButton(
            text: loc.settings,
            leadingAsset: Images.gear,
            onTap: () async {
              wentToAnotherScreen = true;
              await context.router.push(ProfileSettingsScreen());
              wentToAnotherScreen = false;
            }),
        ProfileButton(
            text: loc.questionsAndAnswers,
            leadingAsset: Images.question,
            onTap: () async {
              wentToAnotherScreen = true;
              await context.router.push(ProfileQuestionsAndAnswersScreen());
              wentToAnotherScreen = false;
            }),
        ProfileButton(
            text: loc.termsOfUse,
            leadingAsset: Images.contract,
            onTap: () async {
              wentToAnotherScreen = true;
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TermsAndConditionsScreen(showTermsOfUse: true)),
              );
              // await context.router.push(TermsAndConditionsScreenRoute(showTermsOfUse: true));
              wentToAnotherScreen = false;
            }),
        ProfileButton(
            text: loc.privacyPolicy,
            leadingAsset: Images.contract,
            onTap: () async {
              wentToAnotherScreen = true;
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TermsAndConditionsScreen(showTermsOfUse: false)),
              );

              // await context.router.push(
              //   TermsAndConditionsScreenRoute(
              //     showTermsOfUse: false,
              //   ),
              // );
              wentToAnotherScreen = false;
            }),
        ProfileButton(
            text: loc.support,
            leadingAsset: Images.support,
            onTap: () async {
              wentToAnotherScreen = true;
              await context.router.push(ProfileSupportScreen());
              wentToAnotherScreen = false;
            }),
        ProfileButton(
            text: loc.aboutApp,
            leadingAsset: Images.smartphone,
            onTap: () async {
              wentToAnotherScreen = true;
              await context.router.push(ProfileAboutScreen());
              wentToAnotherScreen = false;
            }),
        cubit.userExist()
            ? ProfileButton(
                text: loc.exit,
                leadingAsset: Images.logout,
                onTap: () {
                  _showAlertDialog(context, cubit, loc);
                },
                color: Colors.red)
            : ProfileButton(
                onTap: () async {
                  wentToAnotherScreen = true;
                  await context.router.root.pushAndPopUntil(AuthorizationScreenRoute(),
                      predicate: (Route<dynamic> route) {
                    return false;
                  });
                  wentToAnotherScreen = false;
                },
                text: loc.signIn,
                leadingAsset: Images.logout,
                color: Colors.green,
              ),
      ]),
    );
  }

  void _showAlertDialog(BuildContext context, ProfileMainCubit cubit, MLoc loc) {
    showDialog(
      context: context,
      builder: (context) => TextDialog(
        title: loc.exit,
        content: loc.areYouSureToExit,
        btnOkText: loc.exit,
        onOk: () async => await cubit.logout(),
      ),
    );
  }
}

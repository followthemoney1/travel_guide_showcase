import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/authorization/cubit/authorization_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/social_button.dart';
import 'package:mapo_travel_guide/ui/shared/custom_text_field.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/text_field_password.dart';
import 'package:mapo_travel_guide/ui/shared/underlined_text.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/branch_link_provider.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class AuthorizationScreen extends StatefulWidget {
  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  AuthorizationCubit cubit = locator<AuthorizationCubit>();
  late StreamSubscription<Map> streamSubscription;
  var branchLinkProvider = locator<BranchLinkProvider>();

  @override
  void initState() {
    super.initState();
    listenToDynamicLinks();
  }

  void listenToDynamicLinks() async {
    streamSubscription = FlutterBranchSdk.initSession().listen((data) async {
      if (data.containsKey('+clicked_branch_link') && data['+clicked_branch_link'] == true) {
        await cubit.removeToken();
        branchLinkProvider.dataFromAuth = data;
        await context.router.root.push(BaseNavigatorRoute());
      }
    }, onError: (error) {
      var platformException = error as PlatformException;
      print('InitSession error: ${platformException.code} - ${platformException.message}');
    });
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var loc = MLoc.of(context);
    return Scaffold(
      body: Container(
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: BlocConsumer<AuthorizationCubit, AuthorizationState>(
            bloc: cubit,
            listener: (context, state) {
              state.maybeWhen(
                authSuccess: () => _goToTheMain(withAuth: true),
                authError: (message) {
                  _emailController.text = cubit.email;
                  composeRedMessage(message.localizedMessage(context)).show(context);
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                initial: () => _initContent(theme, loc, context),
                authProcess: () => EndlessProgress(),
                authSuccess: () => _initContent(theme, loc, context),
                authError: (message) {
                  composeRedMessage(message.toString()).show(context);
                  return _initContent(theme, loc, context);
                },
              );
            },
          )),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpacer(spaceBig),
              Image.asset(
                Images.logoLong,
                height: 70,
              ),
              verticalSpacer(spaceDefault),
              Text(loc.authorization, style: theme.textTheme.headline4),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: CustomTextField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.emailRequired;
                    }
                    if (!emailRegExp.hasMatch(value)) {
                      return loc.wrongEmail;
                    }
                    return null;
                  },
                  labelText: loc.email,
                  hintText: loc.enterEmail,
                  inputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onFieldSubmited: (value) => _fieldFocusChange(context),
                  onSaved: (email) => cubit.email = email!,
                ),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: TextFieldPassword(
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.passwordRequired;
                    }
                    if (value.length < 8) {
                      return loc.passwordTooShort;
                    }
                    return null;
                  },
                  // controller: _passwordController,
                  autofocus: false,
                  labelText: loc.password,
                  hintText: loc.enterPassword,
                  onFieldSubmited: (value) => _trySignInWithCredentials(cubit, context),
                  onSaved: (password) => cubit.password = password!,
                ),
              ),
              verticalSpacer(spaceDefaultDoubled),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: GreenButton(
                  onPressed: () => _trySignInWithCredentials(cubit, context),
                  title: loc.enter,
                ),
              ),
              verticalSpacer(spaceSmall),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: UnderlinedText(
                        text: loc.register,
                        onClick: () => _goToRegister(),
                      ),
                    ),
                    Flexible(
                      child: UnderlinedText(
                        text: loc.forgotPassword,
                        onClick: () => _goToRecovery(),
                      ),
                    ),
                  ],
                ),
              ),
              if (Platform.isIOS) verticalSpacer(spaceDefault),
              if (Platform.isIOS)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                  child: SocialButton(
                    onClick: () => cubit.doSignInWithApple(),
                    name: loc.signInApple,
                    image: Images.logoApple,
                  ),
                ),
              verticalSpacer(paddingSmall),
              UnderlinedText(
                text: loc.continueWithoutAuth,
                onClick: () => _goToTheMain(withAuth: false),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToTheMain({required bool withAuth}) async {
    if (withAuth) {
      await context.router.root.replace(BaseNavigatorRoute());
      return;
    } else {
      await cubit.removeToken();
    }

    var loc = MLoc.of(context);
    await showDialog(
      context: context,
      builder: (context) {
        return TextDialog(
          title: loc.continueWithoutAuth,
          content: loc.continueWithoutAuthContent,
          withCancel: true,
          btnOkText: loc.mContinue,
          onOk: () => context.router.root.popAndPush(BaseNavigatorRoute()),
        );
      },
    );
  }

  void _goToRegister() {
    context.router.root.push(RegisterScreenRoute());
  }

  void _goToRecovery() {
    context.router.root.push(RecoveryPasswordScreenRoute());
  }

  void _trySignInWithCredentials(AuthorizationCubit cubit, BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    //Hide on screen keyboard
    FocusScope.of(context).unfocus();
    cubit.doSignInWithCredentials();
  }

  void _fieldFocusChange(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/register/cubit/register_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/custom_text_field.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/text_field_password.dart';
import 'package:mapo_travel_guide/ui/shared/underlined_text.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  bool _agreementValue = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _passwordOneController = TextEditingController();
  final TextEditingController _passwordTwoController = TextEditingController();

  final cubit = locator<RegisterCubit>();

  @override
  void initState() {
    RegisterState.initial();
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    var size = MediaQuery.of(mainContext).size;
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          bloc: cubit,
          listener: (context, state) {
            state.maybeWhen(
              registerSuccess: () => _goToVerify(loc, context),
              registerError: (message) {
                composeRedMessage(message.localizedMessage(context)).show(context);
              }, orElse: () {  },
            );
          },
          buildWhen: (previous, current) => current.maybeWhen(
            registerSuccess: () => false,
            initial: () => true,
            registerError: (message) => true,
            registerProcess: () => true, orElse: () => true,
          ),
          builder: (context, state) {
            return state.when(
              initial: () => _initContent(theme, loc, context),
              registerProcess: () => EndlessProgress(),
              registerError: (message) => _initContent(theme, loc, context),
              registerSuccess: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context) {
    // _passwordOneController.text = bloc.passwordOne;
    // _passwordOneController.selection = TextSelection.fromPosition(TextPosition(offset: _passwordOneController.text.length));
    // _passwordTwoController.text = bloc.passwordTwo;
    // _passwordTwoController.selection = TextSelection.fromPosition(TextPosition(offset: _passwordTwoController.text.length));
    // _emailController.text = bloc.email;
    // _emailController.selection = TextSelection.fromPosition(TextPosition(offset: _emailController.text.length));
    // _nameController.text = bloc.name;
    // _nameController.selection = TextSelection.fromPosition(TextPosition(offset: _nameController.text.length));

    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: _registerFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpacer(spaceBig),
              Image.asset(
                Images.logoLong,
                height: 70,
              ),
              verticalSpacer(spaceDefault),
              Text(loc.registering, style: theme.textTheme.headline4),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: CustomTextField(
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.nameRequired;
                    }
                    return null;
                  },
                  inputFormatters: [FilteringTextInputFormatter.deny(specialCharsRegExp)],
                  labelText: loc.name,
                  hintText: loc.enterName,
                  inputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onFieldSubmited: (value) => _fieldFocusChange(context),
                  onSaved: (name) => cubit.name = name!,
                ),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: CustomTextField(
                  controller: _surnameController,
                  inputType: TextInputType.name,
                  inputFormatters: [FilteringTextInputFormatter.deny(specialCharsRegExp)],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.surnameRequired;
                    }
                    return null;
                  },
                  labelText: loc.surname,
                  hintText: loc.enterSurname,
                  textInputAction: TextInputAction.next,
                  onFieldSubmited: (value) => _fieldFocusChange(context),
                  onSaved: (surname) => cubit.surname = surname!,
                ),
              ),
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
              verticalSpacer(spaceDefaultDoubled),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: TextFieldPassword(
                  //passwordFocus: passwordFirstFocus,
                  controller: _passwordOneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.passwordRequired;
                    }
                    if (value.length < 8) {
                      return loc.passwordTooShort;
                    }
                    if (value != _passwordTwoController.value.text) {
                      return loc.passwordsDontMatch;
                    }
                    return null;
                  },
                  autofocus: false,
                  labelText: loc.password,
                  hintText: loc.enterPassword,
                  textInputAction: TextInputAction.next,
                  onFieldSubmited: (value) => _fieldFocusChange(context),
                  onSaved: (password) => cubit.passwordOne = password!,
                ),
              ),
              verticalSpacer(spaceDefaultDoubled),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: TextFieldPassword(
                  //passwordFocus: passwordSecondFocus,
                  controller: _passwordTwoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.passwordRequired;
                    }
                    if (value.length < 8) {
                      return loc.passwordTooShort;
                    }
                    if (value != _passwordOneController.value.text) {
                      return loc.passwordsDontMatch;
                    }
                    return null;
                  },
                  autofocus: false,
                  labelText: loc.confirmPassword,
                  hintText: loc.confirmPassword,
                  textInputAction: TextInputAction.done,
                  onFieldSubmited: (value) => _tryRegisterWithCredentials(cubit, loc),
                  onSaved: (password) => cubit.passwordTwo = password!,
                ),
              ),
              verticalSpacer(spaceDefault),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: Row(
                  children: [
                    Checkbox(
                      value: _agreementValue,
                      onChanged: (value) => setState(() {
                        _agreementValue = value!;
                      }),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: '${loc.termsText} ',
                          style: theme.textTheme.bodyText2!.apply(color: colorDarkBlue),
                          children: [
                            TextSpan(
                              text: '${loc.privacyPolicy} ',
                              recognizer: TapGestureRecognizer()..onTap = () => _goToTheTermsOrPrivacyScreen(false),
                              style: theme.textTheme.bodyText2!.apply(color: colorDarkBlue, decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: '${loc.and} ',
                              style: theme.textTheme.bodyText2!.apply(color: colorDarkBlue),
                            ),
                            TextSpan(
                              text: '${loc.userAgreement}',
                              recognizer: TapGestureRecognizer()..onTap = () => _goToTheTermsOrPrivacyScreen(true),
                              style: theme.textTheme.bodyText2!.apply(color: colorDarkBlue, decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpacer(spaceDefaultDoubled),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
                child: GreenButton(
                  onPressed: () => _tryRegisterWithCredentials(cubit, loc),
                  title: loc.register,
                ),
              ),
              // verticalSpacer(spaceDefaultDoubled),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              //   child: SocialButton(
              //     onClick: () {
              //       bloc.doSignInWithFacebook();
              //     },
              //     name: loc.signInFacebook,
              //     image: Images.logoFacebook,
              //   ),
              // ),
              // verticalSpacer(spaceDefault),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              //   child: SocialButton(
              //     onClick: () {},
              //     name: loc.signInGoogle,
              //     image: Images.logoGoogle,
              //   ),
              // ),
              // verticalSpacer(spaceDefault),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              //   child: SocialButton(
              //     onClick: () => _tryRegisterWithCredentials(bloc, loc),
              //     name: loc.signInApple,
              //     image: Images.logoApple,
              //   ),
              // ),
              verticalSpacer(paddingSmall),
              UnderlinedText(
                text: loc.backToAuth,
                onClick: () {
                  context.router.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToTheTermsOrPrivacyScreen(bool showTerms) {
    context.router.root.push(
      TermsAndConditionsScreenRoute(showTermsOfUse: showTerms),
    );
  }

  // Widget _successScreen(MLoc loc, ThemeData theme, BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       mainAxisSize: MainAxisSize.max,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.all(spaceDefaultDoubled),
  //           child: Image.asset(Images.greenTik),
  //         ),
  //         verticalSpacer(spaceDefault),
  //         Text(loc.visitEmail, style: theme.textTheme.subtitle1),
  //         verticalSpacer(spaceDefaultDoubled),
  //         MapoIconButton(
  //           imagePath: Images.arrow_back,
  //           onTap: () =>  AutoRouter.of(context).pop(),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  void _goToVerify(MLoc loc, BuildContext context) async {
    await composeGreenMessage(loc.successRegistr).show(context);
    await context.router.pop();
  }

  void _tryRegisterWithCredentials(RegisterCubit bloc, MLoc loc) {
    if (!_registerFormKey.currentState!.validate()) {
      return;
    }
    if (!_agreementValue) {
      composeRedMessage(loc.pleaseAcceptTerms).show(context);
      return;
    }
    _registerFormKey.currentState!.save();
    bloc.doRegisterWithCredentials();
  }

  void _fieldFocusChange(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }
}

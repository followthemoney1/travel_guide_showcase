import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/underlined_text.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:mapo_travel_guide/util/extensions.dart';
import 'cubit/successful_registration_cubit.dart';

class SuccessfulRegistrationScreen extends StatefulWidget {
  SuccessfulRegistrationScreen({Key? key}) : super(key: key);

  @override
  _SuccessfulRegistrationScreenState createState() => _SuccessfulRegistrationScreenState();
}

class _SuccessfulRegistrationScreenState extends State<SuccessfulRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      locator<SuccessfulRegistrationCubit>().startTimer();
    });
    super.initState();
  }

  @override
  void dispose() {
    locator.get<SuccessfulRegistrationCubit>().stopTimer();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final loc = MLoc.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.cloudsBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocConsumer<SuccessfulRegistrationCubit, SuccessfulRegistrationState>(
            listener: (context, state) {
              state.maybeWhen(success: () => AutoRouter.of(context).replace(BaseNavigatorRoute()) , orElse: () {});
            },
            buildWhen: (_, curr) => curr.maybeWhen(
              codeCanResend: () => false,
              leftUntilResendingCode: (_) => false,
              orElse: () => true,
            ),
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: state.maybeWhen(
                    error: (message) {
                      composeRedMessage(message.localizedMessage(context)).show(context);
                      return _buildCodeInput(context, loc, theme, size);
                    },
                    codeResentSuccess: () {
                      composeGreenMessage(loc.codeSentAgain).show(context);
                      return _buildCodeInput(context, loc, theme, size);
                    },
                    loading: () => [
                      Container(
                        child: EndlessProgress(),
                        height: size.height,
                      )
                    ],
                    orElse: () => _buildCodeInput(context, loc, theme, size),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCodeInput(BuildContext context, MLoc loc, ThemeData theme, Size size) {
    final successRegisterCubit = locator<SuccessfulRegistrationCubit>();

    return [
      verticalSpacer(size.height * .15),
      Image.asset(
        Images.logoLong,
        width: size.width * .45,
      ),
      verticalSpacer(spaceDefault),
      Text(
        loc.successRegistr,
        style: theme.textTheme.headline4,
        textAlign: TextAlign.center,
      ),
      verticalSpacer(spaceDefault),
      Text(
        loc.sendSmsForVerification,
        style: theme.textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
      verticalSpacer(spaceDefault),
      TextFormField(
        style: theme.textTheme.subtitle2,
        validator: (value) => value!.isEmpty ? loc.codeRequired : null,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: loc.enterSmsCode,
          hintStyle: theme.textTheme.bodyText2,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colorGreenGradientEnd, width: 1),
          ),
        ),
        keyboardType: TextInputType.number,
        onSaved: (code) => successRegisterCubit.verificationCode = code,
        onFieldSubmitted: (value) => _tryCheckCode(context, value),
      ),
      BlocBuilder<SuccessfulRegistrationCubit, SuccessfulRegistrationState>(
        buildWhen: (_, current) => current.maybeWhen(
          codeResentSuccess: () => false,
          error: (message) => false,
          initial: () => false,
          loading: () => false,
          success: () => false,
          codeCanResend: () => true,
          leftUntilResendingCode: (_) => true, orElse: () => false,
        ),
        builder: (context, state) {
          return state.maybeWhen(
            leftUntilResendingCode: (duration) => Padding(
              padding: const EdgeInsets.all(paddingSmall),
              child: Text(
                '${loc.canResendCode}\n${duration.toFormattedString()}',
                style: theme.textTheme.bodyText2!.copyWith(color: colorDarkBlue),
                textAlign: TextAlign.center,
              ),
            ),
            orElse: () => UnderlinedText(
              text: '${loc.resendCode}',
              onClick: () {
                successRegisterCubit.resendCode();
              },
            ),
          );
        },
      ),
      verticalSpacer(size.height * .2),
      GreenButton(
        onPressed: () => _trySaveAndCheckCode(context),
        title: loc.submit,
      ),
      verticalSpacer(spaceSmall),
      UnderlinedText(
        text: loc.backToAuth,
        onClick: () => Navigator.pop(context),
      ),
    ];
  }

  void _trySaveAndCheckCode(BuildContext context) async {
    final successRegisterCubit = locator<SuccessfulRegistrationCubit>();
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    await successRegisterCubit.checkCode(successRegisterCubit.verificationCode!);
  }

  void _tryCheckCode(BuildContext context, String code) async {
    final successRegisterCubit = locator<SuccessfulRegistrationCubit>();
    if (!_formKey.currentState!.validate()) {
      return;
    }
    await successRegisterCubit.checkCode(successRegisterCubit.verificationCode!);
  }
}

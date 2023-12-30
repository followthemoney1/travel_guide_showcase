import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/recovery_password/cubit/recovery_password_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/custom_text_field.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/underlined_text.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class RecoveryPasswordScreen extends StatefulWidget {
  RecoveryPasswordScreen({Key? key}) : super(key: key);

  @override
  _RecoveryPasswordScreenState createState() => _RecoveryPasswordScreenState();
}

class _RecoveryPasswordScreenState extends State<RecoveryPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late RecoveryPasswordCubit cubit;

  @override
  void initState() {
    cubit = locator<RecoveryPasswordCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    var size = MediaQuery.of(mainContext).size;
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          )),
          child: BlocBuilder<RecoveryPasswordCubit, RecoveryPasswordState>(
            bloc: cubit,
            builder: (context, state) {
              return state.when(
                inital: () => _buildInitial(mainContext, loc, theme, size),
                loading: () => EndlessProgress(),
                sentSms: () => _buildSentSms(mainContext, loc, theme, size),
                error: (message) {
                  composeRedMessage(message.localizedMessage(mainContext)).show(mainContext);
                  return _buildInitial(mainContext, loc, theme, size);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildInitial(BuildContext mainContext, MLoc loc, ThemeData theme, Size size) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacer(size.height * .15),
            Image.asset(
              Images.logoLong,
              width: size.width * .45,
            ),
            verticalSpacer(spaceDefault),
            AutoSizeText(
              loc.recoveryPassword,
              minFontSize: minFontSize,
              maxFontSize: maxFontSize,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: theme.textTheme.headline4,
            ),
            verticalSpacer(spaceDefault),
            _buildEmailInput(mainContext, loc, theme, size),
          ],
        ),
      ),
    );
  }

  Widget _buildSentSms(BuildContext context, MLoc loc, ThemeData theme, Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          loc.sendEmailWithPassword,
          minFontSize: minFontSize,
          maxFontSize: maxFontSize,
          maxLines: 3,
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        verticalSpacer(spaceBig),
        GreenButton(
          onPressed: () {
            Navigator.pop(context);
            cubit.initialState();
          },
          title: loc.backToAuth,
        ),
        verticalSpacer(spaceSmall),
      ],
    );
  }

  Widget _buildEmailInput(BuildContext context, MLoc loc, ThemeData theme, Size size) {
    return Column(
      children: [
        AutoSizeText(
          loc.enterPhoneForRecovery,
          maxLines: 3,
          maxFontSize: maxFontSize,
          minFontSize: minFontSize,
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.justify,
        ),
        verticalSpacer(spaceDefault),
        CustomTextField(
          validator: (String? value) {
            if (value!.isEmpty) {
              return loc.emailRequired;
            }
            if (!emailRegExp.hasMatch(value)) {
              return loc.wrongEmail;
            }
            return null;
          },
          // autofocus: true,
          labelText: loc.email,
          hintText: loc.enterEmail,
          inputType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          onSaved: (String? email) {
            cubit.email = email;
          },
        ),
        verticalSpacer(spaceBig),
        GreenButton(onPressed: () => tryToVerify(cubit), title: loc.restore),
        verticalSpacer(spaceSmall),
        UnderlinedText(
          text: loc.backToAuth,
          onClick: () => Navigator.pop(context),
        ),
      ],
    );
  }

  void tryToVerify(RecoveryPasswordCubit cubit) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    await cubit.sendVerificationCode();
  }
}

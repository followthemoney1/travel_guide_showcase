import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/profile/edit_data/cubit/edit_data_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/custom_text_field.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/text_field_password.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../theme.dart';

class EditDataScreen extends StatefulWidget {
  @override
  _EditDataScreenState createState() => _EditDataScreenState();
}

class _EditDataScreenState extends State<EditDataScreen> {
  final GlobalKey<FormState> _editDataFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordOneController = TextEditingController();
  final TextEditingController _passwordTwoController = TextEditingController();
  final TextEditingController _oldPasswordController = TextEditingController();

  final cubit = locator<EditDataCubit>();

  @override
  void initState() {
    cubit.initialization();
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
        appBar: DefaultAppBar(title: loc.editData, actions: [
          IconButton(
            icon: ImageIcon(AssetImage(Images.save)),
            onPressed: () => _editData(),
          )
        ]),
        body: Material(
            child: Ink(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(Images.cloudsBackground),
                  fit: BoxFit.fill,
                )),
                child: BlocConsumer<EditDataCubit, EditDataState>(
                  bloc: cubit,
                  listener: (context, state) {
                    state.maybeWhen(
                        deleteSuccess: () async {
                          await composeRedMessage(loc.accountDeleted).show(context);
                          await Future.delayed(Duration(seconds: 1));
                          _goToTheAuthorization(context);
                        },
                        subscribeSuccess: () =>
                            composeGreenMessage(cubit.subscribed! ? loc.successfullyUnsubscribed : loc.successfullySubscribed).show(context),
                        editError: (ErrorResponse message) => composeRedMessage(message.localizedMessage(context)).show(context),
                        editSuccess: () => composeGreenMessage(loc.profileEditSuccess).show(context),
                        noNetworkConnection: () => composeRedMessage(loc.noNetworkConnection).show(context),
                        orElse: () {});
                  },
                  buildWhen: (previous, current) {
                    return current.maybeWhen(
                      noNetworkConnection: () => false,
                      deleteSuccess: () => true,
                      editError: (message) => true,
                      editProcess: () => true,
                      editSuccess: () => true,
                      initial: () => true,
                      loadedSubscription: () => true,
                      subscribeSuccess: () => true,
                      orElse: () => true,
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      initial: () {
                        _nameController.text = cubit.user!.username;
                        _surnameController.text = cubit.user!.surname;
                        _emailController.text = cubit.user!.email;
                        return _initContent(theme, loc, context);
                      },
                      editProcess: () => EndlessProgress(),
                      deleteSuccess: () => _initContent(theme, loc, context),
                      editError: (ErrorResponse message) => MapoErrorWidget(message: message),
                      subscribeSuccess: () => _initContent(theme, loc, context),
                      editSuccess: () => _initContent(theme, loc, context),
                      loadedSubscription: () {
                        return _initContent(theme, loc, context);
                      },
                      noNetworkConnection: () => _initContent(theme, loc, context),
                      orElse: () => _initContent(theme, loc, context),
                    );
                  },
                ))));
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(spaceDefault),
      child: SingleChildScrollView(
        child: Form(
            key: _editDataFormKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(loc.personalData, style: theme.textTheme.headline6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: CustomTextField(
                  controller: _nameController,
                  inputFormatters: [FilteringTextInputFormatter.deny(specialCharsRegExp)],
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.nameRequired;
                    }
                    return null;
                  },
                  labelText: loc.name,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: CustomTextField(
                  controller: _surnameController,
                  inputFormatters: [FilteringTextInputFormatter.deny(specialCharsRegExp)],
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.surnameRequired;
                    }
                    return null;
                  },
                  labelText: loc.surname,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: CustomTextField(
                  controller: _emailController,
                  labelText: loc.email,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return loc.emailRequired;
                    }
                    if (!emailRegExp.hasMatch(value)) {
                      return loc.wrongEmail;
                    }
                    return null;
                  },
                  inputType: TextInputType.emailAddress,
                ),
              ),
              verticalSpacer(spaceDefault),
              Text(loc.safety, style: theme.textTheme.headline6),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: TextFieldPassword(
                    controller: _oldPasswordController,
                    labelText: loc.oldPassword,
                    hintText: loc.enterOldPassword,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        if (value.length < 8) {
                          return loc.passwordTooShort;
                        }
                      }
                      return null;
                    },
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    onFieldSubmited: (value) => _fieldFocusChange(context)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: TextFieldPassword(
                    controller: _passwordOneController,
                    labelText: loc.newPassword,
                    hintText: loc.enterPassword,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        if (_oldPasswordController.value.text.isEmpty) {
                          return loc.enterOldPass;
                        }
                        if (value.length < 8) {
                          return loc.passwordTooShort;
                        }
                        if (value != _passwordTwoController.value.text) {
                          return loc.passwordsDontMatch;
                        }
                      }
                      return null;
                    },
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    onFieldSubmited: (value) => _fieldFocusChange(context)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: buttonCornersRadius),
                child: TextFieldPassword(
                    controller: _passwordTwoController,
                    labelText: loc.confirmNewPassword,
                    hintText: loc.enterPassword,
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        if (_oldPasswordController.value.text.isEmpty) {
                          return loc.enterOldPass;
                        }
                        if (value.length < 8) {
                          return loc.passwordTooShort;
                        }
                        if (value != _passwordOneController.value.text) {
                          return loc.passwordsDontMatch;
                        }
                      }
                      return null;
                    },
                    autofocus: true,
                    textInputAction: TextInputAction.done,
                    onFieldSubmited: (value) => _fieldFocusChange(context)),
              ),
              verticalSpacer(spaceDefault),
              cubit.subscribed == null
                  ? SizedBox.shrink()
                  : TextButton(
                      onPressed: () => cubit.subscribeToTheNewsletter(),
                      child: Text(cubit.subscribed! ? loc.subscribeToTheNewsletter.toUpperCase() : loc.unsubscribeFromTheNewsletter.toUpperCase(),
                          style: theme.textTheme.button!.apply(color: colorDarkBlue))),
              TextButton(
                  onPressed: () => onDeleteProfilePressed(loc),
                  child: Text(
                    loc.deleteProfile,
                    style: theme.textTheme.bodyText1!.apply(color: colorRed),
                  ))
            ])),
      ),
    );
  }

  void _fieldFocusChange(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }

  void _goToTheAuthorization(BuildContext context) {
    context.router.root.pushAndPopUntil(
      AuthorizationScreenRoute(),
      predicate: (Route<dynamic> route) {
        return false;
      },
    );
  }

  void _editData() {
    if (!_editDataFormKey.currentState!.validate()) {
      return;
    }
    _editDataFormKey.currentState!.save();
    cubit.editProfile(
      email: _emailController.text,
      surname: _surnameController.text,
      name: _nameController.text,
      oldPassword: _oldPasswordController.text,
      password: _passwordOneController.text,
      confirmedPassword: _passwordTwoController.text,
    );
  }

  void onDeleteProfilePressed(MLoc loc) {
    showDialog(
      context: context,
      builder: (context) => TextDialog(
        title: loc.deleteProfile,
        content: loc.deleteProfileContent,
        btnOkText: loc.ok,
        withCancel: true,
        onOk: () => cubit.deleteProfile(),
      ),
    );
  }
}

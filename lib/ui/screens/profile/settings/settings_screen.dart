import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/profile/settings/cubit/settings_screen_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/mapo_icon_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/text_dialog.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../../theme.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final SettingsScreenCubit _settingsScreenCubit = locator<SettingsScreenCubit>();

  bool enablePushNotification = false;
  bool enableAudioCache = true;

  Locale? dropdownValue;
  Map<String, Locale> items = {};

  @override
  void initState() {
    super.initState();
    LC.lc.forEach((element) {
      var l = Locale(element);
      items[FullLang.getFullName(element, nativeName: true)] = l;
    });
    // dropdownValue = await MLoc.getAppLanguage() ;
    _getDropDownValue();
  }

  void _getDropDownValue() async {
    var currentLanguage = await MLoc.getAppLanguage();

    setState(() {
      dropdownValue = Locale(currentLanguage);
    });
    // dropdownValue = Locale(s);
    // print(s + '123123');
  }

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.settings),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: BlocListener<SettingsScreenCubit, SettingsScreenState>(
            bloc: _settingsScreenCubit,
            listener: (BuildContext context, state) {
              state.maybeWhen(
                loading: () {
                  composeGreenMessage(loc.cacheIsRemoving).show(context);
                },
                cacheCleared: () {
                  composeGreenMessage(loc.cacheHasRemoved).show(context);
                },
                orElse: () {},
              );
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: paddingSmall),
                  child: DropdownButton<Locale>(
                    isExpanded: true,
                    style: Theme.of(context).textTheme.bodyText2!.apply(color: colorNavyBlue),
                    items: items.entries.map((element) {
                      final k = element.key;
                      final v = element.value;
                      return DropdownMenuItem<Locale>(
                        value: v,
                        child: Text(k.toString()),
                      );
                    }).toList(),
                    value: dropdownValue,
                    hint: Text(''),
                    onChanged: (Locale? selectValue) {
                      setState(() {
                        dropdownValue = selectValue!;
                      });
                      _settingsScreenCubit.changeLanguage(selectValue!.languageCode);
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                    ),
                    underline: Container(),
                  ),
                ),
                Divider(
                  height: 1,
                  color: colorNavyBlue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        loc.enablePushNotifications,
                        maxFontSize: maxFontSize,
                        minFontSize: minFontSize,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText2!.apply(color: colorDarkBlue),
                      ),
                    ),
                    // enablePushNotification
                    Flexible(
                      flex: 0,
                      child: Switch.adaptive(
                        activeColor: colorGreenGradientEnd,
                        activeTrackColor: colorNud,
                        inactiveTrackColor: colorNud,
                        value: enablePushNotification,
                        onChanged: (s) {
                          setState(() {
                            enablePushNotification = s;
                          });
                          _settingsScreenCubit.enablePushNotification(s);
                        },
                      ),
                    )
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Flexible(
                //       child: AutoSizeText(
                //         loc.cacheAudioTour,
                //         maxFontSize: maxFontSize,
                //         minFontSize: minFontSize,
                //         maxLines: 2,
                //         style: Theme.of(context).textTheme.bodyText2!.apply(color: colorDarkBlue),
                //       ),
                //     ),
                //     Flexible(
                //       flex: 0,
                //       child: Switch.adaptive(
                //         activeColor: colorGreenGradientEnd,
                //         activeTrackColor: colorNud,
                //         inactiveTrackColor: colorNud,
                //         value: enableAudioCache,
                //         onChanged: (s) {
                //           setState(() {
                //             enableAudioCache = s;
                //           });
                //           _settingsScreenCubit.enableAudioCache(s);
                //         },
                //       ),
                //     )
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Flexible(
                //       child: Text(
                //         loc.clearApplicationCache,
                //         maxLines: 2,
                //         style: Theme.of(context).textTheme.bodyText2!.apply(color: colorDarkBlue),
                //       ),
                //     ),
                //     MapoIconButton(
                //       imagePath: Images.trashClear,
                //       onTap: _showClearCacheDialog,
                //       color: colorRed,
                //       padding: paddingSuperPuperSmall,
                //       size: iconSize,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showClearCacheDialog() {
    var loc = MLoc.of(context);
    showDialog(
      context: context,
      builder: (context) => TextDialog(
        title: loc.clearApplicationCache,
        icon: Icon(
          Icons.warning_rounded,
          size: iconSize,
          color: colorRed,
        ),
        content: loc.clearCacheContent,
        withCancel: true,
        btnOkText: loc.mContinue,
        onOk: _settingsScreenCubit.clearCache,
      ),
    );
  }
}

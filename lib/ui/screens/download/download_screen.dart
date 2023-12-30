import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/download_info/tour_language_info.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';
import 'cubit/download_cubit.dart';

class DownloadScreen extends StatefulWidget {
  final Tour tour;

  const DownloadScreen({Key? key, required this.tour}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  DownloadCubit cubit = locator<DownloadCubit>();
  TourLanguageInfo? _radioValue;

  @override
  void initState() {
    super.initState();
    cubit.tourId = widget.tour.id.toString();
  }

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.chooseLanguage),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: BlocConsumer<DownloadCubit, DownloadState>(
              bloc: cubit,
              listener: (context, state) {
                state.maybeWhen(
                  error: (message) => composeRedMessage(message.localizedMessage(context)).show(context),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.when(
                    initial: () => _initContent(theme, loc, context),
                    error: (ErrorResponse message) => _initContent(theme, loc, context),
                    loadedLanguages: (Map<TourLanguageInfo, bool> tourLanguages) => _initContent(
                          theme,
                          loc,
                          context,
                          languages: tourLanguages,
                        ),
                    loading: () => EndlessProgress());
              }),
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context, {Map<TourLanguageInfo, bool>? languages}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spaceDefault, vertical: spaceSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(loc.chooseLanguageMessage),
          SizedBox(height: horizontalSpace),
          ..._getCountryList(loc, languages),
          Spacer(flex: 8),
          GreenButton(
              onPressed: () async {
                await cubit.downloadTour(_radioValue!);
                await context.router.pop(true);
              },
              title: loc.choose,
              btnHeight: greenButtonHeight),
          Spacer()
        ],
      ),
    );
  }

  List<Widget> _getCountryList(MLoc loc, Map<TourLanguageInfo, bool>? languages) {
    if (languages != null) {
      if (languages.values.contains(true)) {
        return languages.entries.map((e) => _getCountryTile(loc, e.key, isFolderExist: e.value)).toList();
      } else {
        return languages.keys.map((e) => _getCountryTile(loc, e)).toList();
      }
    } else {
      return [SizedBox.shrink()];
    }
  }

  Widget _getCountryTile(MLoc loc, TourLanguageInfo tourLanguageInfo, {bool? isFolderExist}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_radioValue != tourLanguageInfo) {
            _radioValue = tourLanguageInfo;
          } else {
            _radioValue = null;
          }
        });
      },
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: spaceSuperSmall),
              child: _radioValue == tourLanguageInfo ? Icon(Icons.radio_button_checked, color: iconGreen) : Icon(Icons.radio_button_off, color: colorNavyBlue)),
          SizedBox(width: spaceSmall),
          Text(FullLang.getFullName(tourLanguageInfo.language, nativeName: true), style: Theme.of(context).textTheme.bodyText2!.copyWith(color: colorDarkBlue)),
          Spacer(),
          ImageIcon(
            AssetImage(Images.download),
            color: _radioValue == tourLanguageInfo ? iconGreen : colorNavyBlue,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
            child: Container(
                width: spaceDefaultDoubled,
                child: AutoSizeText(
                  '${tourLanguageInfo.size} Mb',
                  maxLines: 1,
                  minFontSize: minFontSize,
                  style: Theme.of(context).textTheme.overline,
                )),
          ),
          isFolderExist != null
              ? IconButton(
                  icon: Icon(Icons.delete_outline, color: isFolderExist ? colorRed : Colors.transparent),
                  onPressed: () async {
                    await cubit.removeAudioTour(tourLanguageInfo);
                    setState(() {
                      cubit.tourLanguagesMap.update(tourLanguageInfo, (value) => false);
                    });
                  },
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}

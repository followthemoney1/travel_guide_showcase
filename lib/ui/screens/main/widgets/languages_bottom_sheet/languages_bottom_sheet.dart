import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/items/filter_language_item.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'cubit/languages_bottom_sheet_cubit.dart';

class LanguagesBottomSheet extends StatefulWidget {
  final Function()? onUpdate;

  LanguagesBottomSheet({
    Key? key,
    this.onUpdate,
  }) : super(key: key);

  @override
  _LanguagesBottomSheetState createState() => _LanguagesBottomSheetState();
}

class _LanguagesBottomSheetState extends State<LanguagesBottomSheet> {
  LanguagesBottomSheetCubit cubit = locator<LanguagesBottomSheetCubit>();
  FilterCubit filterCubit = locator<FilterCubit>();

  @override
  void initState() {
    super.initState();
    cubit.getAllLanguages();
  }

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    var theme = Theme.of(context);

    return FractionallySizedBox(
      heightFactor: .84,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(itemCornersRadiusBig),
            topRight: Radius.circular(itemCornersRadiusBig),
          ),
          color: colorWhite,
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 5,
                width: 100,
                margin: EdgeInsets.all(paddingSmall),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: colorGrey.withOpacity(.2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: AutoSizeText(
                loc.onWhatLangToListen,
                maxLines: 2,
                style: theme.textTheme.headline6!.apply(fontSizeFactor: .8),
              ),
            ),
            verticalSpacer(spaceSmall),
            Divider(
              indent: paddingDefault,
              endIndent: paddingDefault,
              thickness: 1,
              color: colorGrey.withOpacity(.5),
            ),
            verticalSpacer(spaceSmall),
            Expanded(
              child: BlocBuilder<LanguagesBottomSheetCubit, LanguagesBottomSheetState>(
                bloc: cubit,
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: cubit.languages
                              .map(
                                (lang) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: paddingSmall,
                                  ),
                                  child: FilterLanguageItem(
                                    language: lang,
                                    filterCubit: filterCubit,
                                    onChanged: () => widget.onUpdate!(),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      );
                    },
                    loading: () => EndlessProgress(),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: colorWhite,
                boxShadow: [
                  defaultShadow(),
                ],
              ),
              padding: EdgeInsets.symmetric(
                horizontal: paddingDefault,
                vertical: paddingSuperSmall,
              ),
              child: GreenButton(
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                  title: loc.choose),
            ),
          ],
        ),
      ),
    );
  }
}

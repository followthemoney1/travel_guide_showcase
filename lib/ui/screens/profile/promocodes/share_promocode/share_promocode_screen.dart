import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:mapo_travel_guide/ui/screens/profile/promocodes/cubit/promocodes_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:share/share.dart';

import '../../../../theme.dart';

class SharePromocodeScreen extends StatelessWidget {
  final PromocodesCubit cubit = PromocodesCubit(locator<ProfileRepository>());

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);
    return Scaffold(
      appBar: DefaultAppBar(title: loc.sharePromocodes),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: BlocConsumer<PromocodesCubit, PromocodesState>(
              bloc: cubit,
              listener: (context, state) {
                state.maybeWhen(
                  promocodesError: (error) => composeRedMessage(error.localizedMessage(context)).show(context),
                  orElse: () => _initContent(theme, loc, context),
                );
              },
              builder: (context, state) {
                return state.when(
                  initial: () => _initContent(theme, loc, context),
                  promocodesLoaded: (List<Tour> promocodes) => _promocodesLoaded(theme, loc, context, promocodes),
                  promocodesLoading: () => EndlessProgress(),
                  promocodesError: (ErrorResponse message) => _initContent(theme, loc, context),
                );
              }),
        ),
      ),
    );
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(spaceDefault, spaceDefault, spaceDefault * 2, spaceDefault),
      child: Text(loc.sharePromocodeText),
    );
  }

  Widget _promocodesLoaded(ThemeData theme, MLoc loc, BuildContext context, List<Tour>? promocodes) {
    List<String> promocodesId;
    if (promocodes != null) {
      promocodesId = promocodes.map((e) => e.id.toString()).toList();
    } else {
      promocodesId = [];
    }
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(spaceDefault, spaceDefault, spaceDefault * 2, spaceDefault),
          child: Text(loc.sharePromocodeText),
        ),
        ...promocodesId.map((e) => _getPromocodeRow(context, e)).toList()
      ]),
    );
  }

  Widget _getPromocodeRow(BuildContext context, String promocode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spaceDefault, vertical: 5),
      child: Row(children: [
        Text(promocode, style: Theme.of(context).textTheme.subtitle2!.apply(color: colorDarkBlue)),
        Spacer(),
        InkWell(
            child: ImageIcon(AssetImage(Images.file_copy)),
            onTap: () {
              Clipboard.setData(ClipboardData(text: promocode));
            }),
        horizontalSpacer(horizontalSpace),
        InkWell(child: ImageIcon(AssetImage(Images.share)), onTap: () => Share.share(promocode)),
      ]),
    );
  }
}

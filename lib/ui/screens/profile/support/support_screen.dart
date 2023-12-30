import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_html/flutter_html.dart';

import 'cubit/support_cubit.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cubit = locator<SupportCubit>();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _cubit.initDeepLinkData(context));

    var loc = MLoc.of(context);
    return Scaffold(
      appBar: DefaultAppBar(
        title: loc.support,
        actions: [
          IconButton(
              icon: Image.asset(
                Images.share,
                color: buttonTextColor,
                height: iconSize,
                width: iconSize,
              ),
              onPressed: () => _cubit.shareLink())
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.cloudsBackground), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(paddingDefault),
            child: BlocBuilder(
              bloc: _cubit,
              builder: (BuildContext context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Html(
                      data: loc.dearClients,
                      onLinkTap: (url, _, __, ___) => launch(url!),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

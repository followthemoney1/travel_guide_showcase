import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  final bool showTermsOfUse;
  const TermsAndConditionsScreen({Key? key, this.showTermsOfUse = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
   
    return Scaffold(
      appBar: DefaultAppBar(title: showTermsOfUse ? loc.termsOfUse : loc.privacyPolicy),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(paddingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Html(
                  data: showTermsOfUse ? loc.termsOfUseContent : loc.privacyPolicyContent,
                  onLinkTap: (url, _, __, ___) => launch(url!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(loc.about)),
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
            padding: const EdgeInsets.all(paddingDefault),
            child: Text(
              loc.aboutText,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText2!.apply(
                    color: colorNavyBlue,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

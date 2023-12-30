import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class SearchTextField extends StatelessWidget {
  final Function()? onTap;

  const SearchTextField({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        onTap: onTap,
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            hintText: loc.whereGo,
            hintStyle: Theme.of(context).textTheme.bodyText2!.apply(color: colorNavyBlue).copyWith(fontWeight: FontWeight.w400),
            suffixIcon: Icon(
              Icons.search,
              color: colorDarkBlue,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorGreenGradientEnd,
              ),
              borderRadius: BorderRadius.circular(
                buttonCornersRadius,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorGreenGradientEnd,
              ),
              borderRadius: BorderRadius.circular(
                buttonCornersRadius,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: colorGreenGradientEnd,
              ),
              borderRadius: BorderRadius.circular(
                buttonCornersRadius,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/rating_dialog.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingRow extends StatelessWidget {
  final double rating;
  final bool isBought;
  final bool paidAtLeastOnce;
  final String dialogTitle;
  final String dialogContent;
  final Function(double rate)? onRate;
  final bool canRate;
  final FlutterSecureStorage _securedStorage = locator<FlutterSecureStorage>();

  RatingRow({
    Key? key,
    required this.rating,
    this.onRate,
    this.isBought = true,
    required this.dialogTitle,
    required this.dialogContent,
    this.canRate = true,
    this.paidAtLeastOnce = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: FutureBuilder(
          future: _checkToken(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return InkWell(
                borderRadius: BorderRadius.circular(buttonCornersRadius),
                onTap: snapshot.data && canRate ? () => openRatingDialog(context) : null,
                child: Column(
                  children: [
                    Divider(color: colorNavyBlue),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: spaceSuperSmall),
                      child: Row(
                        children: [
                          SmoothStarRating(
                            color: colorYellow,
                            rating: rating,
                            // isReadOnly: true,
                            borderColor: colorYellow,
                            size: size.height * .03,
                            spacing: -2.5,
                          ),
                          horizontalSpacer(8),
                          Text(
                            rating.toStringAsFixed(1),
                            style: theme.textTheme.bodyText1,
                          ),
                          Spacer(),
                          snapshot.data
                              ? Image.asset(
                                  Images.arrow_right,
                                  width: iconSizeSmall,
                                )
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                    Divider(color: colorNavyBlue),
                  ],
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          }),
    );
  }

  void openRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => RatingDialog(
        title: dialogTitle,
        content: dialogContent,
        onRate: (rate) {
          onRate!(rate);
        },
      ),
      // builder: (context) => RatingDialog(
      //   icon: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(300),
      //       child: AspectRatio(
      //         aspectRatio: 1,
      //         child: CachedNetworkImage(
      //           imageUrl: image,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //   ),
      //   title: loc.guideRating,
      //   description: loc.rateTheGuide,
      //   onSubmitPressed: (rate) {
      //       onRate(rate);
      //   },
      //   submitButton: loc.submit,
      //   accentColor: colorYellow,
      // ),
    );
  }

  Future<bool> _checkToken() async {
    var token = await _securedStorage.read(key: SecuredStorage.token);
    return token != null && (isBought || paidAtLeastOnce);
  }
}

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/payment/cubit/payment_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/borderless_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/green_square_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/guide_button.dart';
import 'package:mapo_travel_guide/ui/shared/buttons/social_button.dart';
import 'package:mapo_travel_guide/ui/shared/custom_text_field.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:mapo_travel_guide/util/utils.dart';

import '../../theme.dart';

class PaymentScreen extends StatefulWidget {
  final Tour tour;

  const PaymentScreen({Key? key, required this.tour}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final PaymentCubit cubit = locator<PaymentCubit>();
  final TextEditingController _promocodeController = TextEditingController();

  bool promoCodeCheckingProgress = false;
  String? promoCodeError;

  @override
  void initState() {
    super.initState();
    cubit.tour = widget.tour;
    cubit.subscribeToPayments();
    cubit.clearTransactionsIos();
    //Customer decided to disable this logic
    //cubit.checkIfItsFirstBuy();
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext mainContext) {
    var theme = Theme.of(mainContext);
    var size = MediaQuery.of(context).size;
    var loc = MLoc.of(mainContext);
    return Scaffold(
        appBar: cubit.state.maybeWhen(
          initial: () => DefaultAppBar(title: loc.pay),
          postPayment: (paymentResult) => paymentResult
              ? DefaultAppBar(
                  title: loc.paymentSuccessful,
                  leading: IconButton(
                    onPressed: () => _goToTourScreen(context, widget.tour.id.toString()),
                    icon: Icon(Icons.arrow_back),
                  ),
                )
              : AppBar(backgroundColor: colorRed, title: Text(loc.paymentError)),
          orElse: () => DefaultAppBar(title: loc.pay),
        ),
        body: Material(
          child: Ink(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(Images.cloudsBackground),
              fit: BoxFit.fill,
            )),
            child: BlocConsumer<PaymentCubit, PaymentState>(
                bloc: cubit,
                listener: (context, state) {
                  state.maybeWhen(
                    postPayment: (_) => setState(() {}),
                    nonAuthorized: () => mainContext.router.root.push(AuthorizationScreenRoute()),
                    promoCodeChecking: () => setState(() {
                      promoCodeCheckingProgress = true;
                      promoCodeError = null;
                    }),
                    promoCodeError: () {
                      promoCodeCheckingProgress = false;
                      promoCodeError = loc.wrongPromocode;
                      setState(() {});
                    },
                    promoCodeSuccess: () {
                      promoCodeCheckingProgress = false;
                      setState(() {});
                    }, orElse: () {  },
                  );
                },
                buildWhen: (previous, current) {
                  return current.maybeWhen(
                    initial: () => true,
                    promoCodeSuccess: () => true,
                    loading: () => true,
                    nonAuthorized: () => true,
                    postPayment: (val) => true,
                    orElse: () => false,
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () => _initContent(theme, loc, context, size),
                    nonAuthorized: () => _initContent(theme, loc, context, size),
                    postPayment: (bool paymentResult) => _resultContent(theme, loc, context, paymentResult),
                    loading: () => EndlessProgress(),
                    promoCodeSuccess: () => _initContent(theme, loc, context, size),
                    orElse: () => _initContent(theme, loc, context, size),
                  );
                }),
          ),
        ));
  }

  Widget _initContent(ThemeData theme, MLoc loc, BuildContext context, Size size) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: spaceSmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Row(children: [
                ImageIcon(
                  CachedNetworkImageProvider(widget.tour.typeIcon),
                  color: colorNavyBlue,
                  size: iconSizeSmall,
                ),
                horizontalSpacer(horizontalSpace),
                Text(widget.tour.type, style: Theme.of(context).textTheme.caption),
              ]),
            ),
            verticalSpacer(spaceSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.tour.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpacer(spaceSmall),
            GuideButton(
              onTap: _goToTheGuide,
              guideImage: cubit.tour.guide!.imageUrl,
              guideName: cubit.tour.guide!.name,
              guideSurname: cubit.tour.guide!.surname,
            ),
            Divider(
              color: colorNavyBlue.withOpacity(0.2),
              thickness: 1.5,
              indent: paddingDefault,
              endIndent: paddingDefault,
            ),
            /* if (/*!cubit.isFirstBuy && */) */ verticalSpacer(spaceSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      loc.enterPromocode,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
            /* if (/*!cubit.isFirstBuy && */ ) */ verticalSpacer(spaceDefaultDoubled),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        controller: _promocodeController,
                        hintText: loc.promocode,
                        textTextStyle: theme.textTheme.headline5!.apply(color: promoCodeError != null ? colorRed : colorDarkBlue, fontSizeFactor: .7),
                        // errorText: promoCodeError,
                        hintTextStyle: theme.textTheme.headline6!.apply(fontSizeFactor: .7, color: colorNavyBlue),
                        textInputAction: TextInputAction.done,
                        onFieldSubmited: (value) => cubit.checkPromoCode(value!),
                        onChanged: (value) {
                          if (value!.isEmpty) {
                            setState(() {
                              promoCodeError = null;
                            });
                          }
                          cubit.promocodeChanged(value);
                        }),
                  ),
                  horizontalSpacer(spaceSmall),
                  if (promoCodeCheckingProgress)
                    Container(
                      height: iconSize,
                      width: iconSize,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else
                    BlocBuilder<PaymentCubit, PaymentState>(
                      bloc: cubit,
                      buildWhen: (previous, current) {
                        return current.maybeWhen(
                          promoCodeChanged: (value) => true,
                          initial: () => true,
                          promoCodeError: () => true,
                          promoCodeSuccess: () => true,
                          orElse: () => false,
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          initial: () => _greenButton(''),
                          promoCodeChanged: (value) => _greenButton(value),
                          promoCodeSuccess: () => _greenButton('.'),
                          promoCodeError: () => _greenButton('.'),
                          orElse: () => SizedBox.shrink(),
                        );
                      },
                    ),
                ],
              ),
            ),
            verticalSpacer(spaceDefaultDoubled),

            if (promoCodeError != null) ..._promocodeError(theme),

            BlocBuilder<PaymentCubit, PaymentState>(
              bloc: cubit,
              builder: (context, state) {
                return state.maybeWhen(
                  promoCodeSuccess: () => _promoCodeData(loc, theme),
                  orElse: () => SizedBox.shrink(),
                );
              },
            ),
            // if (cubit.isFirstBuy)
            //   Text(
            //     loc.firstBuyFree,
            //     style: theme.textTheme.subtitle2!.apply(color: colorRed),
            //   ),
            // if (promoCodeSubmitted)
            //   Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            //     child: Text(
            //       loc.promoCodeActivated,
            //       style: theme.textTheme.headline6!.apply(color: colorGreenGradientEnd),
            //     ),
            //   ),
            verticalSpacer(spaceDefault),
            /*cubit.isFirstBuy ||*/
            BlocBuilder<PaymentCubit, PaymentState>(
              bloc: cubit,
              builder: (context, state) {
                return state.maybeWhen(
                  promoCodeSuccess: () {
                    if (cubit.promoCodeData!.percentage == 100) {
                      return _getForFree(loc);
                    } else {
                      return _paymentZone(loc);
                    }
                  },
                  orElse: () => _paymentZone(loc),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _getForFree(MLoc loc) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
      child: GreenButton(
        title: loc.getForFree,
        onPressed: () => cubit.getForFree(
          tour: widget.tour,
          promoCode: _promocodeController.text,
        ),
      ),
    );
  }

  Widget _paymentZone(MLoc loc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          child: Text(
            loc.selectPaymentType,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        verticalSpacer(spaceDefault),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
          child: SocialButton(
            image: Platform.isAndroid ? Images.gPay : Images.applePay,
            name: '',
            onClick: () {
              setState(() {
                cubit.buy(promoCode: _promocodeController.text);
              });
            },
            // style: theme.textTheme.headline5.copyWith(
            //       color: Platform.isAndroid ? colorGreyBold : Colors.black,
            //       fontWeight: Platform.isAndroid ? FontWeight.w600 : FontWeight.w100,
            //     ),
          ),
        ),
      ],
    );
  }

  Widget _promoCodeData(MLoc loc, ThemeData theme) {
    var audioTourId = cubit.promoCodeData?.audioTour?.id ?? 0;
    if (cubit.promoCodeData?.audioTour == null || cubit.tour.id == audioTourId) {
      var toDate = convertPromocdeEndTimestampToDate(int.tryParse(cubit.promoCodeData!.endTermOfWork) ?? 0, loc);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Text(
              loc.properties,
              style: theme.textTheme.headline6!.apply(fontSizeFactor: .9),
            ),
          ),
          verticalSpacer(spaceSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Table(
              columnWidths: {0: FractionColumnWidth(.4)},
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: paddingSuperPuperSmall),
                      child: AutoSizeText(
                        loc.upTime,
                        maxLines: 2,
                        minFontSize: minFontSize,
                        maxFontSize: maxFontSize,
                        style: theme.textTheme.headline6!.apply(fontSizeFactor: .7),
                      ),
                    ),
                    AutoSizeText(
                      toDate,
                      maxLines: 2,
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyText2!.apply(fontSizeFactor: .9, color: colorDarkBlue),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: paddingSuperPuperSmall),
                      child: AutoSizeText(
                        loc.discountSize,
                        maxLines: 2,
                        minFontSize: minFontSize,
                        maxFontSize: maxFontSize,
                        style: theme.textTheme.headline6!.apply(fontSizeFactor: .7),
                      ),
                    ),
                    AutoSizeText(
                      cubit.promoCodeData!.percentage == 100 ? '${loc.freeTour} (${cubit.promoCodeData!.percentage}%)' : '${cubit.promoCodeData!.percentage}%',
                      maxLines: 2,
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyText2!.apply(fontSizeFactor: .9, color: colorDarkBlue),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: paddingSuperPuperSmall),
                      child: AutoSizeText(
                        loc.useQuantity,
                        maxLines: 2,
                        minFontSize: minFontSize,
                        maxFontSize: maxFontSize,
                        style: theme.textTheme.headline6!.apply(fontSizeFactor: .7),
                      ),
                    ),
                    AutoSizeText(
                      '${cubit.promoCodeData!.amountOfUses}',
                      maxLines: 2,
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyText2!.apply(fontSizeFactor: .9, color: colorDarkBlue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          verticalSpacer(spaceDefault),
          Divider(
            color: colorNavyBlue.withOpacity(0.2),
            thickness: 1.5,
            endIndent: paddingDefault,
            indent: paddingDefault,
          ),
          verticalSpacer(spaceDefault),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _error(loc.promocodeCantBeUsed, theme),
          verticalSpacer(spaceSmall),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Table(
              columnWidths: {0: FractionColumnWidth(.4)},
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: paddingSuperPuperSmall),
                      child: AutoSizeText(
                        loc.boundTo,
                        maxLines: 2,
                        minFontSize: minFontSize,
                        maxFontSize: maxFontSize,
                        style: theme.textTheme.headline6!.apply(fontSizeFactor: .7),
                      ),
                    ),
                    AutoSizeText(
                      cubit.promoCodeData?.audioTour?.name ?? '',
                      maxLines: 2,
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyText2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          verticalSpacer(spaceDefault),
          Divider(
            color: colorNavyBlue.withOpacity(0.2),
            thickness: 1.5,
            endIndent: paddingDefault,
            indent: paddingDefault,
          ),
          verticalSpacer(spaceDefault),
        ],
      );
    }
  }

  List<Widget> _promocodeError(ThemeData theme) {
    return [
      _error(promoCodeError!, theme),
      verticalSpacer(spaceDefault),
      Divider(
        color: colorNavyBlue.withOpacity(0.2),
        thickness: 1.5,
        endIndent: paddingDefault,
        indent: paddingDefault,
      ),
      verticalSpacer(spaceDefault),
    ];
  }

  Widget _error(String errorText, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
      child: Table(
        columnWidths: {0: FractionColumnWidth(.1), 1: FractionColumnWidth(.05)},
        children: [
          TableRow(
            children: [
              Icon(Icons.warning_rounded, color: colorRed),
              Container(),
              AutoSizeText(
                errorText,
                maxLines: 3,
                minFontSize: minFontSize,
                maxFontSize: maxFontSize,
                style: theme.textTheme.bodyText2!.apply(color: colorRed),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _greenButton(String value) {
    return GreenSquareButton(
      disabled: value.isEmpty,
      onPressed: () => cubit.checkPromoCode(value),
    );
  }

  Widget _resultContent(ThemeData theme, MLoc loc, BuildContext context, bool paymentResult) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spaceDefault, vertical: spaceSmall),
      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          ImageIcon(CachedNetworkImageProvider(widget.tour.typeIcon), color: colorNavyBlue, size: iconSizeSmall),
          horizontalSpacer(horizontalSpace),
          Text(widget.tour.type, style: Theme.of(context).textTheme.caption),
        ]),
        verticalSpacer(spaceSmall),
        Text(widget.tour.name, style: Theme.of(context).textTheme.headline6),
        verticalSpacer(spaceSmall),
        Row(children: [
          // CircleAvatar(backgroundImage: NetworkImage(widget.tour.guide.imageUrl), radius: 11),
          horizontalSpacer(horizontalSpace),
          Text(
            widget.tour.guide!.name,
            style: Theme.of(context).textTheme.caption!.apply(color: colorDarkBlue),
          ),
        ]),
        verticalSpacer(spaceSmall),
        Divider(color: colorNavyBlue.withOpacity(0.2), thickness: 1.5),
        verticalSpacer(spaceSmall),
        paymentResult
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: spaceSuperSmall),
                    child: Image.asset(
                      Images.greenTik,
                      width: 22,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      loc.paymentSuccessfulMessage,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: spaceSuperSmall),
                    child: ImageIcon(AssetImage(Images.warning), color: colorRed),
                  ),
                  Expanded(
                    child: Text(
                      loc.paymentErrorMessage,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: colorRed,
                          ),
                    ),
                  ),
                ],
              ),
        Spacer(),
        paymentResult
            ? GreenButton(
                onPressed: () => _goToDownloadScreen(context, widget.tour),
                title: loc.downloadAudioTourFiles,
                btnHeight: greenButtonHeight,
              )
            : GreenButton(
                onPressed: () {
                  setState(() {
                    cubit.tryAgain();
                  });
                },
                title: loc.tryAgain,
                btnHeight: greenButtonHeight),
        BorderlessButton(
          onPressed: () => _goToTourScreen(context, widget.tour.id.toString()),
          title: paymentResult ? loc.goToAudioTour : loc.backToAudioTour,
        ),
        /*BorderlessButton(
          onPressed: () => ExtendedNavigator.of(context).push(
            CatalogueRoutes.sightsListScreen,
            arguments: SightsListScreenArguments(
              city: City(id: 1, name: '2131'),
            ),
          ),
          title: paymentResult ? loc.backToCatalog : loc.goToCatalog,
        )*/
      ]),
    );
  }

  void _goToTheGuide() {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.push(MainGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.push(CatalogGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.push(ProfileGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.push(MyOrdersGuideScreen(
        cityName: '${cubit.tour.guide!.name} ${cubit.tour.guide!.surname}',
        guideId: cubit.tour.guide!.id.toString(),
      ));
    }
  }

  void _goToTourScreen(BuildContext context, String tourId) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.popUntil(
        (route) => route.settings.name == MainTourScreen.name,
      );
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.popUntil(
        (route) => route.settings.name == CatalogTourScreen.name,
      );
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.popUntil(
        (route) => route.settings.name == ProfileTourScreen.name,
      );
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.popUntil(
        (route) => route.settings.name == MyOrdersTourScreen.name,
      );
    }
  }

  void _goToDownloadScreen(BuildContext context, Tour tour) {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      navigator.popAndPush(MainDownloadScreen(
        tour: widget.tour,
      ));
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      navigator.popAndPush(CatalogDownloadScreen(
        tour: widget.tour,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      navigator.popAndPush(ProfileDownloadScreen(
        tour: widget.tour,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      navigator.popAndPush(MyOrdersDownloadScreen(
        tour: widget.tour,
      ));
    }
  }
}
import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/recommended_tours/cubit/recommended_tours_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/info_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item.dart';
import 'package:mapo_travel_guide/util/images.dart';

import '../../theme.dart';

class RecommendedToursScreen extends StatefulWidget {
  final City city;

  RecommendedToursScreen({Key? key, required this.city}) : super(key: key);

  @override
  _RecommendedToursScreenState createState() => _RecommendedToursScreenState();
}

class _RecommendedToursScreenState extends State<RecommendedToursScreen> {
  final _recommendedToursCubit = locator.get<RecommendedToursCubit>();

  var _wentToAnotherScreen = false;

  @override
  void initState() {
    super.initState();
    _recommendedToursCubit.cityId = widget.city.id!;
  }

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    return Scaffold(
      appBar: _buildAppBar(context, loc),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocConsumer<RecommendedToursCubit, RecommendedToursState>(
          bloc: _recommendedToursCubit,
          listenWhen: (previous, current) {
            return current.maybeWhen(
              showInfoDialog: (_, __, ___) => true,
              error: (error) => false,
              initial: (tours) => false,
              loading: () => false,
              orElse: () => false,
            );
          },
          listener: (context, state) {
            state.maybeWhen(
              showInfoDialog: (selectedByUser, intersection, difference) {
                var content;
                var btnOk = loc.ok;
                if (intersection.isEmpty) {
                  content = loc.noTourInYourCity;
                } else {
                  content = loc.noAllTourInYourCity.replaceFirst(
                    '&',
                    intersection.map((e) => e.name).toList().toString().replaceAll('[', '').replaceAll(']', ''),
                  );
                  btnOk = loc.see;
                }

                if (!intersection.containsAll(selectedByUser) && !_wentToAnotherScreen) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return InfoDialog(
                        title: loc.languageInfo,
                        content: content,
                        btnOkText: btnOk,
                        id: _recommendedToursCubit.identifier,
                        onOk: () => context.router.pop(),
                      );
                    },
                  );
                }
              },
              orElse: () {},
            );
          },
          buildWhen: (previous, current) {
            return current.maybeWhen(
              showInfoDialog: (_, __, ___) => false,
              error: (error) => true,
              initial: (tours) => true,
              loading: () => true,
              orElse: () => true,
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: (tours) => _buildInitial(context, loc, tours),
              loading: () => EndlessProgress(),
              error: (error) => _buildError(context, error),
              showInfoDialog: (_, __, ___) => _buildInitial(context, loc, []),
              orElse: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInitial(BuildContext context, MLoc loc, List<Tour> tours) {
    return FutureBuilder<Map<String, String>>(
        future: _recommendedToursCubit.prepareToursPrices(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: paddingDefault,
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    loc.recomTours,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                ...tours.map((tour) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: TourItem(
                      price: snapshot.data![Platform.isAndroid ? tour.googleProductId : tour.appleProductId]!,
                      showPrice: !(tour.paid),
                      onTap: () => _goToTheRecommendedTour(tour.id.toString(), tour.name, context),
                      tour: tour,
                    ),
                  );
                }).toList()
              ],
            );
          } else {
            return SizedBox.shrink();
          }
        });
  }

  void _goToTheRecommendedTour(String tourId, String tourName, BuildContext context) async {
    final navigator = context.router;
    if (navigator.routeData.name == MainScreenRouter.name) {
      _wentToAnotherScreen = true;
      await navigator.push(MainTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
      _wentToAnotherScreen = false;
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      _wentToAnotherScreen = true;
      await navigator.push(CatalogTourScreen(
        tourId: tourId,
        tourName: tourName,
      ));
      _wentToAnotherScreen = false;
    }
    _recommendedToursCubit.initContent();
  }

  Widget _buildError(BuildContext context, ErrorResponse message) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.warning,
            color: colorRed,
            size: 50,
          ),
          Text(
            message.localizedMessage(context),
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, MLoc loc) {
    return GradientAppBar(
      title: widget.city.name,
      onBackArrow: () => context.router.pop(),
      trailing: IconButton(
        icon: ImageIcon(
          AssetImage(Images.filter),
          size: 18,
        ),
        splashRadius: 25,
        color: colorWhite,
        onPressed: () => _goToFilterScreen(context, widget.city.id.toString()),
      ),
    );
  }

  void _goToFilterScreen(BuildContext context, String id) async {
    final navigator = context.router;
    var value;
    if (navigator.routeData.name == MainScreenRouter.name) {
      _wentToAnotherScreen = true;
      value = await navigator.push(MainFilterScreen(
        type: FilterType.toursByCityId,
        identifier: id,
      ));
      _wentToAnotherScreen = false;
    } else if (navigator.routeData.name == CatalogScreenRouter.name) {
      _wentToAnotherScreen = true;
      value = await navigator.push(CatalogFilterScreen(
        type: FilterType.toursByCityId,
        identifier: id,
      ));
      _wentToAnotherScreen = false;
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      _wentToAnotherScreen = true;
      value = await navigator.push(ProfileFilterScreen(
        type: FilterType.toursByCityId,
        identifier: id,
      ));
      _wentToAnotherScreen = false;
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      _wentToAnotherScreen = true;
      value = await navigator.push(MyOrdersFilterScreen(
        type: FilterType.toursByCityId,
        identifier: id,
      ));
      _wentToAnotherScreen = false;
    }
    if (value is FilterDto) {
      await _recommendedToursCubit.applyFilter(value);
    }
  }
}

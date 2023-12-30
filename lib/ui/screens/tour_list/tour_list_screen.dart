import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/data/dto/filter/filter_dto.dart';
import 'package:mapo_travel_guide/data/dto/guide/guide.dart';
import 'package:mapo_travel_guide/data/dto/sights/sights.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/tour_list/cubit/tour_list_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/dialogs/info_dialog.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/util/images.dart';

import '../../theme.dart';

class TourListScreen extends StatelessWidget {
  final City? city;
  final Sight? sight;
  final Guide? guide;
  final _tourListCubit = locator.get<TourListCubit>();

  TourListScreen({
    Key? key,
    this.city,
    this.sight,
    this.guide,
    required String categoryId,
  }) : super(key: key) {
    _tourListCubit.initContent(
      categoryId: categoryId,
      city: city!,
      sight: sight,
      guide: guide,
    );
  }

  @override
  Widget build(BuildContext mainContext) {
    final loc = MLoc.of(mainContext);
    return Stack(
      children: [
        Scaffold(
          appBar: _buildAppBar(mainContext, loc),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.cloudsBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: BlocBuilder<TourListCubit, TourListState>(
              bloc: _tourListCubit,
              buildWhen: (previous, current) => current.maybeWhen(
                showInfoDialog: (_, __, ___) => false,
                hideInfoDialog: () => false,
                error: (error) => true,
                initial: (tours) => true,
                loading: () => true,
                orElse: () => true,
              ),
              builder: (context, state) {
                return state.maybeWhen(
                  initial: (tours) => _buildInitial(context, loc, tours),
                  loading: () => EndlessProgress(),
                  error: (message) => MapoErrorWidget(message: message),
                  orElse: () => EndlessProgress(),
                );
              },
            ),
          ),
        ),
        infoDialog(loc),
      ],
    );
  }

  Widget infoDialog(MLoc loc) {
    return BlocBuilder<TourListCubit, TourListState>(
      bloc: _tourListCubit,
      builder: (context, state) {
        return state.maybeWhen(
          hideInfoDialog: () => SizedBox.shrink(),
          showInfoDialog: (selectedByUser, intersection, difference) {
            var content;
            var btnOk = loc.ok;
            if (city != null) {
              if (intersection.isEmpty) {
                content = loc.noTourInYourCity;
              } else {
                content = loc.noAllTourInYourCity.replaceFirst(
                  '&',
                  intersection
                      .map((e) => e.name)
                      .toList()
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                );
                btnOk = loc.see;
              }
            } else if (guide != null) {
              if (intersection.isEmpty) {
                content = loc.noToursWithGuide;
              } else {
                content = loc.noAllToursWithGuide.replaceFirst(
                  '&',
                  intersection
                      .map((e) => e.name)
                      .toList()
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                );
                btnOk = loc.see;
              }
            } else if (sight != null) {
              if (intersection.isEmpty) {
                content = loc.noToursWithSight;
              } else {
                content = loc.noAllToursWithSight.replaceFirst(
                  '&',
                  intersection
                      .map((e) => e.name)
                      .toList()
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                );
                btnOk = loc.see;
              }
            }

            if (!intersection.containsAll(selectedByUser)) {
              return Container(
                color: Colors.black54,
                child: Center(
                  child: InfoDialog(
                    title: loc.languageInfo,
                    content: content,
                    btnOkText: btnOk,
                    id: _tourListCubit.identifier,
                    onOk: () => _tourListCubit.hideInfo(),
                  ),
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildInitial(BuildContext context, MLoc loc, List<Tour> tours) {
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: paddingDefault,
      ),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: _tourListCubit.typesString.isNotEmpty ? 24.0 : 0),
          child: AutoSizeText(
            city != null
                ? _tourListCubit.typesString.isNotEmpty
                    ? '${loc.selectedCateg}\n${_tourListCubit.typesString}'
                    : ''
                : sight != null
                    ? loc.includedInSuchTours
                    : loc.allGuideAudioTours,
            style: Theme.of(context).textTheme.headline6,
            minFontSize: minFontSize,
            maxFontSize: maxFontSize,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        ...tours
            .map((tour) => Padding(
                  padding: const EdgeInsets.only(bottom: paddingSmall),
                  child: TourItemCard(
                    price: _tourListCubit.prices[
                            Platform.isAndroid ? tour.googleProductId : tour.appleProductId] ??
                        '',
                    tour: tour,
                    showPrice: !(tour.paid),
                    onTap: () => _goToTheTour(context, tour.id.toString(), tour.name),
                  ),
                ))
            .toList()
      ],
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, MLoc loc) {
    String? title, identifier;
    FilterType? type;
    if (city != null) {
      title = city!.name;
      type = FilterType.toursByCityId;
      identifier = city!.id.toString();
    } else if (sight != null) {
      title = sight!.name;
      type = FilterType.toursBySightId;
      identifier = sight!.id.toString();
    } else if (guide != null) {
      title = guide!.name;
      type = FilterType.toursByGuideId;
      identifier = guide!.id.toString();
    }
    return GradientAppBar(
      title: title,
      onBackArrow: () => AutoRouter.of(context).pop(),
      trailing: IconButton(
        icon: ImageIcon(
          AssetImage(Images.filter),
          size: 18,
        ),
        splashRadius: 25,
        color: colorWhite,
        onPressed: () async {
          final navigator = context.router;
          var value;
          if (navigator.routeData.name == CatalogScreenRouter.name) {
            value = await navigator.push(
              CatalogFilterScreen(
                type: type!,
                identifier: identifier!,
              ),
            );
          } else if (navigator.routeData.name == MainScreenRouter.name) {
            value = await navigator.push(
              MainFilterScreen(
                type: type!,
                identifier: identifier!,
              ),
            );
          } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
            value = await navigator.push(
              ProfileFilterScreen(
                type: type!,
                identifier: identifier!,
              ),
            );
          } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
            value = await navigator.push(
              MyOrdersFilterScreen(
                type: type!,
                identifier: identifier!,
              ),
            );
          }

          if (value is FilterDto) {
            await _tourListCubit.applyFilter(value);
          }
        },
      ),
    );
  }

  void _goToTheTour(BuildContext context, String tourId, String tourName) async {
    final navigator = context.router;
    if (navigator.routeData.name == CatalogScreenRouter.name) {
      await navigator.push(CatalogTourScreen(
        tourName: tourName,
        tourId: tourId,
      ));
    } else if (navigator.routeData.name == MainScreenRouter.name) {
      await navigator.push(MainTourScreen(
        tourName: tourName,
        tourId: tourId,
      ));
    } else if (navigator.routeData.name == ProfileMainScreenRouter.name) {
      await navigator.push(ProfileTourScreen(
        tourName: tourName,
        tourId: tourId,
      ));
    } else if (navigator.routeData.name == MyOrdersScreenRouter.name) {
      await navigator.push(MyOrdersTourScreen(
        tourName: tourName,
        tourId: tourId,
      ));
    }
    _tourListCubit.checkIfHadSameData(city!, sight!, guide!);
    await _tourListCubit.getTours();
  }
}

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/screens/my_orders/cubit/my_orders_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/items/tour_item_card.dart';
import 'package:mapo_travel_guide/ui/shared/underlined_text.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../theme.dart';

class MyOrdersScreen extends StatelessWidget {
  final RefreshController _refreshController = RefreshController();
  final MyOrdersCubit cubit = locator<MyOrdersCubit>();
  final EventBus navigationBus = locator<EventBus>();

  void _listenBottomBarButton(BuildContext mainContext) {
    navigationBus.on<NavigateOrdersScreenRootEvent>().listen((event) {
      if (cubit.wentToAnotherScreen) {
        cubit.wentToAnotherScreen = false;
        mainContext.router.popUntilRoot();
      }
    });
  }

  @override
  Widget build(BuildContext mainContext) {
    _listenBottomBarButton(mainContext);

    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);

    cubit.checkLanguageChanging();

    return Scaffold(
      appBar: DefaultAppBar(title: loc.myOrders),
      body: Material(
        child: Ink(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.cloudsBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: BlocConsumer<MyOrdersCubit, MyOrdersState>(
              bloc: cubit,
              listener: (context, state) {
                state.maybeWhen(
                  myOrdersError: (message) =>
                      composeRedMessage(message.localizedMessage(context)).show(context),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.when(
                  initial: () => _initContent(
                    theme,
                    loc,
                    context,
                    archiveOrders: cubit.archiveTours,
                    activeOrders: cubit.activeTours,
                    cubit: cubit,
                  ),
                  myOrdersLoading: () => EndlessProgress(),
                  myOrdersError: (ErrorResponse message) => MapoErrorWidget(message: message),
                  loaded: (List<Tour> activeOrdersList, List<Tour> archiveOrdersList) =>
                      _initContent(
                    theme,
                    loc,
                    context,
                    activeOrders: activeOrdersList,
                    archiveOrders: archiveOrdersList,
                    cubit: cubit,
                  ),
                );
              }),
        ),
      ),
    );
  }

  void _onRefresh(MyOrdersCubit cubit) async {
    await cubit.getOrdersData();
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    _refreshController.loadComplete();
  }

  Widget _initContent(
    ThemeData theme,
    MLoc loc,
    BuildContext context, {
    required List<Tour> activeOrders,
    required List<Tour> archiveOrders,
    required MyOrdersCubit cubit,
  }) {
    return SmartRefresher(
      enablePullDown: true,
      controller: _refreshController,
      header: WaterDropMaterialHeader(),
      onLoading: () => _onLoading(),
      onRefresh: () => _onRefresh(cubit),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(paddingDefault, paddingDefault, 0, 10),
            child: Text(loc.active, style: theme.textTheme.headline6),
          ),
          ..._getTourList(
            activeOrders,
            loc,
            theme,
            isActive: true,
            onClick: () async {
              cubit.wentToAnotherScreen = true;
              await context.router.push(MyOrdersOrdersFullListScreen(
                tours: activeOrders,
                title: loc.allActive,
              ));
              cubit.wentToAnotherScreen = false;
            },
            onItemTap: (id, name) => _gouToATour(context, id, name),
          ),
          if (archiveOrders.isNotEmpty)
            Padding(
              padding: EdgeInsets.fromLTRB(paddingDefault, paddingDefault, 0, 10),
              child: Text(loc.archive, style: theme.textTheme.headline6),
            ),
          ..._getTourList(
            archiveOrders,
            loc,
            theme,
            isActive: false,
            onClick: () async {
              cubit.wentToAnotherScreen = true;
              await context.router.push(MyOrdersOrdersFullListScreen(
                tours: archiveOrders,
                title: loc.allArchive,
              ));
              cubit.wentToAnotherScreen = false;
            },
            onItemTap: (id, name) => _gouToATour(context, id, name),
          ),
        ],
      ),
    );
  }

  List<Widget> _getTourList(
    List<Tour> tours,
    MLoc loc,
    ThemeData theme, {
    required bool isActive,
    required Function() onClick,
    required Function(int, String) onItemTap,
  }) {
    return tours.isNotEmpty
        ? tours.length < 5
            ? tours
                .map((tour) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: paddingDefault, vertical: paddingSuperPuperSmall),
                      child: TourItemCard(
                        price: cubit.prices[
                                Platform.isAndroid ? tour.googleProductId : tour.appleProductId] ??
                            'Err',
                        tour: tour,
                        showPrice: !isActive,
                        onTap: () => onItemTap(tour.id!, tour.name),
                      ),
                    ))
                .toList()
            : [
                ...tours
                    .getRange(0, 5)
                    .map((tour) => Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: paddingDefault, vertical: paddingSuperPuperSmall),
                          child: TourItemCard(
                            price: cubit.prices[Platform.isAndroid
                                    ? tour.googleProductId
                                    : tour.appleProductId] ??
                                '',
                            tour: tour,
                            showPrice: !isActive,
                            onTap: () => onItemTap(tour.id!, tour.name),
                          ),
                        ))
                    .toList(),
                Center(
                    child: UnderlinedText(
                  text: isActive ? loc.allActive : loc.allArchive,
                  onClick: onClick,
                ))
              ]
        : [
            isActive
                ? Padding(
                    padding: EdgeInsets.only(bottom: spaceSuperSmall),
                    child: Center(
                      child: Text(
                        loc.listIsEmpty,
                        style: theme.textTheme.bodyText2!.copyWith(
                          color: colorDarkBlue,
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ];
  }

  void _gouToATour(BuildContext context, int id, String tourName) async {
    cubit.wentToAnotherScreen = true;
    await context.router.push(MyOrdersTourScreen(
      tourId: id.toString(),
      tourName: tourName,
    ));
    cubit.wentToAnotherScreen = false;
  }
}

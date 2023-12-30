import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/ui/shared/bottom_bar.dart';
import 'package:event_bus/event_bus.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';

class BaseNavigator extends StatefulWidget {
  @override
  _BaseNavigatorState createState() => _BaseNavigatorState();
}

class _BaseNavigatorState extends State<BaseNavigator> {
  int _prevSelectedMenuItem = -1;
  int _selectedMenuItem = 0;
  bool shoultRebuild = false;
  // BaseNavigatorManager baseNavigatorManager = locator<BaseNavigatorManager>();
  bool userNotEmpty = locator<HiveBoxConfigurator<User>>().isNotEmpty;
  EventBus navigationBus = locator<EventBus>();

  late List<PageRouteInfo<dynamic>> indexedChildren;

  @override
  void initState() {
    indexedChildren = [MainScreenRouter(), CatalogScreenRouter(), MyOrdersScreenRouter(), ProfileMainScreenRouter()];
    if (!userNotEmpty && indexedChildren.length == 4) {
      indexedChildren.removeAt(2);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext mainContext) {
    return AutoTabsScaffold(
        routes: indexedChildren,
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomBar(
              onChangeIndex: (value) {
                setState(() {
                  shoultRebuild = true;
                  _prevSelectedMenuItem = _selectedMenuItem;
                  _selectedMenuItem = value;
                  _getIndexedChildren();
                });
                tabsRouter.setActiveIndex(value);
              },
              userNotEmpty: userNotEmpty);
        });
  }

  void _getIndexedChildren() {
    switch (_selectedMenuItem) {
      case 0:
        indexedChildren[0] = MainScreenRouter();

        break;
      case 1:
        indexedChildren[1] = CatalogScreenRouter();
        break;
      case 2:
        if (!userNotEmpty) {
          indexedChildren[2] = ProfileMainScreenRouter();
        } else {
          indexedChildren[2] = MyOrdersScreenRouter();
        }
        break;
      case 3:
        indexedChildren[3] = ProfileMainScreenRouter();
        break;
    }

    if (shoultRebuild) {
      shoultRebuild = false;
      if (_prevSelectedMenuItem == _selectedMenuItem) {
        log('_prevSelectedMenuItem == _selectedMenuItem');
        switch (_selectedMenuItem) {
          case 0:
            navigationBus.fire(NavigateMainScreenRootEvent());
            break;
          case 1:
            navigationBus.fire(NavigateCatalogueScreenRootEvent());
            break;
          case 2:
            if (!userNotEmpty) {
              navigationBus.fire(NavigateProfileScreenRootEvent());
            } else {
              navigationBus.fire(NavigateOrdersScreenRootEvent());
            }
            break;
          case 3:
            navigationBus.fire(NavigateProfileScreenRootEvent());
            break;
          default:
            navigationBus.fire(NavigateMainScreenRootEvent());
        }
      }
      navigationBus.fire(NavigateTourMapBackEvent());
    }
    if (!userNotEmpty && indexedChildren.length == 4) {
      indexedChildren.removeAt(2);
    }
    // return indexedChildren;
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/dto/city/city.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/catalog/cubit/catalog_cubit.dart';
import 'package:mapo_travel_guide/ui/shared/app_bar_with_search_field.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/ui/shared/gradient_app_bar.dart';
import 'package:mapo_travel_guide/ui/shared/items/expansion_country_item.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/navigation_events.dart';

class CatalogScreen extends StatefulWidget {
  CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final TextEditingController controller = TextEditingController();
  bool initialAppBar = true;
  EventBus navigationBus = locator<EventBus>();
  final cubit = locator<CatalogCubit>();
  bool wentToAnotherScreen = false;

  @override
  void initState() {
    super.initState();
    cubit.initCatalog();
    _listenBottomBarButton();
  }

  void _listenBottomBarButton() {
    navigationBus.on<NavigateCatalogueScreenRootEvent>().listen((event) {
      if (wentToAnotherScreen) {
        wentToAnotherScreen = false;
        AutoRouter.of(context).popUntilRoot();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var loc = MLoc.of(context);

    cubit.checkLanguageChanging();

    return Scaffold(
      appBar: initialAppBar ? _buildInitialAppBar(context, loc) : _buildSearchAppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocBuilder<CatalogCubit, CatalogState>(
          bloc: cubit,
          builder: (context, state) {
            return state.when(
              initial: _buildList,
              result: () => _buildResult(context),
              error: (message) => MapoErrorWidget(message: message),
              loading: () => EndlessProgress(),
              resultLoading: () => EndlessProgress(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildResult(BuildContext context) {
    final loc = MLoc.of(context);
    final country = cubit.searchResult;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingDefault, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.searchRes,
            style: Theme.of(context).textTheme.headline6,
          ),
          ExpansionCountryItem(
            country: country,
            onGoToAnotherScreen: (isAnother) {
              wentToAnotherScreen = isAnother;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildList() {
    final countries = cubit.countries;
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: paddingDefault),
      children: List.generate(
        countries.length,
        (index) => ExpansionCountryItem(
          country: countries[index],
          onGoToAnotherScreen: (isAnother) {
            wentToAnotherScreen = isAnother;
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildInitialAppBar(BuildContext context, MLoc loc) {
    return GradientAppBar(
      title: loc.catalog,
      trailing: IconButton(
        icon: Icon(Icons.search),
        splashRadius: 25,
        color: colorWhite,
        onPressed: () {
          setState(() {
            initialAppBar = !initialAppBar;
          });
        },
      ),
    );
  }

  PreferredSizeWidget _buildSearchAppBar() {
    final loc = MLoc.of(context);
    return AppBarWithSearchField<City>(
      itemBuilder: (BuildContext context, City itemData) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
          child: Text(itemData.name),
        );
      },
      placeholder: loc.whereGo,
      onSuggestionSelected: (suggestion) async {
        final city = suggestion;
        if (city.id == null) {
          controller.clear();
          return;
        }
        controller.text = city.name;
        await cubit.getCountry(city.id!);
      },
      onChanged: (value) {
        if (value.isEmpty) {
          cubit.initCatalog();
        }
      },
      suggestionsCallback: (String pattern) async {
        var result = pattern.isNotEmpty ? await cubit.matchPattern(pattern) : await cubit.matchPattern('');
        if (result!.isEmpty) {
          result.add(City(name: loc.noCity));
        }
        return result;
      },
      controller: controller,
      onBackArrowTap: () {
        controller.clear();
        setState(() {
          initialAppBar = !initialAppBar;
        });
        cubit.initCatalog();
        // widget.catalogCubit.initCatalog();
      },
    );
  }
}

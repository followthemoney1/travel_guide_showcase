import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/data/dto/sort_order/sort_order.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';

class FilterSortingItems extends StatefulWidget {
  final FilterCubit filterCubit;

  const FilterSortingItems({Key? key, required this.filterCubit}) : super(key: key);

  @override
  _SortingItemState createState() => _SortingItemState();
}

class _SortingItemState extends State<FilterSortingItems> {
  Widget _buildRow(SortOrder sortOrder) {
    final radioWidget = Radio(
      visualDensity: VisualDensity(vertical: -2.4),
      groupValue: widget.filterCubit.currentOrder,
      activeColor: colorWhite,
      onChanged: (SortOrder? value) {
        setState(() {
          widget.filterCubit.setSortOrder(value);
        });
      },
      value: sortOrder,
    );

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(buttonCornersRadius),
        onTap: () {
          setState(() {
            widget.filterCubit.setSortOrder(sortOrder);
          });
        },
        child: Row(
          children: [
            sortOrder == widget.filterCubit.currentOrder ? gradientMask(radioWidget) : radioWidget,
            Text(
              sortOrder.localized(context),
              style: Theme.of(context).textTheme.bodyText2!.apply(color: colorDarkBlue),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FilterCubit, FilterState>(
      bloc: widget.filterCubit,
      listener: (context, state) {
        state.maybeWhen(
          clear: () => setState(() {}),
          orElse: () => null,
        );
      },
      child: Column(
        children: widget.filterCubit.sortOrders
            .map(
              (e) => _buildRow(e),
            )
            .toList(),
      ),
    );
  }
}

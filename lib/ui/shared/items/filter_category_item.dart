import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/data/dto/filter_category/filter_category.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';

class FilterCategoryItem extends StatefulWidget {
  final FilterCategory category;
  final FilterCubit filterCubit;

  const FilterCategoryItem({Key? key, required this.category, required this.filterCubit}) : super(key: key);

  @override
  _FilterCategoryState createState() => _FilterCategoryState();
}

class _FilterCategoryState extends State<FilterCategoryItem> {
  late bool _isSelected;

  @override
  void initState() {
    _isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.filterCubit.categoriesSelected.contains(widget.category)) {
      setState(() {
        _isSelected = true;
      });
    }
    return BlocListener<FilterCubit, FilterState>(
      bloc: widget.filterCubit,
      listener: (context, state) {
        state.maybeWhen(
          clear: () => setState(() {
            _isSelected = false;
          }),
          orElse: () => null,
        );
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
              if (_isSelected) {
                widget.filterCubit.add(widget.category);
              } else {
                widget.filterCubit.remove(widget.category);
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(paddingSuperPuperSmall),
                  decoration: BoxDecoration(boxShadow: [defaultShadow()], color: colorWhite, borderRadius: BorderRadius.circular(itemCornersRadius)),
                  child: _gradient(CachedNetworkImage(
                      imageUrl: widget.category.imageUrl, height: iconSizeMiddle, color: _isSelected ? colorWhite : null, fit: BoxFit.cover)),
                  margin: const EdgeInsets.only(right: 14),
                ),
                Expanded(
                  child: _gradient(AutoSizeText(
                    widget.category.name,
                    minFontSize: minFontSize,
                    maxFontSize: maxFontSize,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText2!.apply(
                          color: _isSelected ? colorWhite : colorDarkBlue,
                        ),
                  )),
                ),
                _gradient(
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: _isSelected ? colorWhite : colorGrey,
                      ),
                      borderRadius: BorderRadius.circular(buttonCornersRadius),
                    ),
                    width: 34,
                    height: 21,
                    child: AutoSizeText(
                      widget.category.itemsAmount.toString(),
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      maxLines: 1,
                      style: TextStyle(color: colorDarkBlue, fontWeight: FontWeight.w700, fontSize: 10, letterSpacing: .4, height: 1.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gradient(Widget child) => _isSelected ? gradientMask(child) : child;
}

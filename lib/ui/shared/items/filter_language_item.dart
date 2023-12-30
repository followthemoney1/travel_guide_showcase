import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/ui/screens/filter/cubit/filter_cubit.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../../theme.dart';
import '../custom_gradient_checkbox.dart';

class FilterLanguageItem extends StatefulWidget {
  final Language language;
  final FilterCubit filterCubit;
  final Function()? onChanged;
  const FilterLanguageItem({
    Key? key,
    required this.language,
    required this.filterCubit,
    this.onChanged,
  }) : super(key: key);

  @override
  _LanguageItemState createState() => _LanguageItemState();
}

class _LanguageItemState extends State<FilterLanguageItem> {
  late bool _isSelected;
  @override
  void initState() {
    _isSelected = widget.filterCubit.languagesSelected.contains(widget.language);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.filterCubit.languagesSelected.contains(widget.language)) {
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
            orElse: () => null);
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(buttonCornersRadius),
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
            if (_isSelected) {
              widget.filterCubit.add(widget.language);
            } else {
              widget.filterCubit.remove(widget.language);
            }
            widget.onChanged!();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: paddingSmall),
            child: Row(
              children: [
                Container(
                  height: iconSizeSmall,
                  width: iconSizeSmall,
                  decoration: BoxDecoration(
                    boxShadow: [defaultShadow()],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: CachedNetworkImageProvider(widget.language.flagPath),
                    ),
                  ),
                  margin: const EdgeInsets.only(right: 14),
                ),
                Text(
                  widget.language.name,
                  style: Theme.of(context).textTheme.bodyText2!.apply(color: colorDarkBlue),
                ),
                Spacer(),
                CustomGradientCheckbox(
                  value: _isSelected,
                  onChanged: (value) {
                    setState(() {
                      _isSelected = value;
                    });
                    if (_isSelected) {
                      widget.filterCubit.add(widget.language);
                    } else {
                      widget.filterCubit.remove(widget.language);
                    }
                    widget.onChanged!();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

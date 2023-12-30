import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class CustomTextField extends StatefulWidget {
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final Function(String?)? onFieldSubmited;
  final Function(String?)? onChanged;
  final TextInputAction textInputAction;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool autofocus;
  final TextInputType inputType;
  final TextStyle? hintTextStyle;
  final TextStyle? textTextStyle;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    Key? key,
    this.onSaved,
    this.focusNode,
    this.onFieldSubmited,
    this.textInputAction = TextInputAction.done,
    this.labelText,
    this.hintText,
    this.errorText,
    this.validator,
    this.controller,
    this.inputFormatters,
    this.autofocus = false,
    this.inputType = TextInputType.text,
    this.hintTextStyle,
    this.onChanged,
    this.textTextStyle,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textStyle = widget.textTextStyle ?? theme.textTheme.bodyText2!.apply(color: colorDarkBlue);
    return TextFormField(
      controller: widget.controller,
      style: textStyle,
      validator: widget.validator,
      autofocus: widget.autofocus,
      onFieldSubmitted: widget.onFieldSubmited,
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      keyboardType: widget.inputType,
      onSaved: widget.onSaved,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        errorText: widget.errorText,
        errorMaxLines: 2,
        focusColor: colorGreenGradientEnd,
        fillColor: Colors.black87,
        hintStyle: widget.hintTextStyle,
      ),
    );
  }
}

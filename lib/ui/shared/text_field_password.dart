import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/ui/theme.dart';

class TextFieldPassword extends StatefulWidget {
  final Function(String?)? onSaved;
  final FocusNode? passwordFocus;
  final Function(String)? onFieldSubmited;
  final TextInputAction? textInputAction;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool autofocus;

  const TextFieldPassword({
    Key? key,
    this.onSaved,
    this.passwordFocus,
    this.onFieldSubmited,
    this.textInputAction,
    this.labelText,
    this.hintText,
    this.validator,
    this.controller,
    this.autofocus = true,
  }) : super(key: key);

  @override
  _TextFieldPasswordState createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextFormField(
      obscureText: _hidePassword,
      controller: widget.controller,
      style: theme.textTheme.bodyText2!.copyWith(color: colorDarkBlue),
      validator: widget.validator,
      autofocus: widget.autofocus,
      onFieldSubmitted: widget.onFieldSubmited,
      textInputAction: widget.textInputAction,
      onSaved: widget.onSaved,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        focusColor: colorGreenGradientEnd,
        fillColor: Colors.black87,
        suffixIcon: IconButton(
          padding: EdgeInsets.only(top: 12, left: 12),
          color: colorGrey,
          icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(
              () {
                _hidePassword = !_hidePassword;
              },
            );
          },
        ),
      ),
    );
  }
}

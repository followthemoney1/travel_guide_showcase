import 'dart:async';
import 'dart:io';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../theme.dart';
import 'speech_recognition_cubit/speech_recognition_cubit.dart';

class AppBarWithSearchField<T> extends StatefulWidget with PreferredSizeWidget {
  final Widget Function(BuildContext context, T itemData) itemBuilder;
  final void Function(T suggestion) onSuggestionSelected;
  final FutureOr<Iterable<T>> Function(String pattern) suggestionsCallback;
  final Function(String value)? onChanged;
  final TextEditingController controller;
  final String? placeholder;
  final void Function()? onBackArrowTap;
  @override
  final Size preferredSize;

  AppBarWithSearchField({
    Key? key,
    required this.itemBuilder,
    required this.onSuggestionSelected,
    required this.suggestionsCallback,
    required this.controller,
    this.placeholder,
    this.onBackArrowTap,
    this.onChanged,
  })  : preferredSize = Size.fromHeight(56.0),
        super(key: key);

  @override
  _AppBarWithSearchFieldState<T> createState() => _AppBarWithSearchFieldState<T>();
}

class _AppBarWithSearchFieldState<T> extends State<AppBarWithSearchField<T>> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top + 5;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.only(top: topPadding, bottom: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorGreenGradientStart, colorGreenGradientEnd],
        ),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              horizontalSpacer(width * .055),
              if (widget.onBackArrowTap != null)
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    splashRadius: 25,
                    icon: Icon(
                      Icons.arrow_back,
                      color: colorWhite,
                    ),
                    onPressed: widget.onBackArrowTap,
                  ),
                ),
              if (widget.onBackArrowTap == null)
                SizedBox(
                  width: 48,
                ),
              Container(
                width: width * .75,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(buttonCornersRadius),
                  color: colorWhite,
                ),
                // padding: EdgeInsets.only(left: 15),
                child: Container(
                  width: width * .8,
                  child: TypeAheadField<T>(
                    hideOnLoading: true,
                    hideOnError: true,
                    hideOnEmpty: true,
                    suggestionsBoxDecoration: SuggestionsBoxDecoration(
                      borderRadius: BorderRadius.circular(buttonCornersRadius),
                      shadowColor: shadowColor1.withOpacity(.09),
                    ),
                    textFieldConfiguration: TextFieldConfiguration(
                      autofocus: false,
                      cursorColor: colorDarkBlue,
                      controller: widget.controller,
                      textInputAction: Platform.isAndroid ? TextInputAction.none : TextInputAction.continueAction,
                      onChanged: widget.onChanged,
                      onSubmitted: widget.suggestionsCallback,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            height: 1.5,
                            color: colorNavyBlue,
                          ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15, /* top: 12, bottom: 12,*/ right: 40),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                        hintText: widget.placeholder,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                        fillColor: colorWhite,
                      ),
                    ),
                    itemBuilder: widget.itemBuilder,
                    onSuggestionSelected: widget.onSuggestionSelected,
                    suggestionsCallback: widget.suggestionsCallback,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: -15,
            right: width * .035,
            child: SpeechMicrophoneIcon(
              onSpeak: (speech) {
                widget.controller.text = speech;
              },
            ),
          )
        ],
      ),
    );
  }
}

class SpeechMicrophoneIcon extends StatelessWidget {
  final void Function(String) onSpeak;

  SpeechMicrophoneIcon({Key? key, required this.onSpeak}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loc = MLoc.of(context);
    final speechRecognitionCubit = locator<SpeechRecognitionCubit>();
    return BlocConsumer<SpeechRecognitionCubit, SpeechRecognitionState>(
      listener: (_, state) {
        state.maybeWhen(
          listening: (value) => onSpeak(value),
          orElse: () {},
        );
      },
      builder: (_, state) {
        return state.maybeWhen(
          notListening: () => IconButton(
            padding: const EdgeInsets.all(28),
            icon: Icon(Icons.mic),
            onPressed: () => speechRecognitionCubit.startListening(loc.locale.languageCode),
          ),
          listening: (speech) => _buildMicroOn(speechRecognitionCubit),
          startListening: () => _buildMicroOn(speechRecognitionCubit),
          orElse: () => IconButton(
            padding: const EdgeInsets.all(28),
            icon: Icon(Icons.mic),
            onPressed: () => speechRecognitionCubit.startListening(loc.locale.languageCode),
          ),
        );
      },
    );
  }

  Widget _buildMicroOn(SpeechRecognitionCubit speechRecognitionCubit) => AvatarGlow(
        child: IconButton(
          icon: Icon(Icons.mic),
          onPressed: () => speechRecognitionCubit.stopListening(),
        ),
        glowColor: colorGreenGradientStart,
        endRadius: 40,
      );
}

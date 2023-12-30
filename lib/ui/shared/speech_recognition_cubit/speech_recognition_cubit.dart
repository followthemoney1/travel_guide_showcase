import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'speech_recognition_state.dart';
part 'speech_recognition_cubit.freezed.dart';

@lazySingleton
class SpeechRecognitionCubit extends Cubit<SpeechRecognitionState> {
  final _speech = SpeechToText();

  SpeechRecognitionCubit() : super(SpeechRecognitionState.notListening());

  void stopListening() {
    emit(_NotListening());
    _speech.stop();
  }

  void startListening(String languageCode) async {
    final speechSoundLevel = Platform.isIOS ? -40 : 0;
    emit(_StartListening());

    var available = await _speech.initialize(
      onStatus: (val) {
        print('onStatus: $val');
        if (val == 'notListening') stopListening();
      },
      onError: (val) => print('onError: $val'),
    );
    if (available) {
      var timeNow = DateTime.now();
      await _speech.listen(
        localeId: languageCode,
        listenFor: Duration(seconds: 10),
        onSoundLevelChange: (value) {
          if (value > speechSoundLevel) {
            timeNow = DateTime.now();
          } else if (value < speechSoundLevel && DateTime.now().second - timeNow.second >= 3) stopListening();
        },
        listenMode: ListenMode.search,
        onResult: (val) {
          if (!(state is _NotListening)) emit(_Listening(val.recognizedWords));
        },
      );
    } else {
      stopListening();
    }
  }
}

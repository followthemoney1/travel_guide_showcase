part of 'speech_recognition_cubit.dart';

@freezed
class SpeechRecognitionState with _$SpeechRecognitionState {
  factory SpeechRecognitionState.notListening() = _NotListening;
  factory SpeechRecognitionState.startListening() = _StartListening;
  factory SpeechRecognitionState.listening(String speech) = _Listening;
}

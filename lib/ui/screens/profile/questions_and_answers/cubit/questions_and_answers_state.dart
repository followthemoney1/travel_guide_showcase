part of 'questions_and_answers_cubit.dart';

@freezed
class QuestionsAndAnswersState with _$QuestionsAndAnswersState {
  factory QuestionsAndAnswersState.initial() = _Initial;
  factory QuestionsAndAnswersState.loading() = _Loading;
  factory QuestionsAndAnswersState.error(ErrorResponse message) = _Error;
  factory QuestionsAndAnswersState.loaded() = _Loaded;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';

part 'questions_and_answers.freezed.dart';
part 'questions_and_answers.g.dart';

@freezed
class QuestionAndAnswer with _$QuestionAndAnswer {
  @HiveType(typeId: HiveTypes.questionAndAnswer)
  factory QuestionAndAnswer(@HiveField(0) String question, @HiveField(1) String answer) = _QuestionAndAnswer;
  factory QuestionAndAnswer.fromJson(Map<String, dynamic> json) => _$QuestionAndAnswerFromJson(json);
}

@freezed
class QuestionAndAnswerResponse with _$QuestionAndAnswerResponse {
  @HiveType(typeId: HiveTypes.questionAndAnswerResponse)
  factory QuestionAndAnswerResponse(@HiveField(0) List<QuestionAndAnswer> questionsAndAnswers) = _QuestionAndAnswerResponse;
  factory QuestionAndAnswerResponse.fromJson(Map<String, dynamic> json) => _$QuestionAndAnswerResponseFromJson(json);
}

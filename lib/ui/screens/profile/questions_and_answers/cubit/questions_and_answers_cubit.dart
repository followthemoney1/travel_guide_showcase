import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/questions_and_answers.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';

part 'questions_and_answers_state.dart';
part 'questions_and_answers_cubit.freezed.dart';

@injectable
class QuestionsAndAnswersCubit extends Cubit<QuestionsAndAnswersState> {
  final ProfileRepository _profileRepository;
  List<QuestionAndAnswer> _questionAndAnswer = [];
  List<QuestionAndAnswer> get questionAndAnswer => _questionAndAnswer;

  QuestionsAndAnswersCubit(this._profileRepository) : super(_Initial());

  Future<void> getQuestionsAndAnswers() async {
    emit(_Loading());
    final response = await _profileRepository.getQuestionsAndAnswers();
    emit(response.fold((error) => _Error(error), (result) {
      _questionAndAnswer = result.questionsAndAnswers;
      return _Loaded();
    }));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/profile/questions_and_answers/cubit/questions_and_answers_cubit.dart';
import 'package:mapo_travel_guide/ui/screens/profile/questions_and_answers/widget/expanded_card.dart';
import 'package:mapo_travel_guide/ui/shared/default_appbar.dart';
import 'package:mapo_travel_guide/ui/shared/endless_progress.dart';
import 'package:mapo_travel_guide/ui/shared/error_widget.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class QuestionsAndAnswersScreen extends StatelessWidget {
  final QuestionsAndAnswersCubit cubit = locator<QuestionsAndAnswersCubit>();

  QuestionsAndAnswersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext mainContext) {
    var size = MediaQuery.of(mainContext).size;
    var theme = Theme.of(mainContext);
    var loc = MLoc.of(mainContext);

    return Scaffold(
      appBar: DefaultAppBar(title: loc.questionsAndAnswers),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.cloudsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocConsumer<QuestionsAndAnswersCubit, QuestionsAndAnswersState>(
            bloc: cubit,
            listener: (context, state) {
              state.maybeWhen(
                  initial: () {
                    cubit.getQuestionsAndAnswers();
                  },
                  error: (message) => composeRedMessage(message.localizedMessage(context)).show(context),
                  orElse: () {
                    print(state);
                  });
            },
            builder: (context, state) {
              return state.when(
                  initial: () {
                    cubit.getQuestionsAndAnswers();
                    return EndlessProgress();
                  },
                  loading: () => EndlessProgress(),
                  error: (ErrorResponse message) => MapoErrorWidget(message: message),
                  loaded: () => _initListCard(theme, loc));
            }),
      ),
    );
  }

  Widget _initListCard(ThemeData theme, MLoc loc) {
    return ListView(
        physics: BouncingScrollPhysics(),
        reverse: true,
        shrinkWrap: true,
        children: cubit.questionAndAnswer.map((obj) {
          return ExpandableCard(title: obj.question, expandedTitle: obj.answer);
        }).toList());
  }
}

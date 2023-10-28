import 'package:flutter/material.dart';
import 'quiz_funcs.dart';
import 'quiz_answer_card_list.dart';
import '../universal_funcs.dart';

class QuizGamePage extends StatelessWidget {
  const QuizGamePage(
      {super.key,
      required this.questionCount,
      required this.scoreCount,
      required this.responseText,
      required this.weekInput});

  final int questionCount;
  final int scoreCount;
  final String responseText;
  final String weekInput;
  

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> masterList = masterMapFuncAll(weekInput);
    final int totalQuestionCount = weekToQuestionCount(weekInput);
    return Scaffold(
      appBar: AppBar(
        title: Text(masterList.keys.elementAt(questionCount)),
        actions: [
          Text(
            "Score: $scoreCount / $totalQuestionCount",
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 20),
          ),
          //const Padding(padding: EdgeInsets.only(right: 0.3))
        ],
        automaticallyImplyLeading: false,
      ),
      body: AnswerCardList(
        optionList: masterList.values.elementAt(questionCount),
        questionCount: questionCount,
        scoreCount: scoreCount,
        weekInput: weekInput,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.all(8),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              responseText,
              style: const TextStyle(fontSize: 20),
            ),
            const Spacer(),
            Text(
              "Question nr.: $questionCount / $totalQuestionCount",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

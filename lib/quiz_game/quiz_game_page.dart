import 'package:flutter/material.dart';
import 'quiz_answer_card.dart';
import 'quiz_funcs.dart';
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
    List<String> optionList = masterList.values.elementAt(questionCount);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        //title: Text(masterList.keys.elementAt(questionCount)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Question: $questionCount / $totalQuestionCount",
              style: const TextStyle(fontSize: 20),
              //textAlign: TextAlign.start,
            ),
            Text(
              "Score: $scoreCount / $totalQuestionCount",
              //textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Text(
            masterList.keys.elementAt(questionCount),
            style: const TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: optionList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnswerCard(
                    cardText: optionList[index],
                    questionCount: questionCount,
                    scoreCount: scoreCount,
                    weekInput: weekInput,
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              responseText,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

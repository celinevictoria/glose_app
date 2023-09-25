import 'package:flutter/material.dart';
import 'option_list.dart';
import 'answer_card_list.dart';

class GamePage extends StatelessWidget {
  GamePage(
      {super.key,
      required this.questionCount,
      required this.scoreCount,
      required this.responseText});

  final int questionCount;
  final int scoreCount;
  final String responseText;
  final Map<String, List<String>> masterList = optionListFunc();
  //final Map<String, List<String>> question = randomQuestion(optionListFunc());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(masterList.keys.elementAt(questionCount)),
        actions: [
          Text(
            "Score: $scoreCount / 17",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: AnswerCardList(
        optionList: masterList.values.elementAt(questionCount),
        questionCount: questionCount,
        scoreCount: scoreCount,
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
              "Question nr.: $questionCount / 17",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

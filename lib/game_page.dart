import 'package:flutter/material.dart';
import 'option_list.dart';
import 'answer_card_list.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key, required this.questionCount});

  final int questionCount;
  final Map<String, List<String>> masterList = optionListFunc();
  //final Map<String, List<String>> question = randomQuestion(optionListFunc());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(masterList.keys.elementAt(questionCount)),
          automaticallyImplyLeading: false,
        ),
        body: AnswerCardList(
          optionList: masterList.values.elementAt(questionCount),
          questionCount: questionCount,
        ));
  }
}

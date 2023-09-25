import 'package:flutter/material.dart';
import 'option_list.dart';
import 'answer_card_list.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key, required this.questionCount});

  final int questionCount;
  //final Map<String, List<String>> optionList = optionListFunc();
  final Map<String, List<String>> question = randomQuestion(optionListFunc());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(question.keys.elementAt(0))),
        body: AnswerCardList(
          optionList: question.values.elementAt(0),
          questionCount: questionCount,
        ));
  }
}

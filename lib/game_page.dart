import 'package:flutter/material.dart';
import 'option_list.dart';
import 'answer_card_list.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key, required this.questionCount});

  final int questionCount;
  final Map<String, List<String>> optionList = optionListFunc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(optionList.keys.elementAt(questionCount))),
        body: AnswerCardList(
          optionList: optionList.values.elementAt(questionCount),
          questionCount: questionCount,
        ));
  }
}
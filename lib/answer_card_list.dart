import 'package:flutter/material.dart';
import 'answer_card.dart';

class AnswerCardList extends StatelessWidget {
  const AnswerCardList(
      {super.key, required this.optionList, required this.questionCount});

  final List<String> optionList;
  final int questionCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: optionList.length,
          itemBuilder: (context, index) {
            return AnswerCard(
              cardText: optionList[index],
              questionCount: questionCount,
            );
          },
        ))
      ],
    );
  }
}
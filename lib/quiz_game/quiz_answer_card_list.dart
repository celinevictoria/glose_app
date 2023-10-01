import 'package:flutter/material.dart';
import 'quiz_answer_card.dart';

class AnswerCardList extends StatelessWidget {
  const AnswerCardList(
      {super.key,
      required this.optionList,
      required this.questionCount,
      required this.scoreCount,
      required this.weekInput});

  final List<String> optionList;
  final int questionCount;
  final int scoreCount;
  final String weekInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.all(30)),
        Expanded(
            child: ListView.builder(
          itemCount: optionList.length,
          itemBuilder: (context, index) {
            return AnswerCard(
              cardText: optionList[index],
              questionCount: questionCount,
              scoreCount: scoreCount,
              weekInput: weekInput,
            );
          },
        ))
      ],
    );
  }
}

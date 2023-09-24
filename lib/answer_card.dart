import 'package:flutter/material.dart';
import 'game_page.dart';
import 'end_page.dart';
import 'option_list.dart';

class AnswerCard extends StatelessWidget {
  AnswerCard({
    super.key,
    required this.cardText,
    required this.questionCount,
  });

  final String cardText;
  final int questionCount;
  final List<String> answerList = answerListFunc();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            //splashColor: const Color(0xff6750a4).withAlpha(30),
            splashColor: answerList.contains(cardText)
              ? const Color.fromARGB(255, 52, 222, 67).withAlpha(30)
              : const Color.fromARGB(255, 227, 20, 20).withAlpha(30),
            onTap: () {
              answerList.contains(cardText)
                    ? debugPrint("Correct!")
                    : debugPrint("Wrong!");
              Navigator.push(
                  context,
                  questionCount == 2
                      ? MaterialPageRoute(
                          builder: (context) => const EndPage(),
                        )
                      : MaterialPageRoute(
                          builder: (context) => GamePage(
                            questionCount: questionCount + 1,
                          ),
                        ));
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text(cardText)),
            ),
          )),
    );
  }
}
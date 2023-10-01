import 'package:flutter/material.dart';
import 'quiz_game_page.dart';
import '../end_page.dart';
import 'quiz_funcs.dart';
import '../universal_funcs.dart';

class AnswerCard extends StatelessWidget {
  AnswerCard(
      {super.key,
      required this.cardText,
      required this.questionCount,
      required this.scoreCount,
      required this.weekInput});

  final String cardText;
  final int questionCount;
  final int scoreCount;
  final String weekInput;
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
                  questionCount == weekToQuestionCount(weekInput) - 1
                      ? answerList.contains(cardText)
                          ? MaterialPageRoute(
                              builder: (context) => EndPage(
                                scoreCount: scoreCount + 1,
                                weekInput: weekInput,
                              ),
                            )
                          : MaterialPageRoute(
                              builder: (context) => EndPage(
                                scoreCount: scoreCount,
                                weekInput: weekInput,
                              ),
                            )
                      : answerList.contains(cardText)
                          ? MaterialPageRoute(
                              builder: (context) => GamePage(
                                questionCount: questionCount + 1,
                                scoreCount: scoreCount + 1,
                                responseText: "Correct!",
                                weekInput: weekInput,
                              ),
                            )
                          : MaterialPageRoute(
                              builder: (context) => GamePage(
                                questionCount: questionCount + 1,
                                scoreCount: scoreCount,
                                responseText: "Wrong!",
                                weekInput: weekInput,
                              ),
                            ));
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(
                  child: Text(cardText, style: const TextStyle(fontSize: 20))),
            ),
          )),
    );
  }
}

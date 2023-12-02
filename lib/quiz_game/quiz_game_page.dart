import 'package:flutter/material.dart';
import '../end_page.dart';
import 'quiz_funcs.dart';
import '../universal_funcs.dart';

class QuizGamePage extends StatefulWidget {
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
  State<QuizGamePage> createState() => _QuizGamePageState();
}

class _QuizGamePageState extends State<QuizGamePage> {
  String selectedAnswer = "";
  //bool firstBuild = true;
  int questionScore = 0;
  final List<String> answerList = answerListFunc();
  bool done = false;
  String questionResponseText = "Wrong!";

  // Color cardColor0 = const Color.fromARGB(255, 242, 243, 243);
  // Color cardColor1 = const Color.fromARGB(255, 242, 243, 243);
  // Color cardColor2 = const Color.fromARGB(255, 242, 243, 243);
  // Color cardColor3 = const Color.fromARGB(255, 242, 243, 243);

  List<Color> cardColors = [
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243)
  ];

  Color correctColor = const Color.fromARGB(255, 184, 229, 146);
  Color wrongColor = const Color.fromARGB(255, 229, 149, 146);

  List<bool> theCorrectAnswerList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> masterList =
        masterMapFuncAll(widget.weekInput);
    final int totalQuestionCount = weekToQuestionCount(widget.weekInput);
    List<String> optionList = masterList.values.elementAt(widget.questionCount);

    //answerList.contains(selectedAnswer)

    if (selectedAnswer != "") {
      for (String o in optionList) {
        if(answerList.contains(o)) {
          theCorrectAnswerList[optionList.indexOf(o)] = true;
        }
      }
      for (int i = 0; i < cardColors.length; i++) {
        if(theCorrectAnswerList[i]) {
          cardColors[i] = correctColor;
        } else {
          cardColors[i] = wrongColor;
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Question: ${widget.questionCount} / $totalQuestionCount",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Score: ${widget.scoreCount} / $totalQuestionCount",
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
            masterList.keys.elementAt(widget.questionCount),
            style: const TextStyle(fontSize: 20),
          )),
          SizedBox(
            height: 450,
            child: ListView(
              children: [
                optionCard(optionList[0], cardColors[0]),
                optionCard(optionList[1], cardColors[1]),
                optionCard(optionList[2], cardColors[2]),
                optionCard(optionList[3], cardColors[3]),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 255, 185, 193)),
                  onPressed: () {
                    //done = true;
                    if (answerList.contains(selectedAnswer)) {
                      questionScore = 1;
                      questionResponseText = "Correct!";
                    }
                    // ignore: avoid_print
                    print(questionScore);
                    Navigator.push(
                        context,
                        widget.questionCount ==
                                weekToQuestionCount(widget.weekInput) - 1
                            ? MaterialPageRoute(
                                builder: (context) => EndPage(
                                  scoreCount: widget.scoreCount + questionScore,
                                  weekInput: widget.weekInput,
                                ),
                              )
                            : MaterialPageRoute(
                                builder: (context) => QuizGamePage(
                                  questionCount: widget.questionCount + 1,
                                  scoreCount: widget.scoreCount + questionScore,
                                  responseText: questionResponseText,
                                  weekInput: widget.weekInput,
                                ),
                              ));
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox optionCard(String cardText, Color cardColor) {
    return SizedBox(
      child: Card(
          color: cardColor,
          shape: selectedAnswer == cardText
              ? const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black87,
                    width: 1.25
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                )
              : null,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              onTap: () {
                if (!done) {
                  setState(() {
                    selectedAnswer = cardText;
                  });

                  done = true;
                }

                // ignore: avoid_print
                print(selectedAnswer);
              },
              child: Center(
                child: SizedBox(
                  width: 275,
                  height: 75,
                  child: Center(
                      child:
                          Text(cardText, style: const TextStyle(fontSize: 20))),
                ),
              ),
            ),
          )),
    );
  }
}

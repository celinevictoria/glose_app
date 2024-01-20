import 'package:flutter/material.dart';
import '../end_page.dart';
import 'quiz_funcs.dart';
import '../universal_funcs.dart';

class QuizGamePage extends StatefulWidget {
  const QuizGamePage(
      {super.key, required this.questionCount, required this.scoreCount, required this.weekInput});

  final int questionCount;
  final int scoreCount;
  final String weekInput;

  @override
  State<QuizGamePage> createState() => _QuizGamePageState();
}

class _QuizGamePageState extends State<QuizGamePage> {
  String selectedAnswer = "";
  int questionScore = 0;
  bool firstBuildOutside = true;
  final List<String> answerList = answerListFunc();
  bool done = false;

  List<Color> cardColors = [
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243),
    const Color.fromARGB(255, 242, 243, 243)
  ];

  Color correctColor = const Color.fromARGB(255, 184, 229, 146);
  Color wrongColor = const Color.fromARGB(255, 229, 149, 146);

  List<bool> theCorrectAnswerList = [false, false, false, false];

  List<int> orderList = [0, 1, 2, 3]..shuffle();

  List<String> randomOrder(List<int> orderList, List<String> toOrderList) {
    List<String> tempList = ["", "", "", ""];

    int count = 0;
    for (int number in orderList) {
      tempList[count] = toOrderList[number];
      count += 1;
    }

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    final int totalQuestionCount = weekToQuestionCount(widget.weekInput);

    final Map<String, List<String>> masterMap = masterMapFuncAll(widget.weekInput);

    List<String> optionList = masterMap.values.elementAt(widget.questionCount);

    optionList = randomOrder(orderList, optionList);

    if (selectedAnswer != "") {
      for (String o in optionList) {
        if (answerList.contains(o)) {
          theCorrectAnswerList[optionList.indexOf(o)] = true;
        }
      }
      for (int i = 0; i < cardColors.length; i++) {
        if (theCorrectAnswerList[i]) {
          cardColors[i] = correctColor;
        } else if (!theCorrectAnswerList[i] && optionList[i] == selectedAnswer) {
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
              "Score: ${widget.scoreCount + questionScore} / $totalQuestionCount",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 15,),
          Center(
              child: Text(
            masterMap.keys.elementAt(widget.questionCount),
            style: const TextStyle(fontSize: 20),
          )),
          const SizedBox(height: 15,),
          SizedBox(
            height: 250,
            child: ListView(
              children: [
                optionCard(optionList[0], cardColors[0]),
                optionCard(optionList[1], cardColors[1]),
                optionCard(optionList[2], cardColors[2]),
                optionCard(optionList[3], cardColors[3]),
              ],
            ),
          ),
          //const SizedBox(height: 15,),
          Center(
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 202, 162)),
                  onPressed: () {
                    if (done) {
                      if (answerList.contains(selectedAnswer)) {
                        questionScore = 1;
                      }
                      // ignore: avoid_print
                      print(questionScore);
                      Navigator.push(
                          context,
                          widget.questionCount == weekToQuestionCount(widget.weekInput) - 1
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
                                    weekInput: widget.weekInput,
                                  ),
                                ));
                    }
                  },
                  child: const Text(
                    'Next Question',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
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
      height: 50,
      child: Card(
          color: cardColor,
          shape: selectedAnswer == cardText
              ? const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87, width: 1.25),
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
                      child: Text(cardText,
                          style: const TextStyle(fontSize: 20, color: Colors.black87))),
                ),
              ),
            ),
          )),
    );
  }
}

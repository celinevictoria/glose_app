import 'package:flutter/material.dart';
import '../end_page.dart';
import 'quiz_answer_card.dart';
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

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> masterList =
        masterMapFuncAll(widget.weekInput);
    final int totalQuestionCount = weekToQuestionCount(widget.weekInput);
    List<String> optionList = masterList.values.elementAt(widget.questionCount);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        //title: Text(masterList.keys.elementAt(questionCount)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Question: ${widget.questionCount} / $totalQuestionCount",
              style: const TextStyle(fontSize: 20),
              //textAlign: TextAlign.start,
            ),
            Text(
              "Score: ${widget.scoreCount} / $totalQuestionCount",
              //textAlign: TextAlign.center,
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
                optionCard(optionList[0]),
                optionCard(optionList[1]),
                optionCard(optionList[2]),
                optionCard(optionList[3]),
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
                    done = true;
                    if (answerList.contains(selectedAnswer)) {
                      questionScore = 1;
                      questionResponseText = "Correct!";
                    }
                    print(questionScore);
                    //Navigator.push();
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

          // SizedBox(
          //   height: 450,
          //   child: ListView.builder(
          //     itemCount: optionList.length,
          //     itemBuilder: (context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: AnswerCard(
          //           cardText: optionList[index],
          //           questionCount: questionCount,
          //           scoreCount: scoreCount,
          //           weekInput: weekInput,
          //         ),
          //       );
          //     },
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.responseText,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox optionCard(String cardText) {
    Color cardColor = const Color.fromARGB(255, 242, 243, 243);

    return SizedBox(
      child: Card(
          color: cardColor,
          shape: selectedAnswer == cardText
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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

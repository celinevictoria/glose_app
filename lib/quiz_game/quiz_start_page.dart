import 'package:flutter/material.dart';
import 'quiz_start_button.dart';

class QuizStartPage extends StatelessWidget {
  const QuizStartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Glose App"),
          //automaticallyImplyLeading: false,
        ),
        body: const Column(children: [
          Padding(padding: EdgeInsets.all(30)),
          StartButton(weekInput: "All Weeks"),
          StartButton(weekInput: "Week 38"),
          StartButton(weekInput: "Week 39"),
          StartButton(weekInput: "Week 40"),
          StartButton(weekInput: "Week 42"),
          StartButton(weekInput: "Week 43"),
          StartButton(weekInput: "Week 44"),
        ]));
  }
}

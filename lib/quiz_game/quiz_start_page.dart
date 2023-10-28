import 'package:flutter/material.dart';
import 'quiz_start_button.dart';
import '../universal_funcs.dart';

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
        body: Column(children: [
          Expanded(
            child: ListView.builder(
          itemCount: weekList().length,
          itemBuilder: (context, index) {
            return StartButton(weekInput: weekList()[index]);
          },
        ))
        ]));
  }
}

import 'package:flutter/material.dart';
import 'quiz_game/quiz_game_page.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.weekInput
  });

  final String weekInput;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
            splashColor: const Color(0xff6750a4).withAlpha(30),
            onTap: () {
              debugPrint("Tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GamePage(
                      questionCount: 0,
                      scoreCount: 0,
                      responseText: "",
                      weekInput: weekInput,
                    ),
                  ));
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(
                  child: Text("Start Game - $weekInput",
                      style: const TextStyle(fontSize: 20))),
            )),
      ),
    );
  }
}

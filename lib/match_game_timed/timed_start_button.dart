import 'package:flutter/material.dart';
import 'timed_game_page.dart';
import '../match_game/match_funcs.dart';

class TimedStartButton extends StatelessWidget {
  const TimedStartButton({super.key, required this.weekInput});

  final String weekInput;
  
  @override
  Widget build(BuildContext context) {
    final List<String> matchList = matchListFunc(weekInput)..shuffle();
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
                    builder: (context) => TimedGamePage(
                      questionCount: 0,
                      weekCount: weekInput,
                      matchList: matchList,
                    ),
                  ));
            },
            child: SizedBox(
              width: 275,
              height: 75,
              child: Center(
                  child: Text("Start Game - $weekInput", style: const TextStyle(fontSize: 20))),
            )),
      ),
    );
  }
}

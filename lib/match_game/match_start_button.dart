import 'package:flutter/material.dart';
import 'package:glose_app/match_game/match_game_page.dart';
import 'match_funcs.dart';

class MatchStartButton extends StatelessWidget {
  const MatchStartButton({super.key, required this.weekInput});

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
                    builder: (context) => MatchGamePage(
                      questionCount: 0,
                      weekCount: weekInput,
                      matchList: matchList,
                      startTime: DateTime.now().millisecondsSinceEpoch,
                    ),
                  ));
              debugPrint(DateTime.now().toString());
            },
            child: SizedBox(
              width: 275,
              height: 75,
              child: Center(
                  child: Text("Start Game - $weekInput",
                      style: const TextStyle(fontSize: 20))),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:glose_app/quiz_game/quiz_start_page.dart';
import 'quiz_game/quiz_start_button.dart';
import 'match_game/match_game_page.dart';
import './match_game/match_start_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Glose App"),
          automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          const Center(child: Text("Choose game mode")),
          Center(
              child: Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
                splashColor: const Color(0xff6750a4).withAlpha(30),
                onTap: () {
                  debugPrint("Tapped");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizStartPage(),
                      ));
                },
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: Center(
                      child:
                          Text("Quiz Mode", style: TextStyle(fontSize: 20))),
                )),
          )),
          Center(
              child: Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
                splashColor: const Color(0xff6750a4).withAlpha(30),
                onTap: () {
                  debugPrint("Tapped");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MatchStartPage(),
                      ));
                },
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: Center(
                      child:
                          Text("Match Mode", style: TextStyle(fontSize: 20))),
                )),
          ))
        ]));
  }
}

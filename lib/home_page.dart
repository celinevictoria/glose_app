import 'package:flutter/material.dart';
import 'package:glose_app/quiz_game/quiz_start_page.dart';
import './match_game/match_start_page.dart';
import 'match_game_timed/timed_start_page.dart';

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
          const Padding(padding: EdgeInsets.all(20)),
          const Center(
              child: Text(
            "Choose game mode:",
            style: TextStyle(fontSize: 20),
          )),
          const Padding(padding: EdgeInsets.all(10)),
          gamemodeCard(context, "Quiz Mode"),
          gamemodeCard(context, "Match Mode"),
          gamemodeCard(context, "Timed Mode")
        ]));
  }

  Center gamemodeCard(
    BuildContext context,
    String gameModeTest,
  ) {
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
                  builder: (context) =>
                      gameModeTest == "Quiz Mode" ? const QuizStartPage() : gameModeTest == "Match Mode" ? const MatchStartPage() : const TimedStartPage(),
                ));
          },
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(
                child: Text(gameModeTest,
                    textAlign: TextAlign.center, style: const TextStyle(fontSize: 20))),
          )),
    ));
  }
}

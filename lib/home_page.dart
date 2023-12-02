import 'package:flutter/material.dart';
import 'package:glose_app/quiz_game/quiz_start_page.dart';
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
        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //const Padding(padding: EdgeInsets.all(20)),
          Center(
            child: Image.asset("assets/glose_app.png"),
          ),
          const Center(
              child: Text(
            "Choose game mode:",
            style: TextStyle(fontSize: 20),
          )),
          //const Padding(padding: EdgeInsets.all(10)),
          Column(
            children: [
              newGamemodeCard(context, "Quiz Mode"),
              newGamemodeCard(context, "Match Mode"),
            ],
          ),
        ]));
  }

  Padding newGamemodeCard(BuildContext context, String gameMode) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width - 30,
          child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 250, 202, 162)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        gameMode == "Quiz Mode" ? const QuizStartPage() : const MatchStartPage(),
                  ));
            },
            child: Text(
              gameMode,
              style: const TextStyle(color: Colors.black87, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

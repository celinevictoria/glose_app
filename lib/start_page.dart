import 'package:flutter/material.dart';
import 'start_button.dart';
import 'match_game/match_game.dart';

class StartPage extends StatelessWidget {
  const StartPage({
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
          const Padding(padding: EdgeInsets.all(30)),
          const StartButton(weekInput: "All Weeks"),
          const StartButton(weekInput: "Week 38"),
          const StartButton(weekInput: "Week 39"),
          const StartButton(weekInput: "Week 40"),
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
                        builder: (context) => MatchGamePage(
                          questionCount: 0,
                          scoreCount: 0,
                        ),
                      ));
                },
                child: const SizedBox(
                  width: 300,
                  height: 100,
                  child: Center(
                      child:
                          Text("Start Game", style: TextStyle(fontSize: 20))),
                )),
          ))
        ]));
  }
}

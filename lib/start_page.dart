import 'package:flutter/material.dart';
import 'game_page.dart';

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
                          builder: (context) => const GamePage(
                            questionCount: 0,
                            scoreCount: 0,
                            responseText: "",
                            weekInput: "All",
                          ),
                        ));
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                        child:
                            Text("Start Game - All Weeks", style: TextStyle(fontSize: 20))),
                  )),
            ),
          ),
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
                          builder: (context) => const GamePage(
                            questionCount: 0,
                            scoreCount: 0,
                            responseText: "",
                            weekInput: "38",
                          ),
                        ));
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                        child:
                            Text("Start Game - Week 38", style: TextStyle(fontSize: 20))),
                  )),
            ),
          ),
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
                          builder: (context) => const GamePage(
                            questionCount: 0,
                            scoreCount: 0,
                            responseText: "",
                            weekInput: "39",
                          ),
                        ));
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                        child:
                            Text("Start Game - Week 39", style: TextStyle(fontSize: 20))),
                  )),
            ),
          ),
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
                          builder: (context) => const GamePage(
                            questionCount: 0,
                            scoreCount: 0,
                            responseText: "",
                            weekInput: "40",
                          ),
                        ));
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                        child:
                            Text("Start Game - Week 40", style: TextStyle(fontSize: 20))),
                  )),
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:glose_app/home_page.dart';
import '../universal_funcs.dart';

class MatchEndPage extends StatelessWidget {
  const MatchEndPage(
      {super.key,
      required this.scoreCount,
      required this.weekInput,
      required this.startTime,
      required this.endTime});

  final int scoreCount;
  final String weekInput;
  final int startTime;
  final int endTime;
  

  @override
  Widget build(BuildContext context) {
    int totalQuestionCount = weekToQuestionCount(weekInput);
    final double totalTime = (endTime - startTime) / 1000;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Glose App"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(20)),
          Center(
              child: Text(
            "Score: $scoreCount / $totalQuestionCount",
            style: const TextStyle(fontSize: 20),
          )),
          Center(
              child: Text(
            "Time: $totalTime",
            style: const TextStyle(fontSize: 20),
          )),
          const Padding(padding: EdgeInsets.all(10)),
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
                          builder: (context) => const HomePage(),
                        ));
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(
                        child: Text("Restart Game",
                            style: TextStyle(fontSize: 20))),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

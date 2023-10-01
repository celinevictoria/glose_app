import 'package:flutter/material.dart';
import 'match_start_button.dart';

class MatchStartPage extends StatelessWidget {
  const MatchStartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //List<String> matchList = matchListFunc(weekCount);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Glose App"),
          //automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          const Padding(padding: EdgeInsets.all(30)),
          //MatchStartButton(weekInput: "All Weeks"),
          MatchStartButton(weekInput: "Week 38"),
          MatchStartButton(weekInput: "Week 39"),
          MatchStartButton(weekInput: "Week 40"),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'match_start_button.dart';
import '../universal_funcs.dart';

class MatchStartPage extends StatelessWidget {
  const MatchStartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //List<String> matchList = matchListFunc(weekCount);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Match Mode"),
          //automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
          itemCount: weekList().length,
          itemBuilder: (context, index) {
            return MatchStartButton(weekInput: weekList()[index]);
          },
        ))
        ]));
  }
}

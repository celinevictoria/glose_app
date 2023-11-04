import 'package:flutter/material.dart';
import 'timed_start_button.dart';
import '../universal_funcs.dart';

class TimedStartPage extends StatelessWidget {
  const TimedStartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //List<String> matchList = matchListFunc(weekCount);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Timed Mode"),
          //automaticallyImplyLeading: false,
        ),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
          itemCount: weekList().length,
          itemBuilder: (context, index) {
            return TimedStartButton(weekInput: weekList()[index]);
          },
        ))
        ]));
  }
}

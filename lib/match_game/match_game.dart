import 'package:flutter/material.dart';
import 'match_list_func.dart';
import '../option_list.dart';
import 'match_game_card_list.dart';
//import 'match_list_func.dart';

class MatchGamePage extends StatelessWidget {
  MatchGamePage({
    super.key,
    required this.questionCount,
    required this.scoreCount,
  });

  final int questionCount;
  final int scoreCount;
  final Map<String, String> matchList = matchListFunc();
  
  //final Map<String, List<String>> masterList = masterMapFuncAll("Week 40");
  final int totalQuestionCount = weekToQuestionCount("Week 40");

  @override
  Widget build(BuildContext context) {
    final List<String> matchListKeys = matchList.keys.toList()..shuffle();
    final List<String> matchListValues = matchList.values.toList()..shuffle();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Match game"),
        automaticallyImplyLeading: false,
      ),
      body: MatchAnswerCardList(
        matchListKeys: matchListKeys,
        matchListValues: matchListValues,
        questionCount: questionCount,
        scoreCount: scoreCount,
        weekInput: "Week 40",
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'match_game_card.dart';
import 'match_list_func.dart';

class MatchAnswerCardList extends StatefulWidget {
  const MatchAnswerCardList(
      {super.key,
      required this.matchListKeys,
      required this.matchListValues,
      required this.questionCount,
      required this.scoreCount,
      required this.weekInput});

  final List<String> matchListKeys;
  final List<String> matchListValues;
  final int questionCount;
  final int scoreCount;
  final String weekInput;

  @override
  State<MatchAnswerCardList> createState() => _MatchAnswerCardListState();
}

class _MatchAnswerCardListState extends State<MatchAnswerCardList> {
  final Map<String, String> matchList = matchListFunc();
  int selectedIndexEng = -1;
  int selectedIndexNor = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //const Padding(padding: EdgeInsets.all(30)),
        Flexible(
          child: ListView.builder(
              itemCount: matchList.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  //elevation: 0,
                  shape: selectedIndexEng == index
                      ? RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        )
                      : null,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndexEng = index;
                      });
                    },
                    child: SizedBox(
                      width: 150,
                      height: 100,
                      child: Center(
                          child: Text(widget.matchListKeys.elementAt(index),
                              style: const TextStyle(fontSize: 20))),
                    ),
                  ),
                );
              }),
        ),

        //const Padding(padding: EdgeInsets.all(30)),
        Flexible(
          child: ListView.builder(
              itemCount: matchList.length,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.hardEdge,
                  //elevation: 0,
                  shape: selectedIndexNor == index
                      ? RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        )
                      : null,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndexNor = index;
                      });
                    },
                    child: SizedBox(
                      width: 150,
                      height: 100,
                      child: Center(
                          child: Text(widget.matchListValues.elementAt(index),
                              style: const TextStyle(fontSize: 20))),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

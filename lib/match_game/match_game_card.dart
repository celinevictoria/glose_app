import 'package:flutter/material.dart';
import 'match_game.dart';
import '../end_page.dart';
import '../option_list.dart';

class MatchAnswerCard extends StatefulWidget {
  const MatchAnswerCard(
      {super.key,
      required this.cardText,
      required this.questionCount,
      required this.scoreCount,
      required this.weekInput,
      required this.index});

  final String cardText;
  final int questionCount;
  final int scoreCount;
  final String weekInput;
  final int index;

  @override
  State<MatchAnswerCard> createState() => _MatchAnswerCardState();
}

class _MatchAnswerCardState extends State<MatchAnswerCard> {
  //bool _isSelected = false;
  int selectedIndex = -1;
  final List<String> answerList = answerListFunc();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      //elevation: 0,
      shape: selectedIndex == widget.index
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            )
          : null,
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = widget.index;
          });
        },
        child: SizedBox(
          width: 150,
          height: 100,
          child: Center(
              child:
                  Text(widget.cardText, style: const TextStyle(fontSize: 20))),
        ),
      ),
    );
  }
}

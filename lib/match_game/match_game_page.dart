import 'package:flutter/material.dart';
import 'match_funcs.dart';

import '../universal_funcs.dart';
import '../end_page.dart';

// ignore: must_be_immutable
class MatchGamePage extends StatefulWidget {
  MatchGamePage(
      {super.key, required this.questionCount, required this.weekCount, required this.matchList
      //required this.scoreCount,
      });

  final int questionCount;
  final String weekCount;
  List<String> matchList;
  //final int scoreCount;

  @override
  State<MatchGamePage> createState() => _MatchGamePageState();
}

class _MatchGamePageState extends State<MatchGamePage> {
  int scoreCount = 0;
  String responseText = "";
  //final Map<String, String> matchList = matchMapFuncEngToNor();
  final Map<String, String> matchMapEng = matchMapFuncEngToNor();
  final Map<String, String> matchMapNor = matchMapFuncEngToNor();

  //List<int> selectedList = List<int>.filled(2, -1);
  List<int> selectedList = [-1, -1];
  int lastChanged = -1;

  @override
  Widget build(BuildContext context) {
    final int totalQuestionCount = weekToQuestionCount(widget.weekCount);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Match Mode"),
          automaticallyImplyLeading: false,
          actions: [
            Text(
              "Score: $scoreCount / $totalQuestionCount",
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 20),
            ),
            //const Padding(padding: EdgeInsets.only(right: 0.3))
          ],
        ),
        body: SizedBox(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              //crossAxisSpacing: 16.0,
              //mainAxisSpacing: 16.0,
            ),
            //padding: const EdgeInsets.all(16.0),
            itemCount: widget.matchList.length,
            itemBuilder: (context, index) {
              return Card(
                clipBehavior: Clip.hardEdge,
                //elevation: 0,
                shape: selectedList.contains(index)
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
                      if (selectedList[0] == index) {
                        selectedList[0] = -1;
                      } else if (selectedList[1] == index) {
                        selectedList[1] = -1;
                      } else if (lastChanged == -1) {
                        selectedList[0] = index;
                        lastChanged = 0;
                      } else if (lastChanged == 0) {
                        selectedList[1] = index;
                        lastChanged = 1;
                      } else if (lastChanged == 1) {
                        selectedList[0] = index;
                        lastChanged = 0;
                      }
                    });
                    if (!selectedList.contains(-1)) {
                      String selectedOne = widget.matchList[selectedList[0]];
                      String selectedTwo = widget.matchList[selectedList[1]];
                      if (matchMapEng.keys.contains(selectedOne)) {
                        String engKey = selectedOne;
                        if (translateEngToNor(engKey) == selectedTwo) {
                          String? norVal = matchMapEng[engKey];
                          debugPrint("Eng: $engKey");
                          debugPrint("Nor: $norVal");
                          widget.matchList.remove(engKey);
                          widget.matchList.remove(norVal);
                          widget.matchList = widget.matchList..shuffle();
                          selectedList = [-1, -1];
                          scoreCount++;
                          responseText = "Correct!";
                        } else {
                          selectedList = [-1, -1];
                          scoreCount--;
                          responseText = "Try Again";
                        }
                      } else if (matchMapEng.keys.contains(selectedTwo)) {
                        String engKey = selectedTwo;
                        if (translateEngToNor(engKey) == selectedOne) {
                          String? norVal = matchMapEng[engKey];
                          debugPrint("Eng: $engKey");
                          debugPrint("Nor: $norVal");
                          widget.matchList.remove(engKey);
                          widget.matchList.remove(norVal);
                          widget.matchList = widget.matchList..shuffle();
                          selectedList = [-1, -1];
                          scoreCount++;
                          responseText = "Correct!";
                        } else {
                          selectedList = [-1, -1];
                          scoreCount--;
                          responseText = "Try Again";
                        }
                      } else if ((matchMapEng.keys.contains(selectedOne) &&
                              matchMapEng.keys.contains(selectedTwo)) ||
                          (matchMapEng.values.contains(selectedOne) &&
                              matchMapEng.values.contains(selectedTwo))) {
                        selectedList = [-1, -1];
                        scoreCount--;
                      }
                    }
                    if (widget.matchList.isEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EndPage(
                              scoreCount: scoreCount,
                              weekInput: widget.weekCount,
                            ),
                          ));
                    }
                  },
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(
                        child: Text(
                      widget.matchList[index],
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  responseText,
                  style: const TextStyle(fontSize: 20),
                )
              ],
            )));
  }
}

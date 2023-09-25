import 'package:flutter/material.dart';
import 'start_page.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key, required this.scoreCount});

  final int scoreCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Glose App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$scoreCount / 17")),
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
                          builder: (context) => const StartPage(),
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

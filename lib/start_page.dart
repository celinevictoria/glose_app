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
      body: Center(
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: InkWell(
              splashColor: const Color(0xff6750a4).withAlpha(30),
              onTap: () {
                debugPrint("Tapped");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GamePage(
                        questionCount: 0,
                      ),
                    ));
              },
              child: const SizedBox(
                width: 300,
                height: 100,
                child: Center(child: Text("Start Game")),
              )),
        ),
      ),
    );
  }
}
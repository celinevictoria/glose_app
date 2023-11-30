import 'package:flutter/material.dart';
import 'package:glose_app/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorSchemeSeed: const Color.fromARGB(255, 236, 247, 230),
        useMaterial3: true,
        //scaffoldBackgroundColor: const Color.fromARGB(255, 236, 247, 230),
      ),
      home: const HomePage(),
    );
  }
}
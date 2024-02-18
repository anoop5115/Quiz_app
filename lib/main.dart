import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? currentScreen;
  @override
  void initState() {
    currentScreen = HomeScreen(activeScreen);
    super.initState();
  }

  void activeScreen() {
    setState(() {
      currentScreen = Quiz(activeScreen1: activeScreen1);
    });
  }

  void activeScreen1() {
    setState(() {
      currentScreen = Result(restart: restart);
    });
  }

  void restart() {
    setState(() {
      currentScreen = HomeScreen(activeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: currentScreen,
    );
  }
}

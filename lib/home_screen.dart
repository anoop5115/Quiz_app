import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text(
                  "QUIZ APP",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: ElevatedButton(
                    onPressed: () {
                      startQuiz();
                    },
                    child: Text(
                      "Let's begin",
                    )),
              )
            ],
          ),

          // child: Image.asset('lib/assets/we.jpeg'),
        ),
      ],
    ));
  }
}

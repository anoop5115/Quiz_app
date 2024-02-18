import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({required this.restart, Key? key}) : super(key: key);
  final void Function() restart;
  final List<String> selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.black38),
        child: Column(
          children: [
            Text("you answered x out of y"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  restart.call();
                },
                child: Text("restart"))
          ],
        ),
      ),
    );
  }
}

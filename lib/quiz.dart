import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/models/data/questionsfile.dart';

import 'answerbutton.dart';

class Quiz extends StatefulWidget {
  const Quiz({required this.activeScreen1, super.key});
  final Function() activeScreen1;

  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var c = 0;
  answerQuestion() {
    setState(() {
      c++;
    });
  }

  void choesAns(String ans1) {
    selectedAnswers.add(ans1);
    if (selectedAnswers.length == questions.length) {
      widget.activeScreen1();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[c];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            ...currentQuestion.answers.map((ans) {
              return AnswerButton(
                answer: ans,
                onTap: answerQuestion,
                selectedQ: choesAns,
              );
            }),
            // const SizedBox(
            //   height: 20,
            // ),
            // AnswerButton(answer: currentQuestion.answers[0]),
            // const SizedBox(
            //   height: 20,
            // ),
            // AnswerButton(answer: currentQuestion.answers[1]),
            // const SizedBox(
            //   height: 20,
            // ),
            // AnswerButton(answer: currentQuestion.answers[2]),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}

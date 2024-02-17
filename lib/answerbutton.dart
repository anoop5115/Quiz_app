import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answer, this.onTap, Key? key})
      : super(key: key);
  final String answer;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            answer,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
        ),
      ),
    );
  }
}

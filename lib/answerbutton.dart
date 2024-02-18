import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answer, this.onTap, required this.selectedQ, Key? key})
      : super(key: key);
  final String answer;
  final Function()? onTap;
  final Function(String) selectedQ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: () {
            onTap?.call();
            selectedQ(answer);
          },
          child: Text(
            answer,
            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
        ),
      ),
    );
  }
}

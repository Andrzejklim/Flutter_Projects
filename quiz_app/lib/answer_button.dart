import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding:  const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            foregroundColor: const Color.fromARGB(255, 228, 225, 225),
            backgroundColor: const Color.fromARGB(172, 117, 12, 170),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10))),
        child: Text(answerText, textAlign: TextAlign.center), );
  }
}

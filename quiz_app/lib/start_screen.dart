import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 270,
            width: 270,
            color: const Color.fromARGB(132, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
            width: 50,
            
          ),
          const Text(
            "Learn Flutter the fun way!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 25,
            width: 25,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color.fromRGBO(134, 0, 144, 0.498)),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start quiz",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}

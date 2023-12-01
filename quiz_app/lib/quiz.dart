import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  // Widget? activeScreen;
  // @override
  // void initState(){
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  // void switchScreen(){
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == "questions-screen"){
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 176, 87, 194),
                Color.fromARGB(255, 56, 2, 81)
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";
import "package:quiz_app/data/questions.dart";
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

 
  void answerQuestion(String selectedAnswer){
     widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: 
              
              GoogleFonts.lato(
                textStyle: const TextStyle(color: Colors.white),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: (){
                    answerQuestion(answer);
                  },
                );
              },
            ),
            // AnswerButton(answerText: currentQuestion.answers[0],onTap: (){},),
            // AnswerButton(answerText: currentQuestion.answers[1],onTap: (){},),
            // AnswerButton(answerText: currentQuestion.answers[2],onTap: (){},),
            // AnswerButton(answerText: currentQuestion.answers[3],onTap: (){},),
          ],
        ),
      ),
    );
  }
}

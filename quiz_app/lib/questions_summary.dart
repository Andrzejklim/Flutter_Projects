import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // final bool isCorrectAnswer;
    // isCorrectAnswer = summaryData.map((data){
    //   return 
    // })

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Container(
                height: 25,
                width: 25,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                    color: data['user_answer'] == data['correct_answer'] ? const Color.fromARGB(255, 33, 243, 149) : Color.fromARGB(255, 220, 72, 72), 
                    shape: BoxShape.circle),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    (data['question'] as String),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data['user_answer'] as String,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 107, 187, 244)),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 106, 255, 210)),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            )
          ]);
        }).toList()),
      ),
    );
  }
}

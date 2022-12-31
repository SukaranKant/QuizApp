import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final Function answerQuestion;

  Quiz({
    this.question,
    this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        (question['questionText']),
      ),
      ...(question['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(
          () => answerQuestion(answer['score']),
          answer['text'],
        );
      }).toList()
    ]);
  }
}

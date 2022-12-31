import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:  const EdgeInsets.all(15.0),
      child : Text(
      questionText,
      style: TextStyle(
        fontSize: 28,
        color: Colors.lightGreen,
      ),
      textAlign: TextAlign.center,
    ));
  }
}

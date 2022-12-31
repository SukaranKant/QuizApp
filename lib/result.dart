import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  final Function resetQuizHandler;

  Result(this.totalScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText = 'You did it';
    if (totalScore <= 8) {
      resultText = 'You are awsome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable.';
    } else if (totalScore <= 16) {
      resultText = 'you are strange.';
    } else {
      resultText = 'you are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuizHandler,
            child: const Text(
              'Reset Quiz!',
            ),
          ),
        ],
      ),
    );
  }
}

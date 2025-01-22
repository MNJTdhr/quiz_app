// lib/screens/result_screen.dart
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    required this.score,
    required this.totalScore,
    required this.onClickMoveToStart,
    super.key,
  });

  final void Function() onClickMoveToStart;
  final int score;
  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your Score is $score out of $totalScore",
          style: TextStyle(fontSize: 20),
        ),
        //todo: display lists of answers attempted, right or wrong. If wrong also add the correct answer.
        // Text(
        //   "List of Answers attempted:",
        //   style: TextStyle(fontSize: 20),
        // ),
        ElevatedButton.icon(
          onPressed: onClickMoveToStart,
          icon: Icon(
            Icons.restart_alt,
            color: Colors.white,
          ),
          label: Text("Restart"),
        ),
      ],
    );
  }
}

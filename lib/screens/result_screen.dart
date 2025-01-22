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
        Text(
          "List of answered questions",
          style: TextStyle(fontSize: 20),
        ),
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

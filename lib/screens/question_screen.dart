// lib/screens/question_screen.dart
import 'package:flutter/material.dart';
import 'package:quiz_app/components/my_button.dart';
import 'package:quiz_app/models/questions_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int quizQuestions = 0;

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[quizQuestions];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Text(
            currentQuestion.quizQuestions,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ...currentQuestion.quizAnswers.map((item) {
          return MyButton(onPressed: () {}, incomingText: item);
        })
      ],
    );
  }
}

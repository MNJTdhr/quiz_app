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

    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              currentQuestion.quizQuestions,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ...currentQuestion.getShuffledAnswers().map((answerItems) {
            return MyButton(onPressed: () {}, incomingText: answerItems);
          }), 
        ],
      ),
    );
  }
}

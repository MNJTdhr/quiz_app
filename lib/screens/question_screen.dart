// lib/screens/question_screen.dart
import 'package:flutter/material.dart';
import 'package:quiz_app/components/my_button.dart';
import 'package:quiz_app/models/questions_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void changeQuestion(String selectdAnswer) {
    widget.onSelectAnswer(selectdAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];

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
            return MyButton(
              onPressed: () {
                changeQuestion(answerItems);
              },
              incomingText: answerItems,
            );
          }),
        ],
      ),
    );
  }
}

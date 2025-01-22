//quiz dart
import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_data.dart';
import 'screens/start_page.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void choosenAnswers(String answers) {
    selectedAnswers.add(answers);

    int calculateScore() {
      int score = 0;
      for (int i = 0; i < selectedAnswers.length; i++) {
        if (selectedAnswers[i] == questions[i].quizAnswers[0]) {
          score++;
        }
      }
      return score;
    }

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
            score: calculateScore(),
            totalScore: questions.length,
            onClickMoveToStart: switchScreenFromResulltToStartScreen);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartPage(switchScreenFromStartToQuestionScreen);
  }

  void switchScreenFromStartToQuestionScreen() {
    setState(() {
      activeScreen = QuestionScreen(choosenAnswers);
    });
  }

  void switchScreenFromResulltToStartScreen() {
    setState(() {
      activeScreen = StartPage(switchScreenFromStartToQuestionScreen);
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Quize App")),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(child: Center(child: activeScreen)),
      ),
    );
  }
}

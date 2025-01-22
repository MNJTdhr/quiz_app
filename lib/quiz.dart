//quiz dart
import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_data.dart';
import 'screens/start_page.dart';
import 'screens/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswer = [];

  void choosenAnswers(String answers) {
    selectedAnswer.add(answers);

    if (selectedAnswer.length == questions.length) {
      setState(() {
      activeScreen = StartPage(switchScreenFromStartToQuestionScreen);
        
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

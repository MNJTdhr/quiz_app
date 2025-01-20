import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Center(
            child: Text("Questions?"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "data",
              ),
            ),
          ),
        ),
      ],
    );
  }
}

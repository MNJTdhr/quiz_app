//start page widget
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.all(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/q.png"),
          ),
        ),
        Center(
          child: OutlinedButton.icon(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            
            onPressed: startQuiz,
            
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white),
              backgroundColor: Colors.blue,
            ),
            label: Text(
              "Start",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

// lib/components/my_button.dart
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onPressed,
    required this.incomingText,
    super.key,
  });

  final String incomingText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: onPressed,
          child: Text(incomingText, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

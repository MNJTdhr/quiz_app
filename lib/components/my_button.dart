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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: onPressed,
      child: Text(incomingText, style: TextStyle(color: Colors.white)),
    );
  }
}

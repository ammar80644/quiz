
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.text, required this.onTap});

  final String text; // Changed from Text widget to String for simplicity
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(width: 135,height: 70,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5), // Margin added
      padding: EdgeInsets.all(3), // Padding added around the button
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10), // Internal padding
          backgroundColor: Color(0xFF762945),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text, textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

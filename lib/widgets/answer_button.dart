import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback onTap;
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        ),
        child: Text(answerText, textAlign: TextAlign.center),
      ),
    );
  }
}

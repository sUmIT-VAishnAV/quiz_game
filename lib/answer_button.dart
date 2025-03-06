import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() ontap;
  const AnswerButton({
    super.key,
    required this.answer,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            backgroundColor: const Color.fromARGB(255, 80, 39, 84),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0))),
        child: Text(
          answer,
          textAlign: TextAlign.center,
        ));
  }
}

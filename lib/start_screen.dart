import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200.0,
          height: 200.0,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80.0,
        ),
         Text(
          "Let's Play Quiz",
          style: GoogleFonts.lato(
              fontSize: 28.0, color: const Color.fromARGB(255, 235, 222, 222)),
        ),
        const SizedBox(
          height: 30.0,
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.arrow_forward),
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}

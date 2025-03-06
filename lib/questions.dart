import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const Questions({super.key, required this.onSelectAnswer});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestions.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 230, 218, 243),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ...currentQuestions.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answer: answer,
                  ontap: () {
                    answerQuestion(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  const QuestionsScreen({required this.onSelectAnswer, super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestions(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsData[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: .stretch,
          mainAxisAlignment: .center,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                onTap: () => answerQuestions(answer),
                answerText: answer,
              );
            }),
          ],
        ),
      ),
    );
  }
}

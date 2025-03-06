import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
            Text(((int.parse(data['question'] as String)) + 1).toString()),

              Column(
                children: [
                  Text(data['question']as String),
                  const SizedBox(height: 5.0,),
                  Text(data['user_answer']as String),
                  Text(data['correct_answer']as String),
                ],
              )
            ],
          );
        },
      ).toList(),
    );
  }
}

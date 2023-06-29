import 'package:flutter/material.dart';
import 'package:demo_quiz/data/questions.dart';
import 'package:demo_quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSelectedSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].question,
        'correct-answer': questions[i].answers[0],
        'chosen-answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    var summaryData = getSelectedSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (element) {
        return element['correct-answer'] == element['chosen-answer'];
      },
    ).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'You answered $numCorrectQuestions of $numTotalQuestions questions correctly..'),
            const SizedBox(height: 15),
            QuestionsSummary(summaryData),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:demo_quiz/results/result_summary.dart';
import 'package:flutter/material.dart';
import 'package:demo_quiz/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.choosenAnswers, required this.onRestart});

  final List<String> choosenAnswers;
  final void Function() onRestart;

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
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered $numCorrectQuestions of $numTotalQuestions questions correctly..',
              style: const TextStyle(fontSize: 22, color: Colors.amberAccent),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            ResultSummary(summaryData),
            const SizedBox(height: 20),
            TextButton(
              onPressed: onRestart,
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

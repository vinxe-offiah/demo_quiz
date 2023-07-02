import 'package:flutter/material.dart';
import 'package:demo_quiz/results/result_indexer.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    var isCorrectAnswer =
        itemData['chosen-answer'] == itemData['correct-answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResultIndexer(
          questionIndex: itemData['question-index'] as int,
          isCorrectAnswer: isCorrectAnswer,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String),
              const SizedBox(height: 7),
              Text(itemData['chosen-answer'] as String),
              Text(itemData['correct-answer'] as String),
            ],
          ),
        ),
      ],
    );
  }
}

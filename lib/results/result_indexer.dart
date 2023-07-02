import 'package:flutter/material.dart';

class ResultIndexer extends StatelessWidget {
  const ResultIndexer(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    var questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? Colors.blue : Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString()),
    );
  }
}

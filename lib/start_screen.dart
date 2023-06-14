import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.choseStart, {super.key});

  final void Function() choseStart;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 350,
            color: Colors.white70,
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(color: Colors.white60, fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: choseStart,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

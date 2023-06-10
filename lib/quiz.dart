import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
}


class _QuizState extends State<Quiz> {

  @override
  Widget build(context) {
    return MaterialApp(home: Scaffold(body: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.deepPurple, Colors.deepPurpleAccent],),),),),);
  }
}
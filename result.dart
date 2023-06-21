import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Text(
        "Welldone Your Score is : $score / 10"
         CrossAxisAlignment.center,
        style: const TextStyle(
          
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 70,
        ),
      ),
    );
  }
}
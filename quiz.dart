import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, dynamic>> questions;
  final int questionIndex;

  const Quiz({
    super.key,
    required this.answerQuestion,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Question(questions[questionIndex]["question"] as String),
        ...(questions[questionIndex]["answers"] as List<String>).map((ans) {
          return Answer(
            answerQuestion: answerQuestion,
            ans: ans,
            correctAns: questions[questionIndex]["correctAns"],
          );
        }).toList(),
      ],
    );
  }
}
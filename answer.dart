import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String ans;
  final String correctAns;
  const Answer({
    required this.answerQuestion,
    required this.ans,
    required this.correctAns,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        int res;
        ans == correctAns ? res = 2 : res = 0;
        answerQuestion(res);
      },
      child: Text(ans),
    );
  }
}
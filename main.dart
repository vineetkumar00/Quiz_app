
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  static const List<Map<String, dynamic>> _questions = [
    {
      "question":
          "The planet that lies at the outermost orbit of the solar system is ?",
      "answers": ["Saturn", "Neptune", "Mercury", "Uranus"],
      "correctAns": "Neptune",
    },
    {
      "question":
          " Which of the following phenomena cannot be observed on the surface of the Moon ?",
      "answers": [
        "Rising and setting of the Sun",
        "Solar eclipse",
        "Motion of comets",
        "Twinkling of stars"
      ],
      "correctAns": "Twinkling of stars",
    },
    {
      "question": "The name of the galaxy in which the earth is a planet is ?",
      "answers": ["Andromeda", "Orgophiya", "Ursa Major", "Milky Way"],
      "correctAns": "Milky Way",
    },
    {
      "question": "The coldest planet in the solar system is ?",
      "answers": ["Pluto", "Venus", "Uranus", "Jupiter"],
      "correctAns": "Uranus",
    },
    {
      "question":
          "Which of the following planets rotates in a direction opposite to the direction of earth's rotation ?",
      "answers": ["Mars", "Jupiter", "Venus", "Mercury"],
      "correctAns": "Venus",
    },
  ];

  void _answerQuestion(int res) {
    setState(() {
      totalScore += res;
      _questionIndex = (_questionIndex + 1);
    });
  }

  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      theme: ThemeData(
        primarySwatch: (Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SPACE QUIZ APP"),
        ),
        floatingActionButton: ElevatedButton(
          child: const Text(
            "Reset Quiz",
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            _resetQuiz();
          },
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: _questionIndex >= _questions.length
              ? Result(totalScore)
              : Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

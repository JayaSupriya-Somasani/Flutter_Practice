import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'red', 'score': 6},
        {'text': 'green', 'score': 10},
        {'text': 'blue', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your animal ?',
      'answer': [
        {'text': 'lion', 'score': 4},
        {'text': 'deer', 'score': 2},
        {'text': 'elephant', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favourite player?',
      'answer': [
        {'text': 'kohli', 'score': 8},
        {'text': 'dhoni', 'score': 3},
        {'text': 'sachin', 'score': 7}
      ]
    },
  ];
  var _questionIndex = 0;
  var _toatlScore = 0;

  void _restQuiz() {
    setState(() {
      _toatlScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _toatlScore = _toatlScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer Chosen !");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(_toatlScore, _restQuiz),
        ));
  }
}

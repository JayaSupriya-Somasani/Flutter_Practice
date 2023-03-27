import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': ['red', 'green', 'blue']
    },
    {
      'questionText': 'What\'s your animal ?',
      'answer': ['lion', 'deer', 'elephant']
    },
    {
      'questionText': 'What\'s your favourite player?',
      'answer': ['kohli', 'dhoni', 'sachin']
    },
  ];

  void _answerQuestion() {
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
          body: _questionIndex < questions.length
              ? Column(children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ])
              : const Center(
                  child: Text("You did it"),
                ),
        ));
  }
}

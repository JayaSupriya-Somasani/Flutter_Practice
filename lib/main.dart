import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex= questionIndex + 1;
    });

    print("Answer Chosen !");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favourite color?",
      "What\'s your favourite animal?"
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer1 !")),
            ElevatedButton(
                onPressed: answerQuestion,
                child: Text("Answer2 !")),
            ElevatedButton(
                onPressed: answerQuestion,
                child: const Text("Answer3 !")),
          ],
        ),
      ),
    );
  }
}

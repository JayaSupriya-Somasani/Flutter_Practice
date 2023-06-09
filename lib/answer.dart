import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red,textStyle: const TextStyle(color: Colors.white)),
        child:  Text(answerText),
      ),
    );
  }
}

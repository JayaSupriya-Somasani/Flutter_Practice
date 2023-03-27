import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback stateHandler;

  Result(this.resultScore,this.stateHandler);

  String get resultPhrase {
    String resultText = "You did it!";
    if (resultScore <= 8) {
      resultText = "You are Awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable";
    }else if(resultScore <=16){
      resultText="you are strange...!";
    }else{
      resultText="Try again..!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: stateHandler, child: Text("Restart Quiz"))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHanlder;

  Result(this.resultScore, this.resetHanlder);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are cool';
    } else if (resultScore <= 12) {
      resultText = 'Pretty very cool!';
    } else {
      resultText = 'Very crazy!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w100,
            ),
          ),
          RaisedButton(
            onPressed: resetHanlder,
            textColor: Colors.blue,
            hoverColor: Colors.red,
            child: Text(
              "Restart Quiz",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

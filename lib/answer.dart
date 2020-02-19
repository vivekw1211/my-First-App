import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function answerFunction;
  final String options;

  Answer (this.answerFunction, this.options);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text(options),
        onPressed: answerFunction,
      ),
    );
  }
}
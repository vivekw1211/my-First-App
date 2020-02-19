import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = [
    {
      'questionText': "What\'s your best color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 2},
        {'text': 'green', 'score': 3},
      ]
    },
    {
      'questionText': "How can you do this?",
      'answers': [
        {'text': 'This way', 'score': 9},
        {'text': 'That way', 'score': 1},
        {'text': 'Any Way', 'score': 6},
      ]
    },
  ];

  void _resetQuiz(){
    setState(() {
      _totalScore =0;
      _questionIndex = 0;
    });
  }

  void _answer(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
      print("More _questions available!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answer,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}

void main() => runApp(MyApp());

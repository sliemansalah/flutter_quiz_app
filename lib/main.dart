import 'package:flutter/material.dart';
import 'package:fultter_quiz/answer.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qusetionIndex = 0;

  void _answerQustion() {
    setState(() {
      _qusetionIndex = _qusetionIndex + 1;
    });
    print(_qusetionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text(
              'My First App',
            )),
            body: Column(children: [
              Question(questions[_qusetionIndex]),
              Answer(_answerQustion),
              Answer(_answerQustion),
              Answer(_answerQustion),
            ])));
  }
}

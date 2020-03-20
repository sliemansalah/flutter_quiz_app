import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qusetionIndex = 0;

  void _answerQustions() {
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
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQustions,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Answer 2 choosen"),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print("Answer 3 choosen"),
              ),
            ])));
  }
}

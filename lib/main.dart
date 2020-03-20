import 'package:flutter/material.dart';

// shift + alt + f to format document
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQustions() {
    print('answer chosen');
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
              Text('The question!'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQustions,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQustions,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQustions,
              ),
            ])));
  }
}

import 'package:flutter/material.dart';

// shift + alt + f to format document
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  var qusetionIndex = 0;

  void answerQustions() {
    setState((){
      qusetionIndex>1?qusetionIndex=0:qusetionIndex+=1;
    });  
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
              Text(questions[qusetionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQustions,
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

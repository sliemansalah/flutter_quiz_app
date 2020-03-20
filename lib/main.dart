import 'package:flutter/material.dart';

// shift + alt + f to format document
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
        'My First App',
      )),
      body: Text('This is my default text'),
      Text('Second text') // not true.
    ));
  }
}

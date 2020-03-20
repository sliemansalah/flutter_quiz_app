import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // final as never changed on code mode but changed on run mode
  Question(this.questionText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(10),
        child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}

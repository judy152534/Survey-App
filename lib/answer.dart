import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Constructor for pointer in main.dart(callBack)
  final VoidCallback selectHandler;
  final String answerString;

  Answer(this.selectHandler, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          child: Text(answerString),
          onPressed: selectHandler),
    );
  }
}

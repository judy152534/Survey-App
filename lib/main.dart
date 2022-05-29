import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp())
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    //setState will call build() again
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questions': 'Who are you?',
        'answers': ['Max', 'Min', 'Mod'],
      },
      {
        'questions': 'Where do you from?',
        'answers': ['Mars', 'Earth', 'Pluto'],
      },
      {
        'questions': 'What\'s your favorite color?',
        'answers': ['Black', 'Green', 'Yello'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // Column():Above or below, invisible widget
        body: Column(
          children: [
            Question(questions[_questionIndex]['questions'] as String),
            //Name of function, rather than result; otherwise execute when button built
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

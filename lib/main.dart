import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO:implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')), //appBar
      body: Column(
        children: [
          Question(questions[_questionIndex]), //Text
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 choosen')),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3 choosen'),
          ),
        ],
      ),
    ));
  }
}

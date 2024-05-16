import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/quiz.dart';
import './main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;
  var totalScore;

  void answerQuestions(int score) {
    setState(() {
      indexQuestion = indexQuestion + 1;
      totalScore = totalScore + score;
      print(totalScore);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionIndex': 'what is your name?',
        'answer': [
          {'text': 'bishal', 'score': 1},
          {'text': 'hari', 'score': 0},
          {'text': 'gopala', 'score': 1},
          {'text': 'bipin', 'score': 1},
        ],
      },
      {
        'questionIndex': 'what is your address?',
        'answer': [
          {'text': 'Banepa', 'score': 1},
          {'text': 'ktm', 'score': 0},
          {'text': 'sanga', 'score': 1},
          {'text': 'dhulikhel', 'score': 1},
        ],
      },
      {
        'questionIndex': 'what is your pet?',
        'answer': [
          {'text': 'dog', 'score': 1},
          {'text': 'cat', 'score': 0},
          {'text': 'fish', 'score': 1},
          {'text': 'rat', 'score': 1},
        ],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My Quiz"),
          ),
          body: (indexQuestion < questions.length)
              ? Quiz(
                  answerQuestions: answerQuestions,
                  indexQuestion: indexQuestion,
                  questions: questions)
              : Text("result")),
    );
  }
}

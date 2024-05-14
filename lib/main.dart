import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;

  void answerQuestions() {
    setState(() {
      indexQuestion = indexQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your name?',
      'what is your address?',
      'what is your pet name?'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My Quiz"),
          ),
          body: Column(
            children: [
              Quesiton(questions[indexQuestion]),
              SizedBox(
                height: 25,
              ),
              Answer(answerQuestions),
              Answer(answerQuestions),
              Answer(answerQuestions),
              Answer(answerQuestions),
            ],
          )),
    );
  }
}

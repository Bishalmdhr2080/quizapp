import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
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

  void answerQuestions() {
    setState(() {
      indexQuestion = indexQuestion + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionIndex': 'what is your name?',
        'answer': ['bishal', 'hari', 'gopal', 'bipin'],
      },
      {
        'questionIndex': 'what is your address?',
        'answer': ['banepa', 'sanga', 'bhaktapur', 'dhulikhel'],
      },
      {
        'questionIndex': 'what is your pet?',
        'answer': ['dog', 'cat', 'rat', 'fish'],
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My Quiz"),
          ),
          body: Column(
            children: [
              Quesiton(
                  value: questions[indexQuestion]['questionIndex'].toString()),
              ...(questions[indexQuestion]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answerQuestions, answer);
              }).toList(),
            ],
          )),
    );
  }
}

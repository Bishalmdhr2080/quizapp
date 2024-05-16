import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;

  int indexQuestion = 0;
  List<Map<String, Object>> questions;
  Quiz(
      {required this.answerQuestions,
      required this.indexQuestion,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Quesiton(value: questions[indexQuestion]['questionIndex'].toString()),
        ...(questions[indexQuestion]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(int.parse('score')),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}

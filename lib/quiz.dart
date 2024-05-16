import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;

  final int indexQuestion;
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
          return Answer(() => answerQuestions(('score')),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}

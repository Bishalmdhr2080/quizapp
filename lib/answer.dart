// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  void Function() sethandler;
  String receiveValue;
  Answer(this.sethandler,this.receiveValue);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        color: Colors.blue,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: sethandler,
          child: Text(receiveValue),
        ),
      ),
    );
  }
}

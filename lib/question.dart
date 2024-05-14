import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Quesiton extends StatelessWidget {
  String value;
  Quesiton(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(value,style: TextStyle(color: Colors.red),),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Quesiton extends StatelessWidget {
  String value;
  Quesiton({required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        value,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}

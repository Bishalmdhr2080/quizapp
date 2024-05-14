import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print('asnwer printed');
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your name?',
      'what is your address?'
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
              Text('your questions'),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('Answer1'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('Answer1'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('Answer1'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: Text('Answer1'),
              ),
            ],
          )),
    );
  }
}

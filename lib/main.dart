// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import './questions.dart';

void main() {
  runApp(AskApp());
}

class AskApp extends StatefulWidget {
  @override
  State<AskApp> createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  final ask = [
    'Qual sua cor favorita?',
    'Qual é seu animal favorito?',
  ];

  _awnser() {
    setState(() {
      selectAnswer++;
    });
    print(selectAnswer);
  }

  var selectAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AskApp'),
        ),
        body: Column(
          children: [
            Questions(ask[selectAnswer]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _awnser,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _awnser,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _awnser,
            ),
          ],
        ),
      ),
    );
  }
}

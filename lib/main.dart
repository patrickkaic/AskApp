// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print, non_constant_identifier_names
import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

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

  var _selectAnswer = 0;

  _reply() {
    setState(() {
      _selectAnswer++;
    });
    print(_selectAnswer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AskApp'),
        ),
        body: Column(
          children: [
            Questions(ask[_selectAnswer]),
            Answers('Resposta 1', _reply),
            Answers('Resposta 2', _reply),
            Answers('Resposta 3', _reply),
          ],
        ),
      ),
    );
  }
}

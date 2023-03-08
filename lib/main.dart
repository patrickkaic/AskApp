// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print, non_constant_identifier_names
import 'package:flutter/material.dart';
import './result.dart';
import 'quiz.dart';

void main() {
  runApp(AskApp());
}

class AskApp extends StatefulWidget {
  @override
  State<AskApp> createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  var _selectAnswer = 0;
  final _ask = const [
    {
      'texto': 'Qual sua cor favorita?',
      'repostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 8},
        {'texto': 'Verde', 'nota': 5},
        {'texto': 'Branco', 'nota': 7},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'repostas': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cabra', 'nota': 3},
        {'texto': 'Elefante', 'nota': 5},
        {'texto': 'Leão', 'nota': 9},
      ],
    },
    {
      'texto': 'Qual é sua bomba favorita?',
      'repostas': [
        {'texto': 'Trembolona', 'nota': 10},
        {'texto': 'Hemogenin', 'nota': 3},
        {'texto': 'Dianabol', 'nota': 5},
        {'texto': 'Nandrolona', 'nota': 9},
      ]
    }
  ];

  _reply() {
    setState(() {
      _selectAnswer++;
    });
  }

  bool get selectAnswers {
    return _selectAnswer < _ask.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AskApp'),
        ),
        body: selectAnswers
            ? Quiz(_ask, _selectAnswer, _reply)
            : Result('Parabéns, você concluiu!!!'),
      ),
    );
  }
}

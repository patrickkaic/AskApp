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
      'repostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'repostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é sua bomba favorita?',
      'repostas': ['Trembolona', 'Hemogenin', 'Dianabol', ' Nandrolona']
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

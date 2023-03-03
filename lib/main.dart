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
  var _selectAnswer = 0;

  _reply() {
    setState(() {
      _selectAnswer++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ask = [
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

    List<String> reponse = ask[_selectAnswer]['repostas'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AskApp'),
        ),
        body: Column(
          children: [
            Questions(ask[_selectAnswer]['texto'] as String),
            ...reponse.map((t) => Answers(t, _reply)).toList(),
          ],
        ),
      ),
    );
  }
}

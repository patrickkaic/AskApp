// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List ask;
  final int selectAnswer;
  final Function(int) reply;

  const Quiz(
      @required this.ask, @required this.selectAnswer, @required this.reply,
      {super.key});

  bool get selectAnswers {
    return selectAnswer < ask.length;
  }

  @override
  Widget build(BuildContext context) {
    List reponse = selectAnswers ? ask[selectAnswer]['repostas'] as List : [];
    return Column(
      children: [
        Questions(ask[selectAnswer]['texto'] as String),
        ...reponse.map((resp) {
          return Answers(
            resp['texto'].toString(),
            () => reply((resp['nota'] as int)),
          );
        }).toList(),
      ],
    );
  }
}

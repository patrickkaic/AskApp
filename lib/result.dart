// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final Function() restart;
  const Result(this.points, this.restart, {super.key});

  String get sentenceResult {
    if (points < 8) {
      return 'Parabéns';
    } else if (points < 12) {
      return 'Você é bom';
    } else if (points < 16) {
      return 'Impressionate';
    } else {
      return 'Nivel Jedi!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            sentenceResult,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: restart,
          child: Text(
            'Tentar novamente?',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        )
      ],
    );
  }
}

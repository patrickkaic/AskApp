// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String text;
  final Function() onSelect;

  Answers(this.text, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: Text(text),
          onPressed: onSelect,
        ),
      ),
    );
  }
}

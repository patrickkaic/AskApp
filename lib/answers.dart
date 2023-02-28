// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './main.dart';

class Answers extends StatelessWidget {
  final String text;
  final Function() onSelect;
  Answers({super.key, required this.text, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onSelect,
      ),
    );
  }
}

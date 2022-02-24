import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LargeText extends StatelessWidget {
  //LargeTest ko kun kun properties we want to change
  double size;
  final String text;
  final Color color;

  LargeText({
    Key? key,
    this.size = 30,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

import 'package:flutter/material.dart';

Alignment? startAlignment;
Alignment? endAlignment;

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 28,
      ),
    );
  }
}

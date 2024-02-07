import 'package:flutter/material.dart';
import 'package:first_app/dice_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          color1: Color.fromARGB(100, 182, 172, 100),
          color2: Color.fromARGB(192, 253, 251, 80)),
    ),
  ));
}

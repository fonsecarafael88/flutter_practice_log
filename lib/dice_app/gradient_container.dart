import 'package:flutter/material.dart';
import 'package:first_app/dice_app/dice_roll.dart';

class GradientContainer extends StatelessWidget {
  /* const GradientContainer({super.key, required this.colors});
  final List<Color> colors; */
  const GradientContainer(
      {super.key, required this.color1, required this.color2});
  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

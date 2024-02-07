import 'package:flutter/material.dart';
import 'package:first_app/dice_app/styled_text.dart';
import 'dart:math';

final randomizer = Random();

/* StyledText('Hello World Wide Web'), */
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText(text: 'Roll me', color: Colors.black),
        const SizedBox(height: 32),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 32),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, left: 32, right: 32),
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black87
                  .withOpacity(0.5), // Defines Text button text color
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

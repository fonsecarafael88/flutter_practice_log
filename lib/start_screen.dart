import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 280,
        ),
        const SizedBox(height: 80),
        const Text('Flutter Practice 101',
            style: TextStyle(color: Colors.white, fontSize: 28)),
        const SizedBox(height: 42),
        OutlinedButton(
          onPressed: () {},
          /* icon: const Icon(Icons.arrow_right_alt), */
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, left: 32, right: 32),
              foregroundColor: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Next', style: TextStyle(fontSize: 22)),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward),
            ],
          ),
          /*  style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(8)),
          ), */
        )
      ],
    ));
  }
}

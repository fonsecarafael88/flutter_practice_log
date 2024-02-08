import 'package:first_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:first_app/start_screen.dart';
import 'package:first_app/questions.dart';
import 'package:first_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  @override
  /* void initState() {
    super.initState();
    activeScreen = StartScreen(startQuiz: switchScreen);
  } */
  void switchScreen() {
    setState(() {
      /* activeScreen = const QuestionsScreen(); */
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(startQuiz: switchScreen);
    if (activeScreen == 'question-screen') {
      currentScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'results-screen') {
      currentScreen = const ResultsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: currentScreen,
        ),
      ),
    );
  }
}

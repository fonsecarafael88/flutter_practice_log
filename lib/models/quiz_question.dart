import 'package:first_app/data/questions.dart';

class QuizQuestion {
  const QuizQuestion({required this.text, required this.answers});
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // generates a shuffled list from a new list of answers that doesnt affects the original data.
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}

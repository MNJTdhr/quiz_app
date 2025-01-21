// lib/models/question_blueprint.dart
class QuestionBlueprint {
  final String quizQuestions;
  final List<String> quizAnswers;

  const QuestionBlueprint(this.quizQuestions, this.quizAnswers);

  List<String> getShuffledAnswers() {
    final quizAnswersShuffled = List.of(quizAnswers);
    quizAnswersShuffled.shuffle();
    return quizAnswersShuffled;
  }
}

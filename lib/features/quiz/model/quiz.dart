class Quiz {
  final QuizType type;
  final String question;
  final String correctAnswer;
  final List<String> answers;

  const Quiz({
    required this.type,
    required this.question,
    required this.correctAnswer,
    required this.answers,
  });
}

enum QuizType {
  text,
  picture,
}

import 'package:eng_app/core/ui/progress_widget.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/widgets/picture_quiz_widget.dart';
import 'package:eng_app/features/quiz/widgets/quiz_message_widget.dart';
import 'package:eng_app/features/quiz/widgets/text_quiz_widget.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  final String appBarTitle;
  final List<Quiz> quizes;

  const QuizPage({
    super.key,
    required this.appBarTitle,
    required this.quizes,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuizIndex = 0;
  String? selectAnswer;
  bool correct = false;

  @override
  void initState() {
    widget.quizes.shuffle();

    super.initState();
  }

  Quiz get currentQuiz => widget.quizes[currentQuizIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProgressWidget(),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 24,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (currentQuiz.type == QuizType.picture)
                          PictureQuizWidget(
                            quiz: currentQuiz,
                            colorBuilder: _colorBuilder,
                            onTap: _onAnswerTap,
                          )
                        else
                          TextQuizWidget(
                            quiz: currentQuiz,
                            colorBuilder: _colorBuilder,
                            onTap: _onAnswerTap,
                          ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (selectAnswer != null)
              QuizMessageWidget(
                isAnswerCorrect: selectAnswer == currentQuiz.correctAnswer,
              ),
          ],
        ),
      ),
    );
  }

  void _onAnswerTap(String item) async {
    if (selectAnswer != null) {
      return;
    }

    selectAnswer = item;

    setState(() {});

    await Future.delayed(
      const Duration(seconds: 2),
    );

    setState(() {
      selectAnswer = null;

      if (currentQuizIndex + 1 < widget.quizes.length) {
        currentQuizIndex++;
      } else {
        Navigator.pop(context);
      }
    });
  }

  Color? _colorBuilder(String item) {
    if (selectAnswer == item) {
      if (selectAnswer == currentQuiz.correctAnswer) {
        return Colors.green;
      }

      return Colors.red;
    }

    return null;
  }
}

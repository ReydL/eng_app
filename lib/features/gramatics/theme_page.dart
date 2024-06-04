import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Глагол To be'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: AppContainer(
                title: 'Affirmative form',
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/images/table_1.svg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AppContainer(
                title: 'Negative form',
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/images/table_2.svg'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onTap(context),
                child: const Text('Дальше'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static final quizes = [
    Quiz(
      type: QuizType.text,
      question: 'Charlie and I ___ best friends.',
      correctAnswer: 'are',
      answers: [
        'am',
        '\'m',
        'is',
        'are',
      ]..shuffle(),
    ),
    Quiz(
      type: QuizType.text,
      question: 'I ___ the best student.',
      correctAnswer: 'am',
      answers: [
        'am',
        'are',
        'is',
        'isn\'t',
      ]..shuffle(),
    ),
    Quiz(
      type: QuizType.text,
      question: 'My mom ___ the best wife.',
      correctAnswer: 'is',
      answers: [
        'am',
        'are',
        'is',
        'aren\'t',
      ]..shuffle(),
    ),
    Quiz(
      type: QuizType.text,
      question: 'I ___ from Pusan.',
      correctAnswer: 'am',
      answers: [
        'am',
        'are',
        'is',
        'isn\'t',
      ]..shuffle(),
    ),
  ];

  void _onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPage(
          appBarTitle: 'Практика',
          quizes: quizes,
        ),
      ),
    );
  }
}

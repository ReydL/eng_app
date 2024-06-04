import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:eng_app/features/main/widgets/category_item.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/quiz_page.dart';
import 'package:flutter/material.dart';

class GramaticsPage extends StatelessWidget {
  const GramaticsPage({super.key});

  List<LessonCategory> get _practiceCategories => [
        LessonCategory.practice,
        LessonCategory.mistakes,
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ежедневная тренировка'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
          AppContainer(
            title: 'Грамматика',
            child: CategoryItem(
              category: LessonCategory.theme,
              onTap: () => Navigator.pushNamed(
                context,
                LessonCategory.theme.routePath,
              ),
            ),
          ),
          const SizedBox(height: 20),
          AppContainer(
            title: 'Практика',
            child: ListView.separated(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = _practiceCategories.elementAt(index);

                return CategoryItem(
                  category: item,
                  onTap: () => _onTap(context),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemCount: _practiceCategories.length,
              shrinkWrap: true,
            ),
          ),
        ],
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

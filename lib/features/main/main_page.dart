import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:eng_app/features/main/widgets/category_item.dart';
import 'package:eng_app/features/main/widgets/user_widget.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/quiz_page.dart';
import 'package:eng_app/features/quiz/utils/fruts.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const _extraCategories = [
    LessonCategory.words,
    LessonCategory.video,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const UserWidget(),
              const SizedBox(height: 24),
              AppContainer(
                title: 'Основное',
                child: CategoryItem(
                  category: LessonCategory.dailyTraining,
                  onTap: () => _onItemCategoryTap(
                    context,
                    LessonCategory.dailyTraining,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              AppContainer(
                title: 'Дополнительно',
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = _extraCategories.elementAt(index);

                    return CategoryItem(
                      category: item,
                      onTap: () => _onItemCategoryTap(context, item),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: _extraCategories.length,
                  shrinkWrap: true,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  static final _wordQuizes = [
    Quiz(
      type: QuizType.picture,
      question: 'Pineapple',
      correctAnswer: 'assets/images/pineapple.svg',
      answers: Fruts.values.map((e) => e.iconPath).toList()..shuffle(),
    ),
    Quiz(
      type: QuizType.picture,
      question: 'Apple',
      correctAnswer: 'assets/images/apple.svg',
      answers: Fruts.values.map((e) => e.iconPath).toList()..shuffle(),
    ),
    Quiz(
      type: QuizType.picture,
      question: 'Melon',
      correctAnswer: 'assets/images/melon.svg',
      answers: Fruts.values.map((e) => e.iconPath).toList()..shuffle(),
    ),
    Quiz(
      type: QuizType.picture,
      question: 'Lemon',
      correctAnswer: 'assets/images/lemon.svg',
      answers: Fruts.values.map((e) => e.iconPath).toList()..shuffle(),
    ),
  ];

  void _onItemCategoryTap(
    BuildContext context,
    LessonCategory category,
  ) {
    if (category == LessonCategory.words) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizPage(
            appBarTitle: 'Words',
            quizes: _wordQuizes,
          ),
        ),
      );

      return;
    }

    Navigator.pushNamed(
      context,
      category.routePath,
    );
  }
}

import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:eng_app/features/main/widgets/category_item.dart';
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
            title: 'Тема',
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
                  onTap: () => Navigator.pushNamed(
                    context,
                    item.routePath,
                  ),
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
}

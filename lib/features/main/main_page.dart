import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/theme/app_colors.dart';
import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:eng_app/features/main/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<String> get _weekends => [
        'Пн',
        'Вт',
        'Ср',
        'Чт',
        'Пт',
        'Сб',
        'Вс',
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.bodyPrimary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xffD1C4E4), shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Привет User!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/images/settings.svg'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                color: AppColors.bodyPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Выполненные задания за неделю',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      children: _weekends
                          .map((e) => Container(
                                padding: const EdgeInsets.all(9),
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF4F2F7),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  e,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: AppColors.bodyPrimary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ежедневное задание',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = LessonCategory.values.elementAt(index);

                        return CategoryItem(
                          category: item,
                          onTap: () => Navigator.pushNamed(
                            context,
                            Routes.quizPath,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemCount: LessonCategory.values.length,
                      shrinkWrap: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

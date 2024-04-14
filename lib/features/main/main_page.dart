import 'package:eng_app/core/theme/app_colors.dart';
import 'package:eng_app/core/ui/app_container.dart';
import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:eng_app/features/main/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<LessonCategory> get _extraCategories => [
        LessonCategory.words,
        LessonCategory.video,
        LessonCategory.games,
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _userWidget(context),
              const SizedBox(height: 24),
              AppContainer(
                title: 'Ежедневная тренировка',
                child: CategoryItem(
                  category: LessonCategory.gramatics,
                  onTap: () => Navigator.pushNamed(
                    context,
                    LessonCategory.gramatics.routePath,
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
                      onTap: () => Navigator.pushNamed(
                        context,
                        item.routePath,
                      ),
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

  Container _userWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        color: AppColors.textWhite,
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
    );
  }
}

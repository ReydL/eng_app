import 'package:eng_app/core/theme/app_colors.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/widgets/quiz_picture_item.dart';
import 'package:flutter/material.dart';

class PictureQuizWidget extends StatelessWidget {
  final Quiz quiz;
  final void Function(String item)? onTap;
  final Color? Function(String item)? colorBuilder;

  const PictureQuizWidget({
    super.key,
    required this.quiz,
    this.colorBuilder,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Выберите верную картинку',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.bodyPrimary,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryPurple.withOpacity(0.6),
                blurRadius: 3,
              ),
            ],
          ),
          child: Text(
            quiz.question,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: AppColors.primaryPurple,
                ),
          ),
        ),
        const SizedBox(height: 24),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: quiz.answers
              .map(
                (answer) => QuizPictureItem(
                  icon: answer,
                  onTap: () => onTap?.call(answer),
                  color: colorBuilder?.call(answer),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

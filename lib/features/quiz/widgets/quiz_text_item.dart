import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QuizTextItem extends StatelessWidget {
  final String answer;
  final Color? color;
  final VoidCallback? onTap;

  const QuizTextItem({
    super.key,
    required this.answer,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.bodyPrimary,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: color ?? AppColors.primaryPurple.withOpacity(0.6),
              blurRadius: 3,
            ),
          ],
        ),
        child: Text(
          answer,
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(color: color),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

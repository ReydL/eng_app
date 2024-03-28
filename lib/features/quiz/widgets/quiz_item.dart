import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizItem extends StatelessWidget {
  final String icon;

  const QuizItem({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.bodyPrimary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryPurple.withOpacity(0.6),
            blurRadius: 3,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}

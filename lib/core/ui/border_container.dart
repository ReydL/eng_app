import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final String title;
  final double? height;

  const BorderContainer({super.key, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
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
        title,
        style: Theme.of(context).textTheme.displayLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}

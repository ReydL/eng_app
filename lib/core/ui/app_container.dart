import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const AppContainer({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.textWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

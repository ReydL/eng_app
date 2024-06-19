import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
              color: Color(0xffD1C4E4),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            'Привет User!',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

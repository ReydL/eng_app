import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).copyWith(bottom: 10, top: 0),
      color: AppColors.textWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getProgress(),
          _getSwitch(context),
        ],
      ),
    );
  }

  Widget _getProgress() {
    return Container(
      height: 16,
      width: 230,
      decoration: BoxDecoration(
        color: const Color(0xffBD92FB),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.hardEdge,
      child: const Row(
        children: [
          ColoredBox(
            color: Color(0xff8D47F3),
          ),
          ColoredBox(
            color: Color(0xffBD92FB),
          ),
        ],
      ),
    );
  }

  Widget _getSwitch(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          decoration: const BoxDecoration(
              color: AppColors.primaryPurple,
              borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(100))),
          child: Text(
            'En',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textWhite,
                ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          decoration: const BoxDecoration(
              color: AppColors.secondaryPurple,
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(100))),
          child: Text(
            'Ru',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textWhite,
                ),
          ),
        ),
      ],
    );
  }
}

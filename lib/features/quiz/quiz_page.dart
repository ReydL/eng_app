import 'package:eng_app/core/theme/app_colors.dart';
import 'package:eng_app/features/quiz/utils/fruts.dart';
import 'package:eng_app/features/quiz/widgets/quiz_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Новые слова'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 24,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Выберите верную картинку',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                _getSwitch(context),
                const Spacer(),
                SvgPicture.asset('assets/images/sound.svg'),
              ],
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
                'Pineapple',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const SizedBox(height: 24),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: Fruts.values
                  .map(
                    (e) => QuizItem(icon: e.iconPath),
                  )
                  .toList(),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Подтвердить'),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Пропустить'),
              ),
            ),
          ],
        ),
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
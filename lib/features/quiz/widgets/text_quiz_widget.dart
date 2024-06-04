import 'package:eng_app/core/ui/border_container.dart';
import 'package:eng_app/features/quiz/model/quiz.dart';
import 'package:eng_app/features/quiz/widgets/quiz_text_item.dart';
import 'package:flutter/material.dart';

class TextQuizWidget extends StatelessWidget {
  final Quiz quiz;
  final void Function(String item)? onTap;
  final Color? Function(String item)? colorBuilder;

  const TextQuizWidget({
    super.key,
    required this.quiz,
    this.onTap,
    this.colorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Выберите верный вариант',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        BorderContainer(
          title: quiz.question,
          height: 212,
        ),
        const SizedBox(height: 20),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3,
          children: quiz.answers
              .map(
                (answer) => QuizTextItem(
                  answer: answer,
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

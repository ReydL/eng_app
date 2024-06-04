import 'package:flutter/material.dart';

class QuizMessageWidget extends StatelessWidget {
  final bool isAnswerCorrect;

  const QuizMessageWidget({super.key, required this.isAnswerCorrect});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isAnswerCorrect ? Colors.green : Colors.red,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Text(
          isAnswerCorrect ? 'Верно!' : 'Неверно',
          style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
    );
  }
}

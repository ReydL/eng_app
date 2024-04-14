import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum LessonCategory {
  gramatics,
  words,
  video,
  theme,
  practice,
  mistakes,
  games;

  String get title => switch (this) {
        LessonCategory.gramatics => 'Грамматика',
        LessonCategory.words => 'Слова',
        LessonCategory.video => 'Видеоуроки',
        LessonCategory.games => 'Игры',
        LessonCategory.theme => 'Глагол to be',
        LessonCategory.practice => 'Задание',
        LessonCategory.mistakes => 'Ошибки',
      };

  String get iconPath => switch (this) {
        LessonCategory.gramatics => 'assets/images/books.svg',
        LessonCategory.words => 'assets/images/dialog.svg',
        LessonCategory.video => 'assets/images/video_icon.svg',
        LessonCategory.games => 'assets/images/joystick.svg',
        LessonCategory.theme => 'assets/images/chars.svg',
        LessonCategory.mistakes => 'assets/images/mistakes.svg',
        LessonCategory.practice => 'assets/images/practice.svg',
      };

  Color get color => switch (this) {
        LessonCategory.gramatics => AppColors.secondaryPurple,
        LessonCategory.words => AppColors.tertiaryPurple,
        LessonCategory.video => AppColors.orange,
        LessonCategory.games => AppColors.yellow,
        LessonCategory.theme => const Color(0xff9959F7),
        LessonCategory.mistakes => const Color(0xffFADF81),
        LessonCategory.practice => const Color(0xffF7AB5D),
      };

  String get routePath => switch (this) {
        LessonCategory.gramatics => Routes.dailyPath,
        LessonCategory.words => Routes.quizPath,
        LessonCategory.video => Routes.quizPath,
        LessonCategory.games => Routes.quizPath,
        LessonCategory.theme => Routes.themePath,
        LessonCategory.mistakes => Routes.quizPath,
        LessonCategory.practice => Routes.practicePath,
      };
}

import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum LessonCategory {
  dailyTraining,
  words,
  video,
  theme,
  practice,
  mistakes,
  games;

  String get title => switch (this) {
        LessonCategory.dailyTraining => 'Ежедневная\nтренировка',
        LessonCategory.words => 'Слова',
        LessonCategory.video => 'Видеоуроки',
        LessonCategory.games => 'Игры',
        LessonCategory.theme => 'Тема:\nГлагол to be',
        LessonCategory.practice => 'Задание',
        LessonCategory.mistakes => 'Ошибки',
      };

  String get iconPath => switch (this) {
        LessonCategory.dailyTraining => 'assets/images/daily_train.png',
        LessonCategory.words => 'assets/images/words_icon.svg',
        LessonCategory.video => 'assets/images/video_lessons.svg',
        LessonCategory.games => 'assets/images/joystick.svg',
        LessonCategory.theme => 'assets/images/theme_icon.svg',
        LessonCategory.mistakes => 'assets/images/mistakes_icon.svg',
        LessonCategory.practice => 'assets/images/task_icon.png',
      };

  Color get color => switch (this) {
        LessonCategory.dailyTraining => AppColors.secondaryPurple,
        LessonCategory.words => AppColors.tertiaryPurple,
        LessonCategory.video => AppColors.orange,
        LessonCategory.games => AppColors.yellow,
        LessonCategory.theme => AppColors.orange,
        LessonCategory.mistakes => AppColors.secondaryPurple,
        LessonCategory.practice => AppColors.yellow,
      };

  String get routePath => switch (this) {
        LessonCategory.dailyTraining => Routes.dailyPath,
        LessonCategory.words => Routes.quizPath,
        LessonCategory.video => Routes.videoPath,
        LessonCategory.games => Routes.quizPath,
        LessonCategory.theme => Routes.themePath,
        LessonCategory.mistakes => Routes.quizPath,
        LessonCategory.practice => Routes.practicePath,
      };
}

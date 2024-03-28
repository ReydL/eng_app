import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

enum LessonCategory {
  gramatics,
  words,
  video,
  games;

  String get title => switch (this) {
        LessonCategory.gramatics => 'Грамматика',
        LessonCategory.words => 'Речь и слова',
        LessonCategory.video => 'Видеоуроки',
        LessonCategory.games => 'Игры',
      };

  String get iconPath => switch (this) {
        LessonCategory.gramatics => 'assets/images/books.svg',
        LessonCategory.words => 'assets/images/dialog.svg',
        LessonCategory.video => 'assets/images/video_icon.svg',
        LessonCategory.games => 'assets/images/joystick.svg',
      };

  Color get color => switch (this) {
        LessonCategory.gramatics => AppColors.secondaryPurple,
        LessonCategory.words => AppColors.tertiaryPurple,
        LessonCategory.video => AppColors.orange,
        LessonCategory.games => AppColors.yellow,
      };
}

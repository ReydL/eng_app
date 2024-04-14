import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      height: 1.6,
      fontSize: 20,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: AppColors.textWhite,
      height: 1.6,
      fontSize: 18,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      color: AppColors.textWhite,
      height: 1.6,
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.primaryPurple,
      height: 1.6,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: AppColors.textGrey,
      height: 1.5,
      fontSize: 16,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'MultiroundPro',
      fontWeight: FontWeight.w400,
      color: AppColors.textWhite,
      height: 1.6,
      fontSize: 20,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      height: 1.3,
      fontSize: 24,
    ),
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.textWhite,
    foregroundColor: AppColors.primaryPurple,
    titleTextStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      height: 1.6,
      fontSize: 18,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return AppColors.primaryPurple;
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return AppColors.textWhite;
        },
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: AppColors.textWhite,
          height: 1.5,
          fontSize: 16,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(0, 54),
      ),
    ),
  ),
  primaryColor: AppColors.primaryPurple,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return AppColors.primaryPurple;
        },
      ),
      side: const MaterialStatePropertyAll(
        BorderSide(
          color: AppColors.primaryPurple,
          width: 1,
        ),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      minimumSize: MaterialStateProperty.all<Size>(
        const Size(0, 54),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: AppColors.textWhite,
          height: 1.5,
          fontSize: 16,
        ),
      ),
    ),
  ),
);

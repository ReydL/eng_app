import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/theme/app_theme.dart';
import 'package:eng_app/features/auth/auth_page.dart';
import 'package:eng_app/features/gramatics/gramatics_page.dart';
import 'package:eng_app/features/gramatics/task_page.dart';
import 'package:eng_app/features/gramatics/theme_page.dart';
import 'package:eng_app/features/main/main_page.dart';
import 'package:eng_app/features/quiz/quiz_page.dart';
import 'package:eng_app/features/registration/registration_page.dart';
import 'package:eng_app/features/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: _routes,
      title: 'Eng App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: Routes.welcomePath,
    );
  }

  Map<String, WidgetBuilder> get _routes => {
        Routes.welcomePath: (context) => const WelcomePage(),
        Routes.authPath: (context) => const AuthPage(),
        Routes.mainPath: (context) => const MainPage(),
        Routes.registrationPath: (context) => const RegistrationPage(),
        Routes.quizPath: (context) => const QuizPage(),
        Routes.dailyPath: (context) => const GramaticsPage(),
        Routes.practicePath: (context) => const TaskPage(),
        Routes.themePath: (context) => const ThemePage(),
      };
}

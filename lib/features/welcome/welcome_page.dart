import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 54,
          bottom: 24,
          left: 20,
          right: 20,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.secondaryPurple,
              AppColors.primaryPurple,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Text(
              'Открывай мир с английским языком',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 36),
            const Image(
              image: AssetImage('assets/images/enter_image.png'),
            ),
            const SizedBox(height: 45),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.textWhite,
                    foregroundColor: AppColors.primaryPurple),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.authPath);
                },
                child: const Text('Войти'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.registrationPath);
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.textWhite,
                    side: const BorderSide(color: AppColors.textWhite)),
                child: const Text('Зарегистрироваться'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/ui/app_text_field.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const AppTextField(hintText: 'Электронная почта'),
            const SizedBox(height: 12),
            const AppTextField(hintText: 'Пароль'),
            const SizedBox(height: 10),
            Text(
              'Забыли пароль?',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.mainPath);
                },
                child: const Text('Войти'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eng_app/core/ui/app_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const AppTextField(
              hintText: 'Электронная почта',
            ),
            const SizedBox(height: 12),
            const AppTextField(
              hintText: 'Пароль',
            ),
            const SizedBox(height: 12),
            const AppTextField(
              hintText: 'Повторите пароль',
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Зарегистрироваться'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

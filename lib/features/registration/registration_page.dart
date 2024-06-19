import 'package:eng_app/core/auth_service.dart';
import 'package:eng_app/core/ui/app_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final Map<String, String> users;

  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    AuthService.getUsers().then((value) => users = value);

    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Регистрация'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppTextField(
                hintText: 'Электронная почта',
                controller: _emailController,
                validator: validateEmail,
              ),
              const SizedBox(height: 12),
              AppTextField(
                hintText: 'Пароль',
                controller: _passwordController,
                validator: validatePassword,
              ),
              const SizedBox(height: 12),
              AppTextField(
                hintText: 'Повторите пароль',
                controller: _repeatPasswordController,
                validator: validatePassword,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await AuthService.registerUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле обязательно для заполнения';
    } else if (!value.contains('@') || value.contains(' ')) {
      return 'Почта заполнена не верно';
    } else if (users.containsKey(value)) {
      return 'Почта занята';
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле обязательно для заполнения';
    } else if (!passwordsValid()) {
      return 'Пароли не совпадают';
    }

    return null;
  }

  bool passwordsValid() {
    return _passwordController.text == _repeatPasswordController.text;
  }
}

import 'package:eng_app/core/auth_service.dart';
import 'package:eng_app/core/routes.dart';
import 'package:eng_app/core/ui/app_text_field.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final Map<String, String> users;

  final _passwordController = TextEditingController();
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
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Авторизация'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppTextField(
                hintText: 'Электронная почта',
                validator: validateEmail,
                controller: _emailController,
              ),
              const SizedBox(height: 12),
              AppTextField(
                hintText: 'Пароль',
                validator: validatePassword,
                controller: _passwordController,
              ),
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
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.mainPath,
                        (route) => false,
                      );
                    }
                  },
                  child: const Text('Войти'),
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
    } else if (!isPasswordValid()) {
      return 'Почта или пароль не верны';
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле обязательно для заполнения';
    } else if (!isPasswordValid()) {
      return 'Почта или пароль не верны';
    }

    return null;
  }

  bool isPasswordValid() {
    return users.containsKey(_emailController.text) &&
        users[_emailController.text] == _passwordController.text;
  }
}

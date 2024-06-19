import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

final class AuthService {
  AuthService._();

  static final _storage = SharedPreferences.getInstance();

  static const _usersKey = 'users';

  static Future<void> registerUser({
    required String email,
    required String password,
  }) async {
    final users = await getUsers();

    users[email] = password;

    final json = jsonEncode(users);

    _storage.then((value) => value.setString(_usersKey, json));
  }

  static Future<Map<String, String>> getUsers() async {
    final storage = await _storage;
    final stringValue = storage.getString(_usersKey);

    if (stringValue == null) {
      return {};
    }

    final json = jsonDecode(stringValue) as Map<String, dynamic>;

    return json.map((key, value) => MapEntry(key, value?.toString() ?? ''));
  }
}

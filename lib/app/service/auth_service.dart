import 'package:localstorage/localstorage.dart';

class LocalAuthService {
  static final LocalStorage storage = LocalStorage('user_data.json');

  static Future<void> login(String email, String password) async {
    await storage.ready;
    storage.setItem('email', email);
    storage.setItem('password', password);
    storage.setItem('is_logged_in', 'true'); // store as String
  }

  static Future<bool> isLoggedIn() async {
    await storage.ready;
    return storage.getItem('is_logged_in') == 'true';
  }

  static Future<Map<String, dynamic>?> getUserData() async {
    await storage.ready;
    return {
      'email': storage.getItem('email'),
      'password': storage.getItem('password'),
    };
  }

  static Future<void> logout() async {
    await storage.ready;
    storage.clear();
  }
}

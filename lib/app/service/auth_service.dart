import 'package:shared_preferences/shared_preferences.dart';
class LocalAuthService {



  static Future<void> signup(String username, String email, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('email', email);
    prefs.setString('password', password);
    prefs.setBool('is_logged_in', false);
  }
  static Future<void> login(String username, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
    prefs.setBool('is_logged_in', true);
  }
  static Future<bool?> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('is_logged_in');
  }
  static Future<String?> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  static Future<bool> validateUser(String username, String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? prefUserName =  prefs.getString('username');
    String? prefPassword = prefs.getString('password');
    if(username == prefUserName && prefPassword == password){
      prefs.setBool('is_logged_in', true);
      return true;
    }else{
      return false;
    }

  }


  static Future<Map<String, dynamic>?> getUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'username': prefs.getString('username'),
      'email': prefs.getString('email'),
      'password': prefs.getString('password'),
    };
  }

  static Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}

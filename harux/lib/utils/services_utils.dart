import 'package:shared_preferences/shared_preferences.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String hashedPassword(String password) {
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}



class Login {
  static const _loginKey = 'login';
  static const _passwordKey = 'password';
  static const _logoutKey = 'logout';
  static bool hasLoggedIn = false;
  static Future<void> saveLoginCredentials(
      String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_loginKey, username);
    prefs.setString(_passwordKey, password);
    prefs.setBool(_logoutKey, false);
  }

  static Future<bool> login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    const String apiUri = 'https://backend-hosting-production.up.railway.app/login';
    Map<String, dynamic> data = {
      'username': prefs.getString(_loginKey),
      'password': prefs.getString(_passwordKey)
    };
    try {
      final response = await http.post(
        Uri.parse(apiUri),
        headers: {'Content-type': 'application/json'},
        body: jsonEncode(data),
      );
      if (response.statusCode == 200) {
        hasLoggedIn = true;
      } else {
        hasLoggedIn = false;
      }
    } catch (e) {
      hasLoggedIn = false;
    }
    return hasLoggedIn;
  }

  static Future<bool> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_logoutKey)!;
  }

  static Future<void> setLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_logoutKey, true);
  }
}
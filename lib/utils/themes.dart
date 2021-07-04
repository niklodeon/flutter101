import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return light;
  }

  static ThemeData get darkTheme {
    return dark;
  }
}

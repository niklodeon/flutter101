import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _mode;
 
  ThemeMode get mode => _mode;

  ThemeData get lightTheme => light;

  ThemeData get darkTheme => dark;

  ThemeProvider({
    ThemeMode mode = ThemeMode.light,
  }) : _mode = mode;

  void toggleMode() {
    _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

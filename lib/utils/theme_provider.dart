import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  ThemeData get getTheme => _themeMode == ThemeMode.light ? lightTheme : darkTheme;

  toggleTheme(){
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  } 
}

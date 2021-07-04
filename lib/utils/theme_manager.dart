import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeData _lightTheme = lightTheme;
  ThemeData _darkTheme = darkTheme;

  ThemeMode get themeMode => _themeMode;

  ThemeData get lightTheme => _lightTheme;

  ThemeData get darkTheme => _darkTheme;

  toggleTheme(){
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  } 
}

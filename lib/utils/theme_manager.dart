import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  ThemeData get lightTheme => lightTheme;

  ThemeData get darkTheme => darkTheme;

  toggleTheme(){
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  } 
}

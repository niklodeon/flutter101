import 'package:flutter/material.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _themeMode = ThemeMode.light;

  get getTheme => _themeMode;

  toggleTheme(){
    _themeMode = !_themeMode;
    notifyListeners();
  } 
}

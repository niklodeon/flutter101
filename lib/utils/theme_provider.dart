import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter101/constants/themes.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences _pref = null;
  bool _darkTheme = false;

  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }

  ThemeData get theme => _darkTheme ? darkTheme : lightTheme;

  toggleTheme(){
    _darkTheme = !_darkTheme;
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    if(_pref == null)
      _pref  = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
      await _initPrefs();
      _darkTheme = _pref.getBool(key) ?? true;
      notifyListeners();
  }
  
  _saveToPrefs() async {
    await _initPrefs();
    _pref.setBool(key, _darkTheme);
  }
}

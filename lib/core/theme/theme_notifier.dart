import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nexo/core/theme/app_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  final String key = 'theme';
  SharedPreferences? _prefs;
  late ThemeData _themeData;
  ThemeData get getTheme => _themeData;

  final Map<String, ThemeData> _themes = {
    'green': greenTheme,
    'blue': blueTheme,
    'red': redTheme,
    'purple': purpleTheme,
    'orange': orangeTheme,
    'teal': tealTheme,
  };

  Map<String, ThemeData> get themes => _themes;

  ThemeNotifier() {
    _themeData = greenTheme;
    _loadFromPrefs();
  }

  void setTheme(String themeName) {
    _themeData = _themes[themeName] ?? greenTheme;
    _saveToPrefs(themeName);
    notifyListeners();
  }

  _initPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    String themeName = _prefs!.getString(key) ?? 'green';
    _themeData = _themes[themeName] ?? greenTheme;
    notifyListeners();
  }

  _saveToPrefs(String themeName) async {
    await _initPrefs();
    _prefs!.setString(key, themeName);
  }
}

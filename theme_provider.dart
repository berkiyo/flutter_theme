import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const String themeModeKey = 'themeMode';
  static const String themeVariantKey = 'themeVariant';

  ThemeMode _themeMode = ThemeMode.light;
  String _themeVariant = 'blue';

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;
  String get themeVariant => _themeVariant;

  void toggleThemeMode() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveTheme();
    notifyListeners();
  }

  void setThemeVariant(String variant) {
    _themeVariant = variant;
    _saveTheme();
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _themeMode = ThemeMode.values[prefs.getInt(themeModeKey) ?? 0];
    _themeVariant = prefs.getString(themeVariantKey) ?? 'blue';
    notifyListeners();
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(themeModeKey, _themeMode.index);
    prefs.setString(themeVariantKey, _themeVariant);
  }
}

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  // ThemeMode get mode => _isDark ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    print("Hit");
    _isDark = !_isDark;
    notifyListeners();
  }
}

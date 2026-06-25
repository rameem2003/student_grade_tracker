import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0066CC),
      secondary: Color(0xFF00AEEF),
      surface: Color(0xFFFFFFFF),
    ),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF64B5F6),
      secondary: Color(0xFF90CAF9),
      surface: Color(0xFF121212),
    ),
    scaffoldBackgroundColor: const Color(0xFF1E1E1E),
  );
}

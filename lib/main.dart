import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_grade_tracker/providers/subject_provider.dart';
import 'package:student_grade_tracker/providers/theme_provider.dart';
import 'package:student_grade_tracker/router/app_router.dart';
import 'package:student_grade_tracker/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SubjectProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],

      child: Consumer<ThemeProvider>(
        builder: (_, themeProvider, _) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.mode,
          );
        },
      ),
    );
  }
}

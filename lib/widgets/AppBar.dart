import 'package:flutter/material.dart';
import 'package:student_grade_tracker/providers/theme_provider.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  const AppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            // IconButton(
            //   icon: const Icon(Icons.arrow_back),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
            Text(
              "${title}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: ThemeProvider().isDark
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode),
              onPressed: () {
                ThemeProvider().toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}

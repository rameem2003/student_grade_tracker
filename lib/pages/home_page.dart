import 'package:flutter/material.dart';
import 'package:student_grade_tracker/screens/subject_list_screen.dart';
import 'package:student_grade_tracker/screens/summary_screen.dart';
import 'package:student_grade_tracker/widgets/app_bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final screens = [const SubjectListScreen(), const SummaryScreen()];
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, index, _) {
        return Scaffold(
          body: screens[index],
          bottomNavigationBar: AppBottomNav(index: index),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class AppBottomNav extends StatelessWidget {
  final int index;

  const AppBottomNav({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
        HomePage.currentIndex.value = value;
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Subjects"),
        BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Summary"),
      ],
    );
  }
}

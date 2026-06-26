import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class AppBottomNav extends StatelessWidget {
  final int index;

  const AppBottomNav({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedItemColor: Colors.grey[400],
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

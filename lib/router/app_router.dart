import 'package:go_router/go_router.dart';
import 'package:student_grade_tracker/screens/add_subject_screen.dart';

import '../pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(
      path: '/add',
      builder: (context, state) => const AddSubjectScreen(),
    ),
  ],
);

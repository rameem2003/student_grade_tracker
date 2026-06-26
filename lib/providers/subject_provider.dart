import 'package:flutter/material.dart';
import 'package:student_grade_tracker/models/subject.dart';

class SubjectProvider extends ChangeNotifier {
  final List<Subject> _subjects = [];

  List<Subject> get subjects => _subjects;

  void addSubject(Subject subject) {
    _subjects.add(subject);
    notifyListeners();
  }

  void removeSubject(int index) {
    _subjects.removeAt(index);
    notifyListeners();
  }

  int get totalSubjects => _subjects.length;

  double get averageMark {
    if (_subjects.isEmpty) return 0;

    double total = _subjects.fold(0, (sum, subject) => sum + subject.mark);
    return total / _subjects.length;
  }

  String get overallGrade {
    final avg = averageMark;

    if (avg >= 80) return "A+";
    if (avg >= 70) return "A";
    if (avg >= 60) return "A-";
    if (avg >= 50) return "B";
    if (avg >= 40) return "C";
    if (avg >= 33) return "D";
    return "F";
  }

  List<Subject> get passedSubjects =>
      _subjects.where((s) => s.isPassed).toList();
}

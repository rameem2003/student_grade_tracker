import 'package:flutter/material.dart';

class Subject {
  final String name;
  final double _mark;

  Subject({required this.name, required double mark}) : _mark = mark;

  double get mark => _mark;

  String get grade {
    if (_mark >= 80) return "A+";
    if (_mark >= 70) return "A";
    if (_mark >= 60) return "A-";
    if (_mark >= 50) return "B";
    if (_mark >= 40) return "C";
    if (_mark >= 33) return "D";
    return "F";
  }

  bool get isPassed => _mark >= 33;
}

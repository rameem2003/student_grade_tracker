import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/subject_provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SubjectProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Summary")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Total Subjects: ${provider.totalSubjects}"),
            const SizedBox(height: 12),
            Text("Average Mark: ${provider.averageMark.toStringAsFixed(2)}"),
            const SizedBox(height: 12),
            Text("Overall Grade: ${provider.overallGrade}"),
            const SizedBox(height: 12),
            Text("Passed Subjects: ${provider.passedSubjects.length}"),
          ],
        ),
      ),
    );
  }
}

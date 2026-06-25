import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:student_grade_tracker/models/subject.dart';
import 'package:student_grade_tracker/providers/subject_provider.dart';

class AddSubjectScreen extends StatelessWidget {
  const AddSubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    final nameController = TextEditingController();

    final markController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text("Add Subject")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Enter subject name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Subject Name",
                  hintText: "Enter subject name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: markController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  final mark = double.tryParse(value ?? '');

                  if (mark == null) {
                    return "Enter valid mark";
                  }

                  if (mark < 0 || mark > 100) {
                    return "0-100 only";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Mark",
                  hintText: "Enter mark",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }

                  context.read<SubjectProvider>().addSubject(
                    Subject(
                      name: nameController.text,
                      mark: double.parse(markController.text),
                    ),
                  );

                  context.pop();
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

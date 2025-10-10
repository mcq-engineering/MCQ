import 'package:flutter/material.dart';

import 'chapter_1/mainsubjects.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ElectronicsMCQApp());
}

class ElectronicsMCQApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electronics MCQ',
      home: SubjectScreen(),
    );
  }
}

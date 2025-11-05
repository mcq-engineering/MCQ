import 'package:flutter/material.dart';

import 'introduction.dart';
import 'mspower.dart';
import 'msword.dart';



// Add others like:
// import 'polynomial_page.dart';
// import 'error_bounds_page.dart';
// etc.

class CompChaptersPage extends StatelessWidget {
  const CompChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapters = [
      {'title': 'Introduction', 'page': const IntroComputerQuizScrollable()},
      {'title': 'MS Word', 'page': const MSWordPage()},
      {'title': 'MS PowerPoint', 'page': const MSPowerPointQuizPage()},

    ];

    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text(
          'Computer',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),
        ),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final chapter = chapters[index];
          return Card(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: Text(
                chapter['title'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
              onTap: () {
                if (chapter['page'] != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chapter['page']),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${chapter['title']} page coming soon!'),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}

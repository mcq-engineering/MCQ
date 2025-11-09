import 'package:flutter/material.dart';

import 'atomicstructure.dart';
import 'chapter3.dart';
import 'definations.dart';
import 'introduction.dart';


class ChemistryChaptersPage extends StatelessWidget {
  const ChemistryChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapters = [
      {'title': 'Introduciton', 'page': const introduction()},
      {'title': 'Atomic Structure', 'page': const ChemistryChapter2Screen()},
      {'title': 'Elements and the periodic table', 'page': const ChemistryChapter3Screen()},
      {'title': 'Definations', 'page': ChemistryDefinitionsScreen()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chemistry Chapters',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.tealAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
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
      ),
    );
  }
}

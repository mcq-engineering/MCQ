import 'package:flutter/material.dart';
import 'package:mcq_electronics/math/permutation.dart';
import 'package:mcq_electronics/math/polynomial.dart';
import 'package:mcq_electronics/math/sequencesseries.dart';
import 'package:mcq_electronics/math/surds.dart';
import 'package:mcq_electronics/math/trignometricfunctions.dart';

// Import your chapter screens (you can create them later)
import 'Differentiation.dart';
import 'equations.dart';
import 'errorinequalities.dart';
import 'geometrygraph.dart';
import 'indices.dart';
import 'integration.dart';
import 'logarithmsexponentials.dart';

// Add others like:
// import 'polynomial_page.dart';
// import 'error_bounds_page.dart';
// etc.

class MathChaptersPage extends StatelessWidget {
  const MathChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapters = [
      {'title': 'Indices', 'page': const IndicesLawsPage()},
      {'title': 'Surds', 'page': const SurdsPage()},
      {'title': 'Equations', 'page': const EquationsPage()},
      {'title': 'Polynomials', 'page': const PolynomialsPage()},
      {'title': 'Error Bounds and Inequalities', 'page': const errorsinequalities()},
      {'title': 'Coordinate Geometry and Graphs', 'page': const geometrygraph()},
      {'title': 'Differentiation', 'page': const differentiation()},
      {'title': 'Sequences and Series', 'page': const sequenceseries()},
      {'title': 'Logarithm and Exponential', 'page': const logarithm()},
      {'title': 'Trigonometric Functions', 'page': const trignometricfunctions()},
      {'title': 'Integration', 'page': const integration()},
      {'title': 'Permutation and Probability', 'page': const permutation()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mathematics Chapters',
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

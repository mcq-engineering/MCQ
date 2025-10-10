import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../computer/listscreen.dart';
import '../math/chapterslist.dart';
import '../math/indices.dart';
import 'homescreen.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjects = [
      {
        "name": "Electronics - I",
        "icon": FontAwesomeIcons.microchip,
        "screen": const HomeScreen(),
        "colors": [Colors.blue.shade400, Colors.indigo.shade700],
      },
      {
        "name": "Electronics - II",
        "icon": FontAwesomeIcons.solidLightbulb,
        "screen": const Electronics2Screen(),
        "colors": [Colors.orange.shade400, Colors.deepOrange.shade700],
      },
      {
        "name": "Digital Logic Design",
        "icon": FontAwesomeIcons.projectDiagram,
        "screen": const DigitalLogicScreen(),
        "colors": [Colors.green.shade400, Colors.teal.shade700],
      },
      {
        "name": "Computer",
        "icon": FontAwesomeIcons.laptopCode,
        "screen": const CompChaptersPage(),
        "colors": [Colors.purple.shade400, Colors.deepPurple.shade700],
      },
      {
        "name": "Math",
        "icon": FontAwesomeIcons.squareRootAlt,
        "screen": const MathChaptersPage(),
        "colors": [Colors.red.shade400, Colors.pink.shade700],
      },
      {
        "name": "Physics",
        "icon": FontAwesomeIcons.atom,
        "screen": const PhysicsScreen(),
        "colors": [Colors.cyan.shade400, Colors.blueGrey.shade700],
      },
      {
        "name": "English",
        "icon": FontAwesomeIcons.bookOpen,
        "screen": const EnglishScreen(),
        "colors": [Colors.amber.shade400, Colors.deepOrange.shade700],
      },
      {
        "name": "Chemistry",
        "icon": FontAwesomeIcons.flask,
        "screen": const EnglishScreen(),
        "colors": [Colors.teal.shade400, Colors.green.shade800],
      },
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade400, Colors.cyan.shade700],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),



        ),
        child: Center(
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: subjects.map((subject) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => subject["screen"] as Widget,
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: subject["colors"] as List<Color>,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                        (subject["colors"] as List<Color>).last.withOpacity(0.4),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(subject["icon"] as IconData,
                          size: 45, color: Colors.white),
                      const SizedBox(height: 12),
                      Text(
                        subject["name"] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// Dummy Screens (same as before)
class Electronics2Screen extends StatelessWidget {
  const Electronics2Screen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("Electronics - II")),
      body: const Center(child: Text("Electronics - II MCQs")));
}

class DigitalLogicScreen extends StatelessWidget {
  const DigitalLogicScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("Digital Logic Design")),
      body: const Center(child: Text("Digital Logic MCQs")));
}



class MathScreen extends StatelessWidget {
  const MathScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("Math")),
      body: const Center(child: Text("Math MCQs")));
}

class PhysicsScreen extends StatelessWidget {
  const PhysicsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("Physics")),
      body: const Center(child: Text("Physics MCQs")));
}

class EnglishScreen extends StatelessWidget {
  const EnglishScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("English")),
      body: const Center(child: Text("English MCQs")));
}

class ChemistryScreen extends StatelessWidget {
  const ChemistryScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text("Chemistry")),
      body: const Center(child: Text("Chemistry MCQs")));
}

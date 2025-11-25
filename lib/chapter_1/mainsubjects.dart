// Enhanced SubjectScreen with animations, GridView, responsiveness, hover effects, and dark mode support.

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../GeneralKnowledge/inventions.dart';
import '../GeneralKnowledge/measureunits.dart';
import '../chemistry/chapterlist.dart';
import '../computer/listscreen.dart';
import '../game/alphabet.dart';
import '../game/catchstar.dart';
import '../math/chapterslist.dart';
import '../math/indices.dart';
import '../taptoflip.dart';
import '../tictactoe.dart';
import 'homescreen.dart';

class SubjectScreen extends StatefulWidget {
  const SubjectScreen({super.key});

  @override
  State<SubjectScreen> createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen>
    with SingleTickerProviderStateMixin {
  bool isDarkMode = false;
  String searchText = "";

  late AnimationController controller;
  late Animation<Color?> colorAnimation1;
  late Animation<Color?> colorAnimation2;

  final List<Map<String, dynamic>> subjects = [
    {
      "name": "Electronics - I",
      "icon": FontAwesomeIcons.microchip,
      "screen": const HomeScreen(),
      "colors": [Colors.blueAccent, Colors.indigo],
    },
    {
      "name": "Electronics - II",
      "icon": FontAwesomeIcons.solidLightbulb,
      "screen": const Electronics2Screen(),
      "colors": [Colors.orangeAccent, Colors.deepOrange],
    },
    {
      "name": "Digital Logic Design",
      "icon": FontAwesomeIcons.projectDiagram,
      "screen": const MemoryMatchScreen(),
      "colors": [Colors.green, Colors.teal],
    },
    {
      "name": "Computer",
      "icon": FontAwesomeIcons.laptopCode,
      "screen": const CompChaptersPage(),
      "colors": [Colors.purple, Colors.deepPurple],
    },
    {
      "name": "Math",
      "icon": FontAwesomeIcons.squareRootAlt,
      "screen": const MathChaptersPage(),
      "colors": [Colors.redAccent, Colors.pink],
    },
    {
      "name": "Physics",
      "icon": FontAwesomeIcons.atom,
      "screen": const TicTacToeScreen(),
      "colors": [Colors.cyan, Colors.blueGrey],
    },
    {
      "name": "English",
      "icon": FontAwesomeIcons.bookOpen,
      "screen": const inventions(),
      "colors": [Colors.amber, Colors.deepOrange],
    },
    {
      "name": "Chemistry",
      "icon": FontAwesomeIcons.flask,
      "screen": const ChemistryChaptersPage(),
      "colors": [Colors.teal, Colors.green],
    },
    {
      "name": "General knowledge",
      "icon": FontAwesomeIcons.bookMedical,
      "screen": const UnitConverterScreen(),
      "colors": [Colors.teal, Colors.green],
    },
  ];

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    colorAnimation1 =
        ColorTween(begin: Colors.blueAccent, end: Colors.redAccent)
            .animate(controller);

    colorAnimation2 =
        ColorTween(begin: Colors.purple, end: Colors.orange)
            .animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredSubjects = subjects
        .where((sub) =>
        sub["name"].toString().toLowerCase().contains(searchText))
        .toList();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          // appBar: AppBar(
          //   title: const Text("Subjects"),
          //   centerTitle: true,
          //   actions: [
          //     IconButton(
          //       icon: Icon(
          //           isDarkMode ? Icons.light_mode : Icons.dark_mode),
          //       onPressed: () {
          //         setState(() => isDarkMode = !isDarkMode);
          //       },
          //     )
          //   ],
          // ),

          // Animated Gradient Background
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorAnimation1.value!,
                  colorAnimation2.value!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            child: Column(
              children: [
                // Padding(
                //   padding:
                //   const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                //
                //   // Search Bar
                //   child: TextField(
                //     onChanged: (value) {
                //       setState(() => searchText = value.toLowerCase());
                //     },
                //     decoration: InputDecoration(
                //       hintText: "Search subject...",
                //       filled: true,
                //       prefixIcon: const Icon(Icons.search),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //     ),
                //   ),
                //),
                SizedBox(height: 30,),
                Expanded(
                  child: GridView.builder(
                    itemCount: filteredSubjects.length,
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      final subject = filteredSubjects[index];

                      return SubjectCard(
                        title: subject["name"] as String,
                        icon: subject["icon"] as IconData,
                        colors: subject["colors"] as List<Color>,
                        screen: subject["screen"] as Widget,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SubjectCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<Color> colors;
  final Widget screen;

  const SubjectCard({
    super.key,
    required this.title,
    required this.icon,
    required this.colors,
    required this.screen,
  });

  @override
  State<SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard>
    with SingleTickerProviderStateMixin {
  bool hovered = false;
  late AnimationController flipController;

  @override
  void initState() {
    super.initState();

    flipController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    flipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: GestureDetector(
        onTap: () {
          flipController.forward().then((_) {
            flipController.reverse();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => widget.screen),
            );
          });
        },

        child: AnimatedBuilder(
          animation: flipController,
          builder: (context, child) {
            final angle = flipController.value * pi;

            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(angle),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: widget.colors),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: hovered ? 14 : 6,
                      offset: const Offset(3, 5),
                    ),
                  ],
                ),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: hovered ? 1.06 : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget.icon, size: 55, color: Colors.white),
                      const SizedBox(height: 10),
                      Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Dummy Screens
class Electronics2Screen extends StatelessWidget {
  const Electronics2Screen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text("Electronics - II")), body: const Center(child: Text("Electronics - II MCQs")));
}

class DigitalLogicScreen extends StatelessWidget {
  const DigitalLogicScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text("Digital Logic Design")), body: const Center(child: Text("Digital Logic MCQs")));
}

class MathScreen extends StatelessWidget {
  const MathScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text("Math")), body: const Center(child: Text("Math MCQs")));
}

class PhysicsScreen extends StatelessWidget {
  const PhysicsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text("Physics")), body: const Center(child: Text("Physics MCQs")));
}

class EnglishScreen extends StatelessWidget {
  const EnglishScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: const Text("Physics")),
          body: const Center(child: Text("Physics MCQs")));
}
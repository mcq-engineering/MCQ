import 'package:flutter/material.dart';
import 'package:mcq_electronics/chapter_1/semiconductordiode.dart';
import 'package:mcq_electronics/chapter_1/transistormodeling.dart';

import 'BJTscreen.dart';
import 'biasingcompare.dart';
import 'bjtcomparison.dart';
import 'dcbaisingbjt.dart';
import 'diodeapplications.dart';
import 'fet.dart';
import 'fetbiasing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> chapters = const [
    "Semiconductor Diodes",
    "Diode Applications",
    "Bipolar Junction Transistor",
    "DC Baising BJTs",
    "Field Effect Transistor",
    "FET Baising",
    "BJT Transistor Modeling",
    "BJT Compare",
    "BJT Biasing"

  ];

  // List of screens corresponding to chapters
  final List<Widget> screens = const [
    SemiconductorDiodesScreen(),
    DiodeApplicationsScreen(),
    BJTScreen(),
    BJTBiasingScreen(),
    FETScreen(),
    FETBiasingScreen(),
    transistorModeling(),
    BJTComparisonScreen(),
    BJTBiasingScreen1(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Electronics - I", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return TweenAnimationBuilder(
            duration: Duration(milliseconds: 500 + (index * 150)), // staggered delay
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(50 * (1 - value), 0), // slide from right
                  child: child,
                ),
              );
            },
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screens[index]),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 90,
                width: width * 0.9,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade400,
                      Colors.indigo.shade600,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(4, 6),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          chapters[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

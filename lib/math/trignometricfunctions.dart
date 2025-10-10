import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class trignometricfunctions extends StatelessWidget {
  const trignometricfunctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics =
    [
      {
        "title": "Trigonometric Ratios of an Angle",
        "definition": "These ratios relate the sides of a right triangle to its angles.",
        "formula": "sinθ = Opp/Hyp, cosθ = Adj/Hyp, tanθ = Opp/Adj",
        "example": "Example 1: sin(30°)=0.5, cos(30°)=0.866\nExample 2: tan(45°)=1"
      },
      {
        "title": "Graphs of Trigonometric Functions",
        "definition": "Sine, cosine, and tangent graphs are periodic and repeat at regular intervals.",
        "formula": "sin(x) and cos(x) period = 360°, tan(x) period = 180°",
        "example": "Example 1: sin(0)=0, sin(90)=1\nExample 2: tan(90)=undefined"
      },
      {
        "title": "The CAST Model",
        "definition": "Used to remember which trigonometric ratios are positive in each quadrant.",
        "formula": "Q1: All +, Q2: Sin +, Q3: Tan +, Q4: Cos +",
        "example": "Example 1: sin(150°)=0.5\nExample 2: cos(240°) = -0.5"
      },
      {
        "title": "Important Trigonometric Values",
        "definition": "Standard values of trigonometric functions for special angles.",
        "formula": "sin(0°)=0, sin(30°)=0.5, sin(45°)=0.707, sin(60°)=0.866, sin(90°)=1",
        "example": "Example 1: cos(60°)=0.5\nExample 2: tan(30°)=1/√3"
      },
      {
        "title": "The Law of Cosines",
        "definition": "Relates the sides and angles of a triangle.",
        "formula": "c² = a² + b² − 2ab·cosC",
        "example": "Example 1: a=5, b=6, C=60° → c≈7.48\nExample 2: a=3, b=4, C=90° → c=5"
      },
      {
        "title": "The Law of Sines",
        "definition": "Used for solving unknown angles and sides in any triangle.",
        "formula": "a/sinA = b/sinB = c/sinC",
        "example": "Example 1: a=5, A=30°, B=45° → b≈7.07\nExample 2: b=8, B=60°, A=45°"
      },
      {
        "title": "Area of a Triangle",
        "definition": "The area can be found using sides and included angle.",
        "formula": "Area = ½ ab sinC",
        "example": "Example 1: a=5, b=6, C=60° → Area ≈ 12.99\nExample 2: a=8, b=10, C=45°"
      },
      {
        "title": "Pythagorean Identity",
        "definition": "A fundamental identity connecting sine and cosine.",
        "formula": "sin²θ + cos²θ = 1",
        "example": "Example 1: sinθ=3/5 ⇒ cosθ=4/5\nExample 2: cosθ=5/13 ⇒ sinθ=12/13"
      },
      {
        "title": "Tangent Identity",
        "definition": "Expresses tangent in terms of sine and cosine.",
        "formula": "tanθ = sinθ / cosθ",
        "example": "Example 1: tan(45°)=1\nExample 2: tan(60°)=√3"
      }
    ];



    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Trigonometric Functions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return Card(
            elevation: 14,
            shadowColor: Colors.deepPurple.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.squareRootVariable,
                          color: Colors.deepPurple),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          topic["title"]!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "📖: ${topic["definition"]}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "📘 Formula: ${topic["formula"]}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "🧮 ${topic["example"]}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

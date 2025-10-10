import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SurdsPage extends StatelessWidget {
  const SurdsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> topics = [
      {
        "title": "📘 What Are Surds?",
        "definition":
        "A surd is an irrational root that cannot be simplified into a rational number. It usually involves square roots, cube roots, etc., that do not give whole numbers.",
        "formula": "Examples: √2, √3, ³√5 are surds.",
        "examples": [
          "√4 = 2 → Not a surd (because it’s rational)",
          "√2 ≈ 1.414 → Surd (irrational root)",
          "³√7 ≈ 1.913 → Surd (irrational cube root)",
        ]
      },
      {
        "title": "1️⃣ Specification of Surds",
        "definition":
        "A surd must be an irrational root of a rational number. It cannot be expressed exactly as a fraction or a terminating/repeating decimal.",
        "formula": "√2, √3, √5, ³√7 are surds because they are irrational.",
        "examples": [
          "√9 = 3 → Not a surd",
          "√8 = 2√2 → Surd form (simplified)",
          "√12 = 2√3 → Surd form (simplified)",
        ]
      },
      {
        "title": "2️⃣ Basic Rules of Surds",
        "definition":
        "Surds follow similar multiplication and division laws as indices when the roots are the same.",
        "formula": "√a × √b = √(ab)\n√a ÷ √b = √(a/b)",
        "examples": [
          "√2 × √3 = √6",
          "√8 ÷ √2 = √4 = 2",
          "√5 × √20 = √100 = 10",
        ]
      },
      {
        "title": "3️⃣ Surds as Indices",
        "definition":
        "A surd can be written using a fractional index. The nth root of a number equals the number raised to the power of 1/n.",
        "formula": "√a = a^(1/2),  ³√a = a^(1/3),  ⁿ√a = a^(1/n)",
        "examples": [
          "⁴√16 = 16^(1/4) = 2",
          "√9 = 9^(1/2) = 3",
          "³√8 = 8^(1/3) = 2",
        ]
      },
      {
        "title": "4️⃣ Rationalizing the Denominator",
        "definition":
        "To rationalize a denominator means to remove any surd from the bottom of a fraction by multiplying top and bottom by a suitable value.",
        "formula":
        "1 / √2 = √2 / 2\n1 / (√3 + 1) × (√3 − 1)/(√3 − 1) = (√3 − 1)/2",
        "examples": [
          "1 / √5 = √5 / 5",
          "1 / (√7 - √3) × (√7 + √3)/(√7 + √3) = (√7 + √3)/4",
          "(3 / √2) × (√2 / √2) = (3√2)/2",
        ]
      },
      {
        "title": "5️⃣ Splitting Up Roots",
        "definition":
        "A root can be split or combined when the expression under the root is a product or quotient. This helps simplify expressions.",
        "formula": "√(ab) = √a × √b\n√(a/b) = √a ÷ √b",
        "examples": [
          "√50 = √(25×2) = 5√2",
          "√18 = √(9×2) = 3√2",
          "√(27/3) = √9 = 3",
        ]
      },
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Surds and Their Rules",
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
            elevation: 8,
            shadowColor: Colors.teal.withOpacity(0.3),
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
                          color: Colors.teal),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          topic["title"]!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "📖 Definition: ${topic["definition"]}",
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
                  const SizedBox(height: 10),
                  const Text(
                    "🧮 Examples:",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      (topic["examples"] as List).length,
                          (i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          "• ${(topic["examples"] as List)[i]}",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                      ),
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

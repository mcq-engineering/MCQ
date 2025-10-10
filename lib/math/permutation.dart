import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class permutation extends StatelessWidget {
  const permutation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics =
    [
      { "title": "Permutations", "definition": "Number of ways to arrange objects in order.", "formula": "nPr = n! / (n - r)!", "example": "5P2 = 20, 6P3 = 120" },
      { "title": "Combinations", "definition": "Number of ways to select objects without order.", "formula": "nCr = n! / [r!(n - r)!]", "example": "5C2 = 10, 6C3 = 20" },
      { "title": "Probability", "definition": "Likelihood of an event.", "formula": "P(E) = No. of favorable outcomes / Total outcomes", "example": "P(rolling 6) = 1/6, P(ace in deck)=4/52" },
      { "title": "Some Rules of Probability", "definition": "Addition and multiplication rules.", "formula": "P(A∪B) = P(A)+P(B)−P(A∩B), P(A∩B)=P(A)·P(B|A)", "example": "P(A∪B)=0.7, P(A∩B)=0.2" },
      { "title": "Probabilities and Odds", "definition": "Odds compare success to failure.", "formula": "Odds = P(E) : (1−P(E))", "example": "P(E)=0.75 → odds=3:1" },
      { "title": "Additional Addition Rules", "definition": "Extended rules for non-mutually exclusive events.", "formula": "P(A∪B∪C)=P(A)+P(B)+P(C)-P(AB)-P(AC)-P(BC)+P(ABC)", "example": "P(A)=0.3,B=0.4,C=0.2, etc." },
      { "title": "Conditional Probability", "definition": "Probability of A given B has occurred.", "formula": "P(A|B) = P(A∩B)/P(B)", "example": "P(A|B)=0.4/0.5=0.8" },
      { "title": "Formulae", "definition": "Collection of key probability and permutation equations.", "formula": "nPr = n!/(n−r)!, nCr = n!/[r!(n−r)!], P(E) = f/N", "example": "5C2=10, 5P2=20" }
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Permutation and Probability",
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

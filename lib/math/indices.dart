import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IndicesLawsPage extends StatelessWidget {
  const IndicesLawsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> laws = [
      {
        "title": "📘 What Are Indices?",
        "definition":
        "An index (or exponent or power) tells how many times a number (called the base) is multiplied by itself.",
        "formula": "aⁿ = a × a × a × ... × a (n times)",
        "examples": [
          "2⁴ = 2 × 2 × 2 × 2 = 16",
          "5³ = 5 × 5 × 5 = 125",
          "Here, 2 and 5 are bases; 4 and 3 are indices (exponents).",
        ]
      },
      {
        "title": "1️⃣ Multiplication Law (Product Law)",
        "definition":
        "When multiplying numbers with the same base, we add their indices (exponents).",
        "formula": "aᵐ × aⁿ = a^(m + n)",
        "examples": [
          "2³ × 2⁴ = 2⁷ = 128",
          "x² × x⁵ = x⁷",
          "3² × 3³ = 3⁵ = 243",
        ]
      },
      {
        "title": "2️⃣ Division Law (Quotient Law)",
        "definition":
        "When dividing numbers with the same base, we subtract the exponent of the divisor from the exponent of the dividend.",
        "formula": "aᵐ ÷ aⁿ = a^(m − n)",
        "examples": [
          "5⁶ ÷ 5² = 5⁴ = 625",
          "x⁷ ÷ x³ = x⁴",
          "8⁵ ÷ 8⁵ = 8⁰ = 1",
        ]
      },
      {
        "title": "3️⃣ Power of a Power",
        "definition":
        "When a base with an exponent is raised to another power, multiply the two exponents together.",
        "formula": "(aᵐ)ⁿ = a^(m × n)",
        "examples": [
          "(3²)³ = 3⁶ = 729",
          "(x³)² = x⁶",
          "(2⁴)² = 2⁸ = 256",
        ]
      },
      {
        "title": "4️⃣ Power of a Product",
        "definition":
        "When two or more bases are multiplied and raised to a power, the power applies to each base.",
        "formula": "(ab)ⁿ = aⁿ × bⁿ",
        "examples": [
          "(2×3)⁴ = 2⁴×3⁴ = 16×81 = 1296",
          "(xy)³ = x³y³",
          "(4mn)² = 4²m²n² = 16m²n²",
        ]
      },
      {
        "title": "5️⃣ Power of a Quotient",
        "definition":
        "When a fraction is raised to a power, both numerator and denominator are raised to that power.",
        "formula": "(a/b)ⁿ = aⁿ / bⁿ",
        "examples": [
          "(4/2)³ = 4³ / 2³ = 64 / 8 = 8",
          "(x/y)² = x² / y²",
          "(3/5)⁴ = 3⁴ / 5⁴ = 81 / 625",
        ]
      },
      {
        "title": "6️⃣ Negative Power",
        "definition":
        "A negative exponent means take the reciprocal (flip) of the base and make the exponent positive.",
        "formula": "a⁻ⁿ = 1 / aⁿ",
        "examples": [
          "2⁻³ = 1 / 2³ = 1/8",
          "x⁻² = 1 / x²",
          "(3/4)⁻² = (4/3)² = 16/9",
        ]
      },
      {
        "title": "7️⃣ Fractional Power",
        "definition":
        "A fractional exponent represents a root. The denominator of the fraction shows the type of root, and the numerator shows the power.",
        "formula": "a^(m/n) = ⁿ√(aᵐ)",
        "examples": [
          "27^(2/3) = (³√27)² = 3² = 9",
          "16^(1/2) = √16 = 4",
          "8^(2/3) = (³√8)² = 2² = 4",
        ]
      },
      {
        "title": "8️⃣ Zero Power",
        "definition":
        "Any non-zero number raised to the power of zero equals one.",
        "formula": "a⁰ = 1 (where a ≠ 0)",
        "examples": [
          "9⁰ = 1",
          "x⁰ = 1",
          "(7y)⁰ = 1",
        ]
      },
      {
        "title": "9️⃣ Power of One",
        "definition": "Any number raised to the power of one remains the same.",
        "formula": "a¹ = a",
        "examples": [
          "6¹ = 6",
          "x¹ = x",
          "(10y)¹ = 10y",
        ]
      },
    ];

    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Laws of Indices (Exponents)",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: laws.length,
        itemBuilder: (context, index) {
          final law = laws[index];
          return Card(
            elevation: 5,
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
                          color: Colors.deepPurple),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          law["title"],
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
                    "📖 Definition: ${law["definition"]}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "📘 Formula: ${law["formula"]}",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
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
                      (law["examples"] as List).length,
                          (i) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          "• ${(law["examples"] as List)[i]}",
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

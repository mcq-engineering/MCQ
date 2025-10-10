import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class logarithm extends StatelessWidget {
  const logarithm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics =
    [
      {
        "title": "Operations with Exponential Functions",
        "definition": "Exponential functions involve variables in the exponent. Operations include multiplying, dividing, and raising powers of exponential terms.",
        "formula": "a^m × a^n = a^(m+n), a^m ÷ a^n = a^(m−n), (a^m)^n = a^(m×n)",
        "example": "Example 1: 2^3 × 2^2 = 2^5 = 32\nExample 2: (3^2)^3 = 3^6 = 729"
      },
      {
        "title": "Multiplication and Division",
        "definition": "When exponential terms have the same base, multiplication adds exponents, and division subtracts them.",
        "formula": "a^m × a^n = a^(m+n), a^m ÷ a^n = a^(m−n)",
        "example": "Example 1: 5^4 × 5^2 = 5^6\nExample 2: 7^5 ÷ 7^2 = 7^3"
      },
      {
        "title": "Base Raised to Two Powers",
        "definition": "When raising an exponential term to another power, multiply the exponents.",
        "formula": "(a^m)^n = a^(m×n)",
        "example": "Example 1: (2^3)^2 = 2^6 = 64\nExample 2: (4^2)^3 = 4^6"
      },
      {
        "title": "Multiple Bases",
        "definition": "When dealing with different bases, exponential expressions can be simplified by converting to common bases or applying logarithms.",
        "formula": "a^x × b^x = (a×b)^x",
        "example": "Example 1: 2^3 × 3^3 = (2×3)^3 = 6^3 = 216\nExample 2: 2^x × 5^x = (10)^x"
      },
      {
        "title": "Fractional Exponents",
        "definition": "Fractional exponents represent roots of numbers.",
        "formula": "a^(1/n) = ⁿ√a, a^(m/n) = ⁿ√(a^m)",
        "example": "Example 1: 8^(1/3) = 2\nExample 2: 27^(2/3) = (³√27)² = 9"
      },
      {
        "title": "Laws of Logarithmic Functions",
        "definition": "Logarithmic laws help simplify expressions and solve equations involving logarithms.",
        "formula": "log_a(xy) = log_a x + log_a y\nlog_a(x/y) = log_a x − log_a y\nlog_a(x^n) = n·log_a x",
        "example": "Example 1: log₁₀(1000) = 3\nExample 2: log₂(8) = 3"
      },
      {
        "title": "Change of Base",
        "definition": "Allows calculation of logarithms with any base using a more convenient base.",
        "formula": "log_a b = log_c b / log_c a",
        "example": "Example 1: log₂ 8 = log₁₀ 8 / log₁₀ 2 = 3\nExample 2: log₃ 9 = log₁₀ 9 / log₁₀ 3 = 2"
      }
    ]
;



    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Logarithm and Exponential",
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

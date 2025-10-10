import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PolynomialsPage extends StatelessWidget {
  const PolynomialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics = [
      {
        "title": "📘 What is a Polynomial?",
        "definition":
        "A polynomial is an algebraic expression consisting of variables and coefficients, involving only addition, subtraction, multiplication, and non-negative integer exponents.",
        "formula": "Example: 2x² + 3x + 5,   x³ - 4x + 7",
        "example":
        "Example 1: 3x² + 2x + 1 is a quadratic polynomial.\nExample 2: x³ - 2x² + 4x - 8 is a cubic polynomial."
      },
      {
        "title": "1️⃣ Degree of a Polynomial",
        "definition":
        "The degree of a polynomial is the highest power (exponent) of the variable in the expression.",
        "formula": "Degree = Highest exponent of x",
        "example":
        "Example 1: 5x³ + 2x² + 7 → degree = 3\nExample 2: 9x⁴ + 2x² → degree = 4"
      },
      {
        "title": "2️⃣ Notation of a Polynomial",
        "definition":
        "A polynomial is often written as P(x) = aₙxⁿ + aₙ₋₁xⁿ⁻¹ + ... + a₁x + a₀, where coefficients (a) are real numbers.",
        "formula": "P(x) = aₙxⁿ + aₙ₋₁xⁿ⁻¹ + ... + a₁x + a₀",
        "example":
        "Example 1: P(x) = 2x³ - 5x² + 3x - 7\nExample 2: Q(x) = 4x² + x + 9"
      },
      {
        "title": "3️⃣ Addition of Polynomials",
        "definition":
        "To add polynomials, combine like terms — those with the same powers of x.",
        "formula": "(3x² + 2x + 1) + (x² + 5x + 3) = 4x² + 7x + 4",
        "example":
        "Example 1: (x² + 2x) + (3x² + x) = 4x² + 3x\nExample 2: (2x³ + x) + (x³ + 4x²) = 3x³ + 4x² + x"
      },
      {
        "title": "4️⃣ Subtraction of Polynomials",
        "definition":
        "To subtract, change the signs of the terms in the second polynomial and then add.",
        "formula": "(4x² + 3x + 5) − (2x² + x + 1) = 2x² + 2x + 4",
        "example":
        "Example 1: (x³ + 4x²) − (2x³ + 3x²) = −x³ + x²\nExample 2: (5x² + 6x + 1) − (x² + 3x + 4) = 4x² + 3x − 3"
      },
      {
        "title": "5️⃣ Multiplication of Polynomials",
        "definition":
        "Multiply each term of the first polynomial by each term of the second, then simplify by combining like terms.",
        "formula": "(x + 2)(x + 3) = x² + 5x + 6",
        "example":
        "Example 1: (x + 1)(x + 4) = x² + 5x + 4\nExample 2: (2x + 3)(x − 1) = 2x² + x − 3"
      },
      {
        "title": "6️⃣ Multiplication Table for Polynomials",
        "definition":
        "You can use a grid (table) method to multiply polynomials term-by-term before simplifying.",
        "formula": "(x + 2)(x² + 3x + 4) → multiply each term using a table",
        "example":
        "Example 1: (x + 2)(x² + 3x + 4) = x³ + 5x² + 10x + 8\nExample 2: (x + 3)(x² + 2x) = x³ + 5x² + 6x"
      },
      {
        "title": "7️⃣ Long Multiplication of Polynomials",
        "definition":
        "Arrange polynomials vertically and multiply like numbers, aligning powers of x for easier simplification.",
        "formula": "(x² + 3x + 2)(x + 4) = x³ + 7x² + 14x + 8",
        "example":
        "Example 1: (x² + 2x + 1)(x + 1) = x³ + 3x² + 3x + 1\nExample 2: (x² + x)(x − 2) = x³ − x² − 2x"
      },
      {
        "title": "8️⃣ Division of Polynomials (Long Division)",
        "definition":
        "Divide the highest term of the dividend by the highest term of the divisor, multiply and subtract repeatedly.",
        "formula": "(x³ + 2x² − 5x − 6) ÷ (x − 2) = x² + 4x + 3",
        "example":
        "Example 1: (x³ − 4x² + x + 6) ÷ (x − 3) = x² − x − 2\nExample 2: (2x³ + 3x² − 5x − 6) ÷ (x + 2) = 2x² − x − 3"
      },
      {
        "title": "9️⃣ Synthetic Division",
        "definition":
        "A shortcut for dividing by a linear term (x − a) using only coefficients of the polynomial.",
        "formula": "For (x³ − 6x² + 11x − 6) ÷ (x − 1), result = x² − 5x + 6",
        "example":
        "Example 1: Divide (x³ − 2x² − 5x + 6) by (x − 3) → quotient = x² + x − 2\nExample 2: Divide (2x³ − 3x² − 8x + 12) by (x − 2) → quotient = 2x² + x − 6"
      },
      {
        "title": "🔟 Remainder Theorem",
        "definition":
        "When a polynomial P(x) is divided by (x − a), the remainder is P(a).",
        "formula": "Remainder = P(a)",
        "example":
        "Example 1: P(x)=x²−2x+3, divide by (x−1): Remainder = P(1) = 2\nExample 2: P(x)=x³−4x²+x+6, divide by (x−2): Remainder = 0"
      },
      {
        "title": "1️⃣1️⃣ Factor Theorem",
        "definition":
        "If (x − a) is a factor of P(x), then P(a) = 0. It helps to find the factors of a polynomial.",
        "formula": "If P(a) = 0, then (x − a) is a factor.",
        "example":
        "Example 1: P(x)=x²−5x+6 → P(2)=0 ⇒ (x−2) is a factor\nExample 2: P(x)=x³−4x²+x+6 → P(3)=0 ⇒ (x−3) is a factor"
      },
      {
        "title": "1️⃣2️⃣ Rational Root Theorem",
        "definition":
        "Possible rational roots of P(x) = aₙxⁿ + ... + a₀ are ±(factors of constant term)/(factors of leading coefficient).",
        "formula": "Possible roots = ±(factors of a₀)/(factors of aₙ)",
        "example":
        "Example 1: P(x)=x³−6x²+11x−6 → possible roots ±1,±2,±3,±6\nExample 2: P(x)=2x³−3x²−8x+12 → possible roots ±1,±2,±3,±4,±6,±12, divided by 1 or 2"
      },
      {
        "title": "1️⃣3️⃣ Graph of a Polynomial",
        "definition":
        "Polynomial graphs are smooth curves with turning points. Their degree determines the shape (e.g., quadratic, cubic).",
        "formula": "Quadratic: y=ax²+bx+c  → parabola\nCubic: y=ax³+bx²+cx+d → S-shaped curve",
        "example":
        "Example 1: y=x²−4 → parabola opening upward.\nExample 2: y=x³−3x → cubic curve crossing x-axis thrice."
      },
      {
        "title": "1️⃣4️⃣ Turning Points",
        "definition":
        "Turning points occur where the slope (derivative) of the polynomial equals zero (dy/dx = 0).",
        "formula": "For y=x²−4x+3, dy/dx=2x−4=0 → x=2",
        "example":
        "Example 1: y=x²−4x+3 → minimum at x=2\nExample 2: y=x³−3x² → turning points at x=0 and x=2"
      },
      {
        "title": "1️⃣5️⃣ Quadratic Expression & Formula",
        "definition":
        "A quadratic expression is in the form ax²+bx+c=0. The quadratic formula finds roots of such equations.",
        "formula": "x = (−b ± √(b²−4ac)) / 2a",
        "example":
        "Example 1: x²−3x+2=0 → x=1,2\nExample 2: 2x²−4x−6=0 → x=3 or x=−1"
      },
      {
        "title": "1️⃣6️⃣ The Discriminant",
        "definition":
        "The discriminant (Δ) = b² − 4ac determines the nature of quadratic roots.",
        "formula":
        "Δ > 0 → two real roots\nΔ = 0 → one real root\nΔ < 0 → complex roots",
        "example":
        "Example 1: x²−4x+3 → Δ=4, two real roots\nExample 2: x²+4x+5 → Δ<0, no real roots"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Polynomials and Their Operations",
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

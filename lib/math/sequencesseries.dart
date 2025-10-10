import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class sequenceseries extends StatelessWidget {
  const sequenceseries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics = [
      {
        "title": "📘 Definition of Sequences and Series",
        "definition":
        "A sequence is a list of numbers arranged in a specific order following a rule or pattern. A series is the sum of the terms of a sequence.",
        "formula": "Sequence: a₁, a₂, a₃, ... , aₙ\nSeries: Sₙ = a₁ + a₂ + a₃ + ... + aₙ",
        "example":
        "Example 1: Sequence → 2, 4, 6, 8, 10,... (even numbers)\nExample 2: Series → 2 + 4 + 6 + 8 + 10 = 30"
      },
      {
        "title": "📗 Sigma Notation (Σ)",
        "definition":
        "Sigma (Σ) notation is a shorthand way of writing a sum of terms that follow a specific pattern or rule. The Greek letter Σ means 'sum of'.",
        "formula": "Σ from i=1 to n of aᵢ = a₁ + a₂ + ... + aₙ",
        "example":
        "Example 1: Σ (i=1 to 4) i = 1 + 2 + 3 + 4 = 10\nExample 2: Σ (i=1 to 3) (2i) = 2 + 4 + 6 = 12"
      },
      {
        "title": "📘 Recognizing Simple Progressions",
        "definition":
        "A progression is a pattern of numbers where each term follows a specific rule. It may increase or decrease regularly.",
        "formula": "Common difference (AP): d = a₂ - a₁\nCommon ratio (GP): r = a₂ / a₁",
        "example":
        "Example 1: 3, 6, 9, 12 → common difference = 3 (AP)\nExample 2: 2, 4, 8, 16 → common ratio = 2 (GP)"
      },
      {
        "title": "📗 Arithmetic Progression (A.P.)",
        "definition":
        "An arithmetic progression is a sequence where each term is obtained by adding a fixed number (the common difference) to the previous term.",
        "formula": "nᵗʰ term: aₙ = a + (n−1)d\nSum: Sₙ = n/2 × [2a + (n−1)d]",
        "example":
        "Example 1: For 3, 6, 9, 12,... find 10th term → a = 3, d = 3 → a₁₀ = 3 + 9×3 = 30.\nExample 2: Find sum of first 5 terms → S₅ = 5/2 × [2×3 + 4×3] = 5/2 × 18 = 45."
      },
      {
        "title": "📘 Geometric Progression (G.P.)",
        "definition":
        "A geometric progression is a sequence in which each term is obtained by multiplying the previous term by a constant number called the common ratio (r).",
        "formula": "nᵗʰ term: aₙ = arⁿ⁻¹\nSum: Sₙ = a(1−rⁿ)/(1−r)  if r ≠ 1",
        "example":
        "Example 1: For 2, 4, 8, 16, find 5th term → a = 2, r = 2 → a₅ = 2×2⁴ = 32.\nExample 2: Find sum of first 4 terms → S₄ = 2(1−2⁴)/(1−2) = 2(−15)/−1 = 30."
      },
      {
        "title": "📗 Sum of an Infinite Geometric Series",
        "definition":
        "If the common ratio (r) lies between -1 and 1, then the infinite geometric series converges to a finite value.",
        "formula": "S∞ = a / (1 − r),  where |r| < 1",
        "example":
        "Example 1: For 10, 5, 2.5, ... → a = 10, r = ½ → S∞ = 10 / (1 − ½) = 20.\nExample 2: For 8, 4, 2, 1, ... → a = 8, r = ½ → S∞ = 8 / (½) = 16."
      },
      {
        "title": "📘 Binomial Expression",
        "definition":
        "A binomial expression contains two terms separated by a plus or minus sign. It can be expanded using the Binomial Theorem.",
        "formula": "(a + b)ⁿ = aⁿ + nC₁aⁿ⁻¹b + nC₂aⁿ⁻²b² + ... + bⁿ",
        "example":
        "Example 1: (x + y)² = x² + 2xy + y².\nExample 2: (a − b)³ = a³ − 3a²b + 3ab² − b³."
      },
      {
        "title": "📗 Expansion of (x + 1)ⁿ",
        "definition":
        "When one term is 1, expansion simplifies because powers of 1 are always 1. Useful in binomial expansions and approximations.",
        "formula": "(x + 1)ⁿ = xⁿ + nC₁xⁿ⁻¹ + nC₂xⁿ⁻² + ... + 1",
        "example":
        "Example 1: (x + 1)³ = x³ + 3x² + 3x + 1.\nExample 2: (x + 1)⁴ = x⁴ + 4x³ + 6x² + 4x + 1."
      },
      {
        "title": "📘 Pascal’s Triangle",
        "definition":
        "Pascal’s triangle is a triangular arrangement of numbers where each number is the sum of the two directly above it. It gives the coefficients for binomial expansions.",
        "formula":
        "Row 0: 1\nRow 1: 1 1\nRow 2: 1 2 1\nRow 3: 1 3 3 1\nRow 4: 1 4 6 4 1",
        "example":
        "Example 1: Coefficients of (a + b)⁴ are 1, 4, 6, 4, 1.\nExample 2: Coefficients of (a + b)⁵ are 1, 5, 10, 10, 5, 1."
      },
      {
        "title": "📗 Binomial Coefficient Formula",
        "definition":
        "The binomial coefficient (nCr) represents the number of ways to choose r elements from n elements. It is also used to calculate binomial terms.",
        "formula": "nCr = n! / [r!(n−r)!]",
        "example":
        "Example 1: 5C2 = 5! / (2!3!) = 10.\nExample 2: 6C3 = 6! / (3!3!) = 20."
      },
      {
        "title": "📘 Expanding Binomials",
        "definition":
        "To expand a binomial, multiply each term of the first expression by each term of the second, or use the binomial theorem for higher powers.",
        "formula": "(a + b)ⁿ = Σ (nCr × aⁿ⁻ʳ × bʳ)",
        "example":
        "Example 1: (x + 2)² = x² + 4x + 4.\nExample 2: (2x − 3)³ = 8x³ − 36x² + 54x − 27."
      },
    ];




    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Sequences and Series",
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

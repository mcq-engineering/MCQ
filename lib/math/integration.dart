import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class integration extends StatelessWidget {
  const integration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics =
    [
      { "title": "Basic Integration", "definition": "Integration is the reverse of differentiation, used to find accumulated quantities.", "formula": "∫x^n dx = (x^(n+1))/(n+1) + C", "example": "∫x²dx = x³/3 + C, ∫3x dx = 3x²/2 + C" },
      { "title": "Notation", "definition": "The symbol ∫ represents integration.", "formula": "∫f(x) dx", "example": "∫2x dx = x² + C" },
      { "title": "Integration Rules", "definition": "Basic rules: constant multiple, sum, difference.", "formula": "∫kf(x)dx = k∫f(x)dx, ∫[f(x)+g(x)]dx = ∫f(x)dx+∫g(x)dx", "example": "∫(2x+3)dx = x²+3x+C" },
      { "title": "Indefinite Integrals", "definition": "Represent a family of functions differing by a constant C.", "formula": "∫f(x) dx = F(x) + C", "example": "∫3x² dx = x³ + C" },
      { "title": "Definite Integrals", "definition": "Gives a numerical value representing area under curve.", "formula": "∫ₐᵇ f(x) dx = F(b) - F(a)", "example": "∫₀² x²dx = 8/3" },
      { "title": "Fundamental Theorem of Calculus", "definition": "Differentiation and integration are inverse processes.", "formula": "d/dx(∫ₐˣ f(t) dt) = f(x)", "example": "∫₀ˣ 2t dt = x²" },
      { "title": "Areas Bounded by a Curve", "definition": "Integration can find area between x-axis and curve.", "formula": "Area = ∫ₐᵇ |f(x)| dx", "example": "∫₀¹ x²dx = 1/3" },
      { "title": "Areas Involving Two Curves", "definition": "Area between two curves is the difference of integrals.", "formula": "∫ₐᵇ [f(x)-g(x)] dx", "example": "∫₀¹ (x - x²)dx = 1/6" },
      { "title": "Trapezium Rule", "definition": "Approximates area using trapezoids.", "formula": "A ≈ (h/2)[y0+2(y1+...+y(n-1))+yn]", "example": "Under y=x² between 0 and 1" },
      { "title": "Midpoint Rule", "definition": "Uses midpoints for better approximation.", "formula": "A ≈ h[y(midpoints)]", "example": "Midpoint estimate for ∫₀¹ x²dx" },
      { "title": "Integrals to Infinity", "definition": "Improper integrals are evaluated using limits.", "formula": "∫ₐ^∞ f(x) dx = lim(b→∞)∫ₐᵇ f(x) dx", "example": "∫₁^∞ 1/x² dx = 1" }
    ];
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Integration",
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

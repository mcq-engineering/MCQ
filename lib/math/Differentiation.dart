import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class differentiation extends StatelessWidget {
  const differentiation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics = [
      {
        "title": "📘 Limit of a Function",
        "definition":
        "The limit of a function describes the value that a function approaches as the input (x) approaches a particular number. It helps us define continuity and derivatives.",
        "formula": "lim (x → a) f(x) = L",
        "example":
        "Example 1: lim (x → 2) (x² + 3x) = 4 + 6 = 10.\nExample 2: lim (x → 0) (sin x / x) = 1."
      },
      {
        "title": "📗 The Derivative",
        "definition":
        "The derivative of a function represents its rate of change or the slope of its curve at any point. It is the limit of the average rate of change as the interval approaches zero.",
        "formula": "f'(x) = lim (h → 0) [f(x + h) - f(x)] / h",
        "example":
        "Example 1: For f(x) = x², f'(x) = 2x.\nExample 2: For f(x) = 3x³, f'(x) = 9x²."
      },
      {
        "title": "📘 Differentiation Rules",
        "definition":
        "Differentiation follows specific rules such as the power rule, sum rule, product rule, quotient rule, and chain rule.",
        "formula":
        "1. Power Rule: d/dx(xⁿ) = nxⁿ⁻¹\n2. Sum Rule: d/dx(f + g) = f' + g'\n3. Product Rule: d/dx(fg) = f'g + fg'\n4. Quotient Rule: d/dx(f/g) = (f'g - fg') / g²\n5. Chain Rule: d/dx[f(g(x))] = f'(g(x)) × g'(x)",
        "example":
        "Example 1: d/dx(x³ + 2x) = 3x² + 2.\nExample 2: d/dx(3x²sinx) = 6xsinx + 3x²cosx."
      },
      {
        "title": "📗 Gradient of a Line",
        "definition":
        "The gradient (slope) of a function at any point is given by its derivative. It shows how steep the curve is at that point.",
        "formula": "Gradient at x = a → f'(a)",
        "example":
        "Example 1: f(x) = x², f'(x) = 2x → Gradient at x = 3 is 6.\nExample 2: f(x) = 4x³, f'(x) = 12x² → Gradient at x = 2 is 48."
      },
      {
        "title": "📘 Tangent Line",
        "definition":
        "The tangent line to a curve at a point touches the curve at exactly one point and has a slope equal to the derivative at that point.",
        "formula": "Equation: y - y₁ = f'(x₁)(x - x₁)",
        "example":
        "Example 1: f(x) = x² at x = 2 → f'(x) = 2x → f'(2) = 4. Equation: y - 4 = 4(x - 2).\nExample 2: f(x) = x³ at x = 1 → f'(x) = 3x² → f'(1) = 3 → y - 1 = 3(x - 1)."
      },
      {
        "title": "📗 Normal Line",
        "definition":
        "The normal line to a curve at a point is perpendicular to the tangent at that point. Its slope is the negative reciprocal of the tangent’s slope.",
        "formula": "Equation: y - y₁ = -1/f'(x₁) × (x - x₁)",
        "example":
        "Example 1: For f(x) = x² at x = 2 → f'(2) = 4 → Normal slope = -¼ → y - 4 = -¼(x - 2).\nExample 2: For f(x) = 3x³, f'(x) = 9x², at x = 1 → slope = 9 → Normal: y - 3 = -1/9(x - 1)."
      },
      {
        "title": "📘 Higher Derivatives",
        "definition":
        "Higher derivatives are obtained by differentiating a derivative. The second derivative gives information about curvature and concavity.",
        "formula": "f''(x) = d/dx(f'(x))",
        "example":
        "Example 1: f(x) = x³ → f'(x) = 3x² → f''(x) = 6x.\nExample 2: f(x) = sinx → f'(x) = cosx → f''(x) = -sinx."
      },
      {
        "title": "📗 Application of Derivative to Graphs",
        "definition":
        "Derivatives are used to determine where a function increases or decreases, the slope of the tangent, and concavity of graphs.",
        "formula": "If f'(x) > 0 → Increasing,  f'(x) < 0 → Decreasing",
        "example":
        "Example 1: f(x) = x³ - 3x² → f'(x) = 3x² - 6x → Positive for x > 2.\nExample 2: f(x) = x² → always increasing for x > 0, decreasing for x < 0."
      },
      {
        "title": "📘 Rules of Stationary Points",
        "definition":
        "A stationary point occurs where the derivative equals zero (f'(x) = 0). It can be a maximum, minimum, or point of inflection.",
        "formula": "f'(x) = 0",
        "example":
        "Example 1: f(x) = x² → f'(x) = 2x = 0 → x = 0 (minimum).\nExample 2: f(x) = -x² → f'(x) = -2x = 0 → x = 0 (maximum)."
      },
      {
        "title": "📗 Locating and Evaluating Stationary Points",
        "definition":
        "To find stationary points, solve f'(x) = 0. Then use f''(x) to determine the nature of the point — if f''(x) > 0 → minimum, f''(x) < 0 → maximum.",
        "formula": "f'(x) = 0 and f''(x) determines nature",
        "example":
        "Example 1: f(x) = x³ - 3x² + 2 → f'(x) = 3x² - 6x → 3x(x - 2) = 0 → x = 0, 2. f''(x) = 6x - 6 → f''(0) = -6 (max), f''(2) = 6 (min).\nExample 2: f(x) = x⁴ - 4x² → f'(x) = 4x³ - 8x = 4x(x² - 2) → x = 0, ±√2."
      },
    ];




    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Differentiation",
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

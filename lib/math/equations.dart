import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EquationsPage extends StatelessWidget {
  const EquationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> questions = [
      {
        'title': 'Manipulating Expressions',
        'definition':
        'Manipulating expressions means simplifying, expanding, or factorizing algebraic expressions to make them easier to work with.',
        'formula': '(a + b)² = a² + 2ab + b²\n(a - b)² = a² - 2ab + b²\n(a + b)(a - b) = a² - b²',
        'examples': [
          '(x + 3)(x + 2) = x² + 5x + 6',
          '(2x - 4)(x + 5) = 2x² + 6x - 20',
          'Factorize: x² + 5x + 6 = (x + 2)(x + 3)'
        ]
      },
      {
        'title': 'Collecting Like Terms',
        'definition':
        'Like terms have the same variables raised to the same powers. They can be added or subtracted to simplify expressions.',
        'formula': 'ax + bx = (a + b)x',
        'examples': [
          '4y + 7y = 11y',
          '3x² + 2x² = 5x²',
          '6p + 4q + 2p = 8p + 4q'
        ]
      },
      {
        'title': 'Multiplication of Algebraic Expressions',
        'definition':
        'Multiply coefficients together and add the powers of variables with the same base.',
        'formula': 'xᵐ × xⁿ = xᵐ⁺ⁿ',
        'examples': [
          '(2x²)(3x³) = 6x⁵',
          '(a²b)(ab³) = a³b⁴',
          '(4x)(-3x²) = -12x³'
        ]
      },
      {
        'title': 'Fractions in Algebra',
        'definition':
        'Simplify algebraic fractions by finding a common denominator, or factorize and cancel common factors.',
        'formula': 'a/b ÷ c/d = (a/b) × (d/c)',
        'examples': [
          '(x² / x) = x',
          '(3a²b) / (6ab) = a/2',
          'Simplify: (x² + 2x) / x = x + 2'
        ]
      },
      {
        'title': 'Solving Linear Equations',
        'definition':
        'To solve an equation, find the variable value that makes both sides equal.',
        'formula': 'ax + b = c → x = (c - b) / a',
        'examples': [
          '2x + 3 = 7 → x = 2',
          '5x - 4 = 16 → x = 4',
          '3x/2 = 9 → x = 6'
        ]
      },
      {
        'title': 'Changing the Subject of an Equation',
        'definition':
        'Rearrange the equation to make another variable the subject (isolated on one side).',
        'formula': 'From V = IR → I = V / R',
        'examples': [
          'From A = πr² → r = √(A / π)',
          'From S = ut + ½at² → a = 2(S - ut) / t²',
          'From y = mx + c → x = (y - c) / m'
        ]
      },
      {
        'title': 'Solving Quadratic Equations',
        'definition':
        'Quadratic equations (ax² + bx + c = 0) can be solved by factorization, completing the square, or using the quadratic formula.',
        'formula': 'x = (-b ± √(b² - 4ac)) / 2a',
        'examples': [
          'x² + 5x + 6 = 0 → (x + 2)(x + 3) = 0 → x = -2, -3',
          'x² - 9 = 0 → (x + 3)(x - 3) = 0 → x = ±3',
          'x² + 2x - 3 = 0 → x = 1, -3'
        ]
      },
      {
        'title': 'Simultaneous Equations',
        'definition':
        'Two or more equations solved together to find common variable values.',
        'formula': 'ax + by = c\npx + qy = r',
        'examples': [
          'x + y = 10, x - y = 2 → x = 6, y = 4',
          '2x + 3y = 12, 3x - y = 5 → x = 3, y = 2',
          '5a + 2b = 9, a - b = 1 → a = 1.57, b = 0.57'
        ]
      },
      {
        'title': 'Elimination Method',
        'definition':
        'Eliminate one variable by adding or subtracting the equations.',
        'formula': 'Add or subtract the two equations to remove one variable.',
        'examples': [
          '2x + y = 10, 3x - y = 5 → Add → 5x = 15 → x = 3',
          'x + y = 8, x - y = 2 → Add → 2x = 10 → x = 5, y = 3',
          '3a + 2b = 11, 3a - 2b = 1 → Add → 6a = 12 → a = 2, b = 2.5'
        ]
      },
      {
        'title': 'Substitution Method',
        'definition':
        'Make one variable the subject of one equation, then substitute into the other.',
        'formula': 'If y = 2x + 1 and x + y = 5 → x + (2x + 1) = 5',
        'examples': [
          'x + y = 5, y = 2x + 1 → x = 4/3, y = 11/3',
          '3x + 2y = 12, y = x + 2 → x = 2, y = 4',
          'a + b = 6, a = 2b → 2b + b = 6 → b = 2, a = 4'
        ]
      },
      {
        'title': 'Graphical Method',
        'definition':
        'Draw both equations on a graph; their intersection gives the solution.',
        'formula': 'Intersection point (x, y) = Solution',
        'examples': [
          'y = 2x + 1 and y = -x + 7 intersect at (2, 5)',
          'y = x + 3 and y = 2x + 1 intersect at (2, 5)',
          'y = 3x - 1 and y = x + 5 intersect at (3, 8)'
        ]
      },
      {
        'title': 'Word Problems using Simultaneous Equations',
        'definition':
        'Translate real-life problems into equations, then solve using elimination or substitution.',
        'formula': 'Translate → Form equations → Solve',
        'examples': [
          '2 pens + 1 pencil = Rs. 60, 1 pen + 2 pencils = Rs. 50 → pen = 23.33, pencil = 13.33',
          '2 books + 3 pens = Rs. 90, 1 book + 1 pen = Rs. 35 → book = 15, pen = 20',
          '3 oranges + 2 apples = Rs. 40, 2 oranges + 3 apples = Rs. 35 → orange = 10, apple = 5'
        ]
      },
    ];

    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Equations",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final topic = questions[index];
          return Card(
            elevation: 14,
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
                  const Text(
                    "🧮 Examples:",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 4),
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

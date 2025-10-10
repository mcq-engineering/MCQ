import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class errorsinequalities extends StatelessWidget {
  const errorsinequalities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics = [
      {
        "title": "📘 What Are Errors?",
        "definition":
        "An error is the difference between a measured or calculated value and the true value. Every measurement has some degree of uncertainty.",
        "formula":
        "Error = Measured Value − True Value",
        "example":
        "Example 1: True length = 2.00 m, measured = 1.98 m → Error = −0.02 m\nExample 2: True mass = 100 g, measured = 99 g → Error = −1 g"
      },
      {
        "title": "1️⃣ Absolute Error",
        "definition":
        "Absolute error is the magnitude (size) of the difference between the measured value and the true value. It ignores whether the error is positive or negative.",
        "formula":
        "Absolute Error = |Measured Value − True Value|",
        "example":
        "Example 1: True = 20.0 cm, Measured = 19.6 cm → |20.0 − 19.6| = 0.4 cm\nExample 2: True = 55 kg, Measured = 54.8 kg → |55 − 54.8| = 0.2 kg"
      },
      {
        "title": "2️⃣ Relative Error",
        "definition":
        "Relative error compares the absolute error to the true value to show how large the error is relative to the true measurement.",
        "formula":
        "Relative Error = Absolute Error / True Value",
        "example":
        "Example 1: (0.4 ÷ 20) = 0.02 = 2%\nExample 2: (0.2 ÷ 55) ≈ 0.0036 = 0.36%"
      },
      {
        "title": "3️⃣ Percentage Error",
        "definition":
        "Percentage error expresses the relative error as a percentage. It shows how accurate a measurement is in percentage terms.",
        "formula":
        "Percentage Error = (Absolute Error / True Value) × 100%",
        "example":
        "Example 1: (0.4 ÷ 20) × 100 = 2%\nExample 2: (0.2 ÷ 55) × 100 ≈ 0.36%"
      },
      {
        "title": "4️⃣ Inequalities",
        "definition":
        "An inequality compares two values and shows whether one is larger or smaller than the other. It uses signs like <, >, ≤, and ≥.",
        "formula":
        "Common Signs:\n<  means 'less than'\n>  means 'greater than'\n≤  means 'less than or equal to'\n≥  means 'greater than or equal to'",
        "example":
        "Example 1: 3 < 7 (true)\nExample 2: x + 2 ≥ 5 → x ≥ 3"
      },
      {
        "title": "5️⃣ The Four Signs of Inequalities",
        "definition":
        "There are four inequality symbols used to compare values in mathematics.",
        "formula":
        "<  (less than)\n>  (greater than)\n≤  (less than or equal to)\n≥  (greater than or equal to)",
        "example":
        "Example 1: 2x + 3 < 9 → x < 3\nExample 2: 4y - 1 ≥ 7 → y ≥ 2"
      },
      {
        "title": "6️⃣ Combining Inequalities",
        "definition":
        "Two or more inequalities can be combined to describe a range of possible values for a variable.",
        "formula":
        "a < x < b means x is between a and b",
        "example":
        "Example 1: 2 < x ≤ 6 → x is greater than 2 and up to 6\nExample 2: −1 ≤ y ≤ 4 → y lies between −1 and 4"
      },
      {
        "title": "7️⃣ Solving Linear Inequalities",
        "definition":
        "Linear inequalities are solved like equations. The key rule: when you multiply or divide both sides by a negative number, you must flip the inequality sign.",
        "formula":
        "Example Rule: if −2x > 6 → x < −3",
        "example":
        "Example 1: 3x + 2 < 11 → 3x < 9 → x < 3\nExample 2: 5 − 2x ≥ 7 → −2x ≥ 2 → x ≤ −1"
      },
      {
        "title": "8️⃣ Multiplying or Dividing by a Negative Number",
        "definition":
        "When an inequality is multiplied or divided by a negative number, the direction of the inequality sign must be reversed.",
        "formula":
        "If a < b, then −a > −b",
        "example":
        "Example 1: −2x > 6 → x < −3\nExample 2: −4y ≤ 12 → y ≥ −3"
      },
      {
        "title": "9️⃣ Solving Quadratic Inequalities",
        "definition":
        "A quadratic inequality involves x². To solve, find the roots of the quadratic equation, test intervals, and determine where the inequality holds true.",
        "formula":
        "General Form: ax² + bx + c > 0 or ax² + bx + c < 0",
        "example":
        "Example 1: x² − 4 < 0 → (x − 2)(x + 2) < 0 → −2 < x < 2\nExample 2: x² − 3x ≥ 0 → x(x − 3) ≥ 0 → x ≤ 0 or x ≥ 3"
      },
      {
        "title": "🔟 Summary Table",
        "definition":
        "A quick reference for all key formulas and rules related to errors and inequalities.",
        "formula":
        "Absolute Error = |M − T|\nRelative Error = AE / True Value\nPercentage Error = (AE / True Value) × 100%\nFlip sign if × or ÷ by negative\nQuadratic: Solve roots → test intervals",
        "example":
        "Example 1: −2x > 6 → x < −3\nExample 2: x² − 4 < 0 → −2 < x < 2"
      },
    ];


    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Errors and Inequalities",
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

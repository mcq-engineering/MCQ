import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class geometrygraph extends StatelessWidget {
  const geometrygraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> topics = [
      {
        "title": "📘 Coordinate Geometry Overview",
        "definition":
        "Coordinate geometry connects algebra and geometry using coordinates to describe points, lines, and curves on a plane. It helps analyze distances, slopes, and intersections.",
        "formula": "Points are represented as (x, y) on a Cartesian plane.",
        "example":
        "Example 1: Point A(3, 4) lies 3 units along x-axis and 4 units along y-axis.\nExample 2: Point B(−2, 5) lies left of y-axis and above x-axis."
      },
      {
        "title": "1️⃣ Straight Line",
        "definition":
        "A straight line is the shortest distance between two points. Its equation relates x and y linearly.",
        "formula": "General form: y = mx + c, where m = gradient and c = y-intercept.",
        "example":
        "Example 1: y = 2x + 3 (gradient = 2, intercept = 3)\nExample 2: y = −x + 4 (gradient = −1, intercept = 4)"
      },
      {
        "title": "2️⃣ Equation of a Straight Line",
        "definition":
        "The equation of a straight line can be written in several forms depending on the given information.",
        "formula":
        "General: y = mx + c\nPoint–slope: y − y₁ = m(x − x₁)\nTwo-point: (y − y₁)/(y₂ − y₁) = (x − x₁)/(x₂ − x₁)",
        "example":
        "Example 1: Line through (1,2) and (3,6): m = (6−2)/(3−1)=2 → y−2=2(x−1)\nExample 2: Line through (0,3) with m=4 → y=4x+3"
      },
      {
        "title": "3️⃣ Gradient (Slope) of a Line",
        "definition":
        "The gradient (slope) measures how steep a line is. It’s the change in y divided by the change in x between two points.",
        "formula": "m = (y₂ − y₁) / (x₂ − x₁)",
        "example":
        "Example 1: Points (1,2) and (3,6): m = (6−2)/(3−1) = 2\nExample 2: Points (2,5) and (−1,2): m = (2−5)/(−1−2)=−3/−3=1"
      },
      {
        "title": "4️⃣ Point-Gradient Form",
        "definition":
        "Used when the gradient and one point on the line are known.",
        "formula": "y − y₁ = m(x − x₁)",
        "example":
        "Example 1: Point (2,3), m=4 → y−3=4(x−2)\nExample 2: Point (−1,5), m=−2 → y−5=−2(x+1)"
      },
      {
        "title": "5️⃣ Parallel and Perpendicular Lines",
        "definition":
        "Parallel lines have equal gradients. Perpendicular lines have gradients that multiply to −1.",
        "formula":
        "Parallel: m₁ = m₂\nPerpendicular: m₁ × m₂ = −1",
        "example":
        "Example 1: y=2x+1 and y=2x−4 → parallel.\nExample 2: y=x and y=−x → perpendicular."
      },
      {
        "title": "6️⃣ Distance Between Two Points",
        "definition":
        "The distance between points (x₁, y₁) and (x₂, y₂) is found using the Pythagoras theorem.",
        "formula": "D = √((x₂ − x₁)² + (y₂ − y₁)²)",
        "example":
        "Example 1: A(2,3), B(7,7): D = √((7−2)²+(7−3)²)=√(25+16)=√41\nExample 2: P(−1,−2), Q(3,1): D = √((3+1)²+(1+2)²)=√(16+9)=5"
      },
      {
        "title": "7️⃣ Midpoint of a Line",
        "definition":
        "The midpoint is the point halfway between two given points.",
        "formula": "M = ((x₁ + x₂)/2, (y₁ + y₂)/2)",
        "example":
        "Example 1: A(2,3), B(4,7): M = (3,5)\nExample 2: P(−2,4), Q(6,8): M = (2,6)"
      },
      {
        "title": "8️⃣ Intersection of Lines",
        "definition":
        "The intersection point of two lines is where they meet — the solution to their simultaneous equations.",
        "formula":
        "Solve the system:\ny = m₁x + c₁\ny = m₂x + c₂\n→ m₁x + c₁ = m₂x + c₂ → find x, then y.",
        "example":
        "Example 1: y=2x+1 and y=−x+4 → 2x+1=−x+4 → x=1, y=3.\nExample 2: y=3x−2 and y=−x+6 → 3x−2=−x+6 → x=2, y=4."
      },
      {
        "title": "9️⃣ Curves (y = xⁿ)",
        "definition":
        "Curves of the form y=xⁿ have distinct shapes depending on n. Even powers produce symmetrical curves, odd powers pass through the origin with alternating signs.",
        "formula": "y = xⁿ",
        "example":
        "Example 1: y=x² is a parabola opening upward.\nExample 2: y=x³ is a cubic curve with an inflection at the origin."
      },
      {
        "title": "🔟 Intersection of Curves and Lines",
        "definition":
        "The intersection points between a line and a curve are found by solving their equations simultaneously.",
        "formula": "Substitute y from the line into the curve’s equation, then solve for x.",
        "example":
        "Example 1: y=x² and y=2x+3 → x²=2x+3 → x²−2x−3=0 → x=3 or x=−1.\nExample 2: y=x³ and y=4x → x³=4x → x(x²−4)=0 → x=0,±2."
      },
      {
        "title": "1️⃣1️⃣ The Circle",
        "definition":
        "A circle is the locus of all points that are at a constant distance (radius) from a fixed center point.",
        "formula": "(x − h)² + (y − k)² = r²",
        "example":
        "Example 1: Center (0,0), radius 5 → x² + y² = 25\nExample 2: Center (2,−3), radius 4 → (x−2)² + (y+3)² = 16"
      },
      {
        "title": "1️⃣2️⃣ Properties of a Circle",
        "definition":
        "All radii are equal. The diameter passes through the center. Tangents are perpendicular to the radius at the point of contact.",
        "formula": "Tangent ⟂ Radius at point of contact.",
        "example":
        "Example 1: Line touching x²+y²=25 at (3,4) → tangent gradient = −(x/y)=−(3/4)\nExample 2: Diameter = 2r, Circumference = 2πr"
      },
      {
        "title": "1️⃣3️⃣ Equation of a Circle",
        "definition":
        "If the circle has center (h, k) and radius r, its equation is derived from the distance formula.",
        "formula": "(x − h)² + (y − k)² = r²",
        "example":
        "Example 1: Center (3,2), radius 5 → (x−3)²+(y−2)²=25\nExample 2: Center (0,−4), radius 2 → x²+(y+4)²=4"
      },
      {
        "title": "1️⃣4️⃣ Angular Measurement – Degrees and Radians",
        "definition":
        "Angles can be measured in degrees (°) or radians (rad). A full circle equals 360° or 2π radians.",
        "formula": "π radians = 180°  →  1 rad = 180°/π",
        "example":
        "Example 1: Convert 90° to radians → (90×π)/180 = π/2\nExample 2: Convert π/3 rad to degrees → (π/3×180)/π = 60°"
      },
      {
        "title": "1️⃣5️⃣ Conversion Between Degrees and Radians",
        "definition":
        "Use π radians = 180° for conversion between the two units.",
        "formula":
        "Degrees = (Radians × 180) / π\nRadians = (Degrees × π) / 180",
        "example":
        "Example 1: 120° = (120×π)/180 = 2π/3 rad\nExample 2: π/6 rad = (π/6×180)/π = 30°"
      },
      {
        "title": "1️⃣6️⃣ Arc Length",
        "definition":
        "The length of an arc of a circle is proportional to the angle subtended by it at the center.",
        "formula": "Arc length (l) = rθ (θ in radians)",
        "example":
        "Example 1: r=7 cm, θ=π/3 → l=7×π/3 ≈ 7.33 cm\nExample 2: r=10 cm, θ=π/2 → l=10×π/2=5π≈15.7 cm"
      },
      {
        "title": "1️⃣7️⃣ Area of a Sector",
        "definition":
        "The area of a sector is a fraction of the total area of the circle, proportional to the angle at the center.",
        "formula": "Area = (1/2)r²θ (θ in radians)",
        "example":
        "Example 1: r=5, θ=π/4 → Area=(1/2)(25)(π/4)=25π/8\nExample 2: r=6, θ=π/3 → Area=(1/2)(36)(π/3)=6π"
      },
    ];



    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Geometry and graph",
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

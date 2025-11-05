import 'package:flutter/material.dart';

import 'chapter1mcqchemistry.dart';

class introduction extends StatelessWidget {
  const introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Introduction"),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.quiz, color: Colors.white),
            tooltip: 'Go to MCQs',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChemistryChapter1McqScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerCard(
              "Introduction to Chemistry",
              "Learn about matter, its types, and the branches of modern chemistry.",
            ),
            ebookCard(
              "What is Chemistry?",
              "Chemistry is the branch of science that deals with the study of matter — its composition, structure, properties, and the changes it undergoes during chemical reactions. "
                  "It helps us understand what substances are made of, how they behave, and how they can change into other substances.\n\n"
                  "Example: Water (H₂O) is made of hydrogen and oxygen.",
            ),
            ebookCard(
              "Branches of Modern Chemistry",
              "Modern chemistry is divided into several main branches:\n\n"
                  "• Physical Chemistry – Study of energy and behavior of matter.\n"
                  "• Organic Chemistry – Study of carbon compounds like fuels and plastics.\n"
                  "• Inorganic Chemistry – Study of non-carbon compounds such as salts and minerals.\n"
                  "• Analytical Chemistry – Identifying and analyzing substances.\n"
                  "• Biochemistry – Chemical processes in living organisms.\n"
                  "• Industrial Chemistry – Application of chemistry in industries.\n"
                  "• Nuclear Chemistry – Reactions and changes in atomic nuclei.\n"
                  "• Environmental Chemistry – Study of chemicals affecting the environment.",
            ),
            ebookCard(
              "Kinds of Matter",
              "Matter is anything that has mass and occupies space.\n\n"
                  "It can be divided into two main types:\n"
                  "• Pure Substances\n• Mixtures",
            ),
            ebookCard(
              "Pure Substances",
              "A pure substance contains only one kind of particle (atom or molecule) and has a uniform composition with fixed properties.\n\n"
                  "Examples: Water (H₂O), Oxygen gas (O₂), Gold (Au).",
            ),
            ebookCard(
              "Elements",
              "An element is a pure substance that cannot be broken down into simpler substances by chemical means.\n\n"
                  "Examples: Hydrogen (H), Oxygen (O), Iron (Fe), Carbon (C)\n\n"
                  "Types of Elements:\n"
                  "• Metals – Shiny, conduct electricity (e.g., Cu, Fe)\n"
                  "• Non-metals – Dull, poor conductors (e.g., O, N, S)\n"
                  "• Metalloids – Have properties of both (e.g., Si, As)",
            ),
            ebookCard(
              "Compounds",
              "A compound is a pure substance formed when two or more elements chemically combine in a fixed ratio.\n\n"
                  "Examples: Water (H₂O), Carbon dioxide (CO₂), Sodium chloride (NaCl)\n\n"
                  "Properties:\n"
                  "• Can be broken down chemically.\n"
                  "• Have different properties from their elements.",
            ),
            ebookCard(
              "Mixtures",
              "A mixture is a combination of two or more substances that are physically mixed, not chemically combined.\n\n"
                  "Examples: Air, saltwater, soil.\n\n"
                  "Types:\n"
                  "• Homogeneous mixtures – Uniform composition (e.g., sugar water).\n"
                  "• Heterogeneous mixtures – Non-uniform composition (e.g., sand and water).",
            ),
            ebookCard(
              "Properties of Matter",
              "Matter has two main types of properties:\n\n"
                  "A. Physical Properties:\n"
                  "• Color\n• Odor\n• Melting point\n• Boiling point\n• Density\n• Solubility\n\n"
                  "B. Chemical Properties:\n"
                  "• Flammability (ability to burn)\n• Reactivity with acids or bases\n• Rusting of iron\n• Decomposition on heating.",
            ),
            ebookCard(
              "Summary Table",
              "Here’s a quick summary of key points:",
              table: summaryTable(),
            ),
            const SizedBox(height: 24),
            navigationButtons(context),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // 🧱 --- Widget Builders --- 🧱

  Widget headerCard(String title, String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.teal[400],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(subtitle,
                style: TextStyle(fontSize: 16, color: Colors.teal[50])),
          ],
        ),
      ),
    );
  }

  Widget ebookCard(String title, String content, {Widget? table}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal)),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 16, height: 1.5)),
            if (table != null) ...[
              const SizedBox(height: 12),
              table,
            ]
          ],
        ),
      ),
    );
  }

  Widget summaryTable() {
    final data = [
      ["Matter", "Anything that has mass and occupies space.", "Air, water, iron"],
      ["Pure Substance", "One kind of particle.", "Oxygen, water"],
      ["Element", "Cannot be broken down.", "Gold, carbon"],
      ["Compound", "Chemical combination of elements.", "H₂O, NaCl"],
      ["Mixture", "Physical combination of substances.", "Air, saltwater"],
      ["Physical Property", "Observed without changing identity.", "Color, density"],
      ["Chemical Property", "Observed during chemical change.", "Rusting, burning"],
    ];

    return Table(
      border: TableBorder.all(color: Colors.grey.shade400),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(4),
        2: FlexColumnWidth(3),
      },
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.teal[100]),
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Category", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Definition", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Examples", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        for (var row in data)
          TableRow(
            children: [
              Padding(padding: const EdgeInsets.all(8.0), child: Text(row[0])),
              Padding(padding: const EdgeInsets.all(8.0), child: Text(row[1])),
              Padding(padding: const EdgeInsets.all(8.0), child: Text(row[2])),
            ],
          ),
      ],
    );
  }

  Widget navigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Navigate to previous chapter (you can add navigation logic)
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Previous chapter not added yet")),
            );
          },
          icon: const Icon(Icons.arrow_back),
          label: const Text("Previous"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Navigate to next chapter (add your next page)
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Next chapter coming soon!")),
            );
          },
          icon: const Icon(Icons.arrow_forward),
          label: const Text("Next"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
        ),
      ],
    );
  }
}

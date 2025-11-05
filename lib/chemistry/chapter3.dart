import 'package:flutter/material.dart';
import 'mcqchapter3.dart'; // 👈 Make sure to create this file for MCQs

class ChemistryChapter3Screen extends StatelessWidget {
  const ChemistryChapter3Screen({super.key});

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 6.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.teal,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📘 Chemistry - Chapter 3"),
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
                MaterialPageRoute(builder: (context) => const ChemistryChapter3McqScreen()),
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
            buildSectionTitle("🧪 Introduction"),
            buildParagraph(
                "The periodic table is one of the most important tools in chemistry. "
                    "It organizes all known elements according to their properties so that we can easily understand and predict their behavior in chemical reactions."),

            buildSectionTitle("🔹 What is an Element?"),
            buildParagraph(
                "An element is a pure substance that consists of only one kind of atom. "
                    "It cannot be broken down into simpler substances by chemical methods. "
                    "Examples include Hydrogen (H), Oxygen (O), Iron (Fe), and Gold (Au). "
                    "Each element has a name, a symbol, and a unique atomic number (Z)."),

            buildSectionTitle("🔹 Historical Development of the Periodic Table"),
            buildParagraph("1. Dobereiner’s Triads (1829): Grouped elements in sets of three with similar properties."),
            buildParagraph("2. Newlands’ Law of Octaves (1864): Every 8th element had similar properties."),
            buildParagraph("3. Mendeleev’s Table (1869): Arranged elements by increasing atomic mass, leaving gaps for undiscovered ones."),
            buildParagraph("4. Moseley’s Modern Law (1913): Properties of elements are periodic functions of their atomic numbers."),

            buildSectionTitle("🔹 Structure of the Modern Periodic Table"),
            buildParagraph(
                "The modern periodic table is based on atomic number. It has 7 periods (rows) and 18 groups (columns)."),

            buildSectionTitle("🔹 Classification of Elements"),
            buildParagraph("1. Metals – Shiny, malleable, good conductors (e.g., Na, Fe, Al)."),
            buildParagraph("2. Nonmetals – Dull, brittle, poor conductors (e.g., O, N, Cl)."),
            buildParagraph("3. Metalloids – Have properties of both (e.g., Si, Ge)."),

            buildSectionTitle("🔹 Groups and Periods"),
            buildParagraph("• Groups are vertical columns with similar valence electrons."),
            buildParagraph("• Periods are horizontal rows showing the number of electron shells."),

            buildSectionTitle("🔹 Special Groups in the Periodic Table"),
            buildParagraph(
                "Group 1 – Alkali Metals (Li, Na, K)\n"
                    "Group 2 – Alkaline Earth Metals (Be, Mg, Ca)\n"
                    "Group 17 – Halogens (F, Cl, Br)\n"
                    "Group 18 – Noble Gases (He, Ne, Ar)"),

            buildSectionTitle("🔹 Periodic Trends"),
            buildParagraph("• Atomic Size – Increases down a group, decreases across a period."),
            buildParagraph("• Ionization Energy – Decreases down a group, increases across a period."),
            buildParagraph("• Electronegativity – Decreases down a group, increases across a period."),
            buildParagraph("• Metallic Character – Increases down a group, decreases across a period."),

            buildSectionTitle("🔹 Valency and Valence Electrons"),
            buildParagraph(
                "Valence electrons are in the outermost shell. "
                    "Valency is the combining capacity of an atom.\n"
                    "Example: Na (1 valence electron) → Valency = 1\n"
                    "O (6 valence electrons) → Valency = 2"),

            buildSectionTitle("🔹 Importance of the Periodic Table"),
            buildParagraph(
                "• Helps predict element behavior and reactivity.\n"
                    "• Aids in understanding bonding and trends.\n"
                    "• Useful in discovering new elements and studying patterns."),

            buildSectionTitle("🧭 Summary"),
            buildParagraph(
                "• Elements are arranged by atomic number.\n"
                    "• The table has 7 periods and 18 groups.\n"
                    "• Metals, nonmetals, and metalloids have distinct properties.\n"
                    "• Periodic trends reveal predictable element behaviors."),
          ],
        ),
      ),
    );
  }
}

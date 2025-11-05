import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chapter2mcqatomicstucture.dart';

class ChemistryChapter2Screen extends StatelessWidget {
  const ChemistryChapter2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chapter2Data = [
      {
        "title": "Dalton's Atomic Theory",
        "icon": FontAwesomeIcons.atom,
        "description":
        "John Dalton proposed the first scientific theory about the structure of matter in 1808. He said that all matter is made up of small, indivisible particles called atoms. His ideas laid the foundation for modern atomic theory.",
        "points": [
          "All matter is made up of tiny particles called atoms.",
          "Atoms of the same element are identical in mass and properties.",
          "Atoms of different elements have different masses and properties.",
          "Atoms combine in simple whole-number ratios to form compounds.",
          "Atoms cannot be created or destroyed in a chemical reaction."
        ],
      },
      {
        "title": "Atomic Models",
        "icon": FontAwesomeIcons.circleDot,
        "description":
        "Over time, scientists developed several models to explain the structure of atoms. These models evolved as new discoveries were made.",
        "points": [
          "1️⃣ **Thomson’s Model (Plum Pudding Model):** Atoms are spheres of positive charge with negatively charged electrons embedded in them, like plums in pudding.",
          "2️⃣ **Rutherford’s Model:** Discovered that the atom has a small, dense nucleus at its center containing protons, and electrons move around it.",
          "3️⃣ **Bohr’s Model:** Electrons revolve around the nucleus in specific orbits or energy levels without radiating energy."
        ],
      },
      {
        "title": "Energy Levels",
        "icon": FontAwesomeIcons.bolt,
        "description":
        "Energy levels are the fixed paths around the nucleus where electrons revolve. Each level has a specific energy associated with it.",
        "points": [
          "Electrons revolve around the nucleus in specific energy levels or shells.",
          "These levels are labeled as K, L, M, N (or n = 1, 2, 3, 4).",
          "Electrons can move to higher levels by absorbing energy and return by releasing energy as light.",
          "The maximum number of electrons in a level is given by 2n² (where n is the level number)."
        ],
      },
      {
        "title": "Sublevels and Orbitals",
        "icon": FontAwesomeIcons.layerGroup,
        "description":
        "Each energy level consists of one or more sublevels (s, p, d, f), and each sublevel contains orbitals where electrons are most likely to be found.",
        "points": [
          "Sublevels: s, p, d, and f — each with different shapes and capacities.",
          "An s sublevel has 1 orbital (2 electrons).",
          "A p sublevel has 3 orbitals (6 electrons).",
          "A d sublevel has 5 orbitals (10 electrons).",
          "An f sublevel has 7 orbitals (14 electrons).",
          "Each orbital can hold a maximum of 2 electrons with opposite spins."
        ],
      },
      {
        "title": "The Octet Rule",
        "icon": FontAwesomeIcons.infinity,
        "description":
        "The Octet Rule states that atoms tend to gain, lose, or share electrons to achieve 8 electrons in their outermost shell — like the stable noble gases.",
        "points": [
          "Atoms with less than 8 electrons in their outer shell are unstable.",
          "They react to complete their outer shell to achieve a stable octet configuration.",
          "This explains why elements form chemical bonds."
        ],
      },
      {
        "title": "Formation of Ions",
        "icon": FontAwesomeIcons.atom,
        "description":
        "Atoms form ions by gaining or losing electrons to achieve a stable electronic configuration (usually an octet).",
        "points": [
          "When an atom loses or gains electrons, it becomes electrically charged.",
          "Losing electrons → forms a **positive ion (cation)**.",
          "Gaining electrons → forms a **negative ion (anion)**."
        ],
      },
      {
        "title": "Positive Ions (Cations)",
        "icon": FontAwesomeIcons.plusCircle,
        "description":
        "A positive ion (cation) is formed when an atom **loses one or more electrons**, giving it a net positive charge.",
        "points": [
          "Example: Sodium (Na) loses one electron → Na⁺",
          "Metals usually form cations.",
          "Cations have fewer electrons than protons."
        ],
      },
      {
        "title": "Negative Ions (Anions)",
        "icon": FontAwesomeIcons.minusCircle,
        "description":
        "A negative ion (anion) is formed when an atom **gains one or more electrons**, giving it a net negative charge.",
        "points": [
          "Example: Chlorine (Cl) gains one electron → Cl⁻",
          "Non-metals usually form anions.",
          "Anions have more electrons than protons."
        ],
      },
      {
        "title": "Cations and Anions Summary",
        "icon": FontAwesomeIcons.balanceScale,
        "description":
        "Cations and anions are oppositely charged ions that combine to form ionic compounds, held together by electrostatic forces.",
        "points": [
          "Cations: positively charged (formed by loss of electrons).",
          "Anions: negatively charged (formed by gain of electrons).",
          "Example: Na⁺ + Cl⁻ → NaCl (Sodium chloride).",
          "Ionic compounds are electrically neutral overall."
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text("Atomic Structure"),
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
                MaterialPageRoute(builder: (context) => const ChemistryChapter2McqScreen()),
              );
            },
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: chapter2Data.length,
        itemBuilder: (context, index) {
          final topic = chapter2Data[index];
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: const Offset(3, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FaIcon(topic["icon"], color: Colors.teal, size: 26),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          topic["title"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 20, thickness: 1),
                  Text(
                    topic["description"],
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Key Points:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ...List.generate(
                    (topic["points"] as List<String>).length,
                        (i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("• ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54)),
                          Expanded(
                            child: Text(
                              (topic["points"] as List<String>)[i],
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
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

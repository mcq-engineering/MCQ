import 'package:flutter/material.dart';

class ChemistryChapter2McqScreen extends StatefulWidget {
  const ChemistryChapter2McqScreen({super.key});

  @override
  State<ChemistryChapter2McqScreen> createState() =>
      _ChemistryChapter2McqScreenState();
}

class _ChemistryChapter2McqScreenState
    extends State<ChemistryChapter2McqScreen> {
  final List<Map<String, dynamic>> questions =
  [
    {
      "question": "Who proposed the first atomic theory?",
      "options": ["Dalton", "Thomson", "Rutherford", "Bohr"],
      "answerIndex": 0
    },
    {
      "question": "According to Dalton, atoms are:",
      "options": ["Divisible", "Indivisible", "Charged", "Unstable"],
      "answerIndex": 1
    },
    {
      "question": "Which subatomic particle was discovered first?",
      "options": ["Proton", "Neutron", "Electron", "Positron"],
      "answerIndex": 2
    },
    {
      "question": "Who discovered the electron?",
      "options": ["Rutherford", "Bohr", "Thomson", "Chadwick"],
      "answerIndex": 2
    },
    {
      "question": "Cathode rays are streams of:",
      "options": ["Protons", "Neutrons", "Electrons", "Atoms"],
      "answerIndex": 2
    },
    {
      "question": "The nucleus was discovered by:",
      "options": ["Thomson", "Rutherford", "Bohr", "Chadwick"],
      "answerIndex": 1
    },
    {
      "question": "Who discovered the neutron?",
      "options": ["Rutherford", "Bohr", "Chadwick", "Thomson"],
      "answerIndex": 2
    },
    {
      "question": "The charge of a proton is:",
      "options": ["+1", "-1", "0", "+2"],
      "answerIndex": 0
    },
    {
      "question": "The charge of an electron is:",
      "options": ["+1", "-1", "0", "+2"],
      "answerIndex": 1
    },
    {
      "question": "The charge of a neutron is:",
      "options": ["+1", "-1", "0", "+2"],
      "answerIndex": 2
    },
    {
      "question": "The mass number is equal to:",
      "options": ["Number of protons", "Number of neutrons", "Protons + Neutrons", "Protons + Electrons"],
      "answerIndex": 2
    },
    {
      "question": "Isotopes have the same number of:",
      "options": ["Protons", "Neutrons", "Mass number", "Energy levels"],
      "answerIndex": 0
    },
    {
      "question": "Isotopes differ in the number of:",
      "options": ["Protons", "Neutrons", "Electrons", "Energy levels"],
      "answerIndex": 1
    },
    {
      "question": "Who proposed the planetary model of the atom?",
      "options": ["Bohr", "Thomson", "Rutherford", "Chadwick"],
      "answerIndex": 2
    },
    {
      "question": "Bohr’s atomic model explains:",
      "options": ["Emission spectrum of hydrogen", "Photoelectric effect", "Chemical bonding", "Cathode rays"],
      "answerIndex": 0
    },
    {
      "question": "Energy levels are denoted by:",
      "options": ["s, p, d, f", "K, L, M, N", "1s, 2s, 3s", "A, B, C, D"],
      "answerIndex": 1
    },
    {
      "question": "The first energy level can hold maximum:",
      "options": ["2 electrons", "8 electrons", "18 electrons", "32 electrons"],
      "answerIndex": 0
    },
    {
      "question": "The second energy level can hold maximum:",
      "options": ["2 electrons", "8 electrons", "18 electrons", "32 electrons"],
      "answerIndex": 1
    },
    {
      "question": "The third energy level can hold maximum:",
      "options": ["2 electrons", "8 electrons", "18 electrons", "32 electrons"],
      "answerIndex": 2
    },
    {
      "question": "The maximum number of electrons in an orbital is:",
      "options": ["1", "2", "3", "4"],
      "answerIndex": 1
    },
    {
      "question": "The s sublevel contains how many orbitals?",
      "options": ["1", "3", "5", "7"],
      "answerIndex": 0
    },
    {
      "question": "The p sublevel contains how many orbitals?",
      "options": ["1", "3", "5", "7"],
      "answerIndex": 1
    },
    {
      "question": "The d sublevel contains how many orbitals?",
      "options": ["1", "3", "5", "7"],
      "answerIndex": 2
    },
    {
      "question": "The f sublevel contains how many orbitals?",
      "options": ["1", "3", "5", "7"],
      "answerIndex": 3
    },
    {
      "question": "Which rule states that electrons occupy the lowest energy level first?",
      "options": ["Pauli’s rule", "Aufbau principle", "Hund’s rule", "Bohr’s rule"],
      "answerIndex": 1
    },
    {
      "question": "Which rule states that no two electrons in an atom can have the same set of four quantum numbers?",
      "options": ["Pauli exclusion principle", "Aufbau principle", "Hund’s rule", "Octet rule"],
      "answerIndex": 0
    },
    {
      "question": "Which rule states that electrons occupy orbitals singly before pairing?",
      "options": ["Pauli exclusion principle", "Aufbau principle", "Hund’s rule", "Octet rule"],
      "answerIndex": 2
    },
    {
      "question": "The octet rule states that atoms tend to have:",
      "options": ["2 electrons in valence shell", "8 electrons in valence shell", "10 electrons", "12 electrons"],
      "answerIndex": 1
    },
    {
      "question": "When an atom loses electrons, it becomes:",
      "options": ["Cation", "Anion", "Isotope", "Neutron"],
      "answerIndex": 0
    },
    {
      "question": "When an atom gains electrons, it becomes:",
      "options": ["Cation", "Anion", "Proton", "Isotope"],
      "answerIndex": 1
    },
    {
      "question": "Positive ions are called:",
      "options": ["Anions", "Cations", "Neutrons", "Isotopes"],
      "answerIndex": 1
    },
    {
      "question": "Negative ions are called:",
      "options": ["Anions", "Cations", "Protons", "Neutrons"],
      "answerIndex": 0
    },
    {
      "question": "The atomic number represents the number of:",
      "options": ["Protons", "Neutrons", "Electrons", "Mass number"],
      "answerIndex": 0
    },
    {
      "question": "In a neutral atom, the number of protons equals the number of:",
      "options": ["Neutrons", "Electrons", "Orbitals", "Energy levels"],
      "answerIndex": 1
    },
    {
      "question": "Which particle determines the chemical properties of an atom?",
      "options": ["Proton", "Neutron", "Electron", "Nucleus"],
      "answerIndex": 2
    },
    {
      "question": "The Bohr model failed for:",
      "options": ["Hydrogen atom", "Multi-electron atoms", "Ions", "All atoms"],
      "answerIndex": 1
    },
    {
      "question": "Orbitals are regions of:",
      "options": ["Fixed paths", "High probability of finding an electron", "Low energy", "Proton motion"],
      "answerIndex": 1
    },
    {
      "question": "The shape of the s orbital is:",
      "options": ["Spherical", "Dumbbell", "Cloverleaf", "Complex"],
      "answerIndex": 0
    },
    {
      "question": "The shape of the p orbital is:",
      "options": ["Spherical", "Dumbbell", "Cloverleaf", "Circular"],
      "answerIndex": 1
    },
    {
      "question": "Which orbital has the highest energy in the same shell?",
      "options": ["s", "p", "d", "f"],
      "answerIndex": 3
    },
    {
      "question": "The total number of orbitals in the third shell is:",
      "options": ["1", "4", "9", "16"],
      "answerIndex": 2
    },
    {
      "question": "The electron configuration of oxygen is:",
      "options": ["1s2 2s2 2p4", "1s2 2s2 2p6", "1s2 2p4", "1s2 2s2 3p4"],
      "answerIndex": 0
    },
    {
      "question": "The first shell (K) can hold how many orbitals?",
      "options": ["1", "2", "4", "9"],
      "answerIndex": 0
    },
    {
      "question": "Which scientist proposed quantized energy levels?",
      "options": ["Rutherford", "Bohr", "Chadwick", "Dalton"],
      "answerIndex": 1
    },
    {
      "question": "The smallest particle of an element is:",
      "options": ["Molecule", "Compound", "Atom", "Ion"],
      "answerIndex": 2
    },
    {
      "question": "The subatomic particle not present in hydrogen-1 is:",
      "options": ["Proton", "Neutron", "Electron", "Both proton and electron"],
      "answerIndex": 1
    },
    {
      "question": "Ions having opposite charges attract each other to form:",
      "options": ["Covalent bond", "Ionic bond", "Metallic bond", "Hydrogen bond"],
      "answerIndex": 1
    },
    {
      "question": "The 2p sublevel can hold a maximum of:",
      "options": ["2", "4", "6", "8"],
      "answerIndex": 2
    },
    {
      "question": "The 3d sublevel can hold a maximum of:",
      "options": ["2", "4", "6", "10"],
      "answerIndex": 3
    },
    {
      "question": "The electron configuration 1s2 2s2 2p6 3s2 3p6 4s1 represents:",
      "options": ["Sodium", "Potassium", "Calcium", "Magnesium"],
      "answerIndex": 1
    },
    {
      "question": "Atoms combine to achieve:",
      "options": ["Stability", "Instability", "Radioactivity", "Excitation"],
      "answerIndex": 0
    }
  ];


  Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MCQs"),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [
          Text(
            '${questions.length}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: questions.length,
        itemBuilder: (context, qIndex) {
          final question = questions[qIndex];

          return Card(
            color: Colors.grey[100],
            shadowColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Q${qIndex + 1}. ${question["question"]}",
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...(question["options"] as List<String>)
                      .asMap()
                      .entries
                      .map((entry) {
                    int optIndex = entry.key;
                    String option = entry.value;

                    bool isSelected = selectedAnswers[qIndex] == optIndex;
                    bool isCorrectOption = optIndex == question["answerIndex"];
                    bool showCorrect = isCorrectOption && isSelected;
                    bool showWrong = isSelected && !isCorrectOption;

                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: showCorrect
                                ? Colors.green
                                : showWrong
                                ? Colors.red
                                : Colors.grey.shade300,
                          ),
                        ),
                        tileColor: showCorrect
                            ? Colors.green.shade100
                            : showWrong
                            ? Colors.red.shade100
                            : null,
                        title: Text(option),
                        trailing: showCorrect
                            ? const Icon(Icons.check_circle, color: Colors.green)
                            : showWrong
                            ? const Icon(Icons.cancel, color: Colors.red)
                            : null,
                        onTap: () {
                          setState(() {
                            selectedAnswers[qIndex] = optIndex;
                          });
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChemistryChapter3McqScreen extends StatefulWidget {
  const ChemistryChapter3McqScreen({super.key});

  @override
  State<ChemistryChapter3McqScreen> createState() =>
      _ChemistryChapter3McqScreenState();
}

class _ChemistryChapter3McqScreenState
    extends State<ChemistryChapter3McqScreen> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "Who is known as the father of the periodic table?",
      "options": ["Newlands", "Mendeleev", "Moseley", "Dobereiner"],
      "answerIndex": 1
    },
    {
      "question": "Mendeleev arranged elements in order of increasing ______.",
      "options": ["Atomic number", "Atomic mass", "Density", "Electronegativity"],
      "answerIndex": 1
    },
    {
      "question": "The modern periodic law is based on ______.",
      "options": ["Atomic mass", "Atomic number", "Valency", "Molecular weight"],
      "answerIndex": 1
    },
    {
      "question": "How many periods are there in the modern periodic table?",
      "options": ["5", "6", "7", "8"],
      "answerIndex": 2
    },
    {
      "question": "How many groups are there in the modern periodic table?",
      "options": ["8", "12", "18", "20"],
      "answerIndex": 2
    },
    {
      "question": "Group 1 elements are called ______.",
      "options": ["Noble gases", "Halogens", "Alkali metals", "Transition metals"],
      "answerIndex": 2
    },
    {
      "question": "Group 2 elements are known as ______.",
      "options": ["Alkali metals", "Halogens", "Alkaline earth metals", "Noble gases"],
      "answerIndex": 2
    },
    {
      "question": "Group 17 elements are called ______.",
      "options": ["Noble gases", "Halogens", "Metalloids", "Transition metals"],
      "answerIndex": 1
    },
    {
      "question": "Group 18 elements are called ______.",
      "options": ["Halogens", "Noble gases", "Lanthanides", "Actinides"],
      "answerIndex": 1
    },
    {
      "question": "The horizontal rows in the periodic table are called ______.",
      "options": ["Groups", "Periods", "Blocks", "Series"],
      "answerIndex": 1
    },
    {
      "question": "The vertical columns in the periodic table are called ______.",
      "options": ["Periods", "Series", "Groups", "Blocks"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is a metal?",
      "options": ["Sulfur", "Oxygen", "Sodium", "Chlorine"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is a non-metal?",
      "options": ["Copper", "Iron", "Oxygen", "Sodium"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is a metalloid?",
      "options": ["Silicon", "Oxygen", "Sulfur", "Aluminum"],
      "answerIndex": 0
    },
    {
      "question": "Atomic number represents the number of ______.",
      "options": ["Neutrons", "Protons", "Electrons", "Nucleons"],
      "answerIndex": 1
    },
    {
      "question": "Atomic size ______ down a group.",
      "options": ["Increases", "Decreases", "Remains constant", "First decreases then increases"],
      "answerIndex": 0
    },
    {
      "question": "Atomic size ______ across a period.",
      "options": ["Increases", "Decreases", "Remains constant", "Varies randomly"],
      "answerIndex": 1
    },
    {
      "question": "Ionization energy ______ down a group.",
      "options": ["Increases", "Decreases", "Remains constant", "Varies"],
      "answerIndex": 1
    },
    {
      "question": "Ionization energy ______ across a period.",
      "options": ["Increases", "Decreases", "Remains constant", "Varies"],
      "answerIndex": 0
    },
    {
      "question": "Electronegativity ______ across a period.",
      "options": ["Increases", "Decreases", "Remains constant", "Varies irregularly"],
      "answerIndex": 0
    },
    {
      "question": "Electronegativity ______ down a group.",
      "options": ["Increases", "Decreases", "Remains constant", "Becomes zero"],
      "answerIndex": 1
    },
    {
      "question": "Valence electrons are found in the ______ shell.",
      "options": ["Innermost", "Outer", "Middle", "Core"],
      "answerIndex": 1
    },
    {
      "question": "Elements in the same group have similar ______.",
      "options": ["Atomic number", "Mass number", "Chemical properties", "Physical states"],
      "answerIndex": 2
    },
    {
      "question": "What are transition metals?",
      "options": ["Group 1 elements", "Group 2 elements", "D-block elements", "F-block elements"],
      "answerIndex": 2
    },
    {
      "question": "The first period contains how many elements?",
      "options": ["2", "8", "18", "32"],
      "answerIndex": 0
    },
    {
      "question": "Which element is in Group 1 and Period 2?",
      "options": ["Sodium", "Lithium", "Potassium", "Beryllium"],
      "answerIndex": 1
    },
    {
      "question": "The valency of an element depends on its ______.",
      "options": ["Atomic number", "Mass", "Outer electrons", "Inner electrons"],
      "answerIndex": 2
    },
    {
      "question": "Metals are generally ______ conductors of heat and electricity.",
      "options": ["Poor", "Good", "Average", "None"],
      "answerIndex": 1
    },
    {
      "question": "Nonmetals are generally ______ in nature.",
      "options": ["Shiny", "Brittle", "Malleable", "Ductile"],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is a noble gas?",
      "options": ["Chlorine", "Argon", "Fluorine", "Nitrogen"],
      "answerIndex": 1
    },
    {
      "question": "Which element is a halogen?",
      "options": ["Sodium", "Potassium", "Chlorine", "Calcium"],
      "answerIndex": 2
    },
    {
      "question": "Which element has the highest electronegativity?",
      "options": ["Fluorine", "Oxygen", "Nitrogen", "Chlorine"],
      "answerIndex": 0
    },
    {
      "question": "Which element has the lowest electronegativity?",
      "options": ["Lithium", "Sodium", "Cesium", "Bromine"],
      "answerIndex": 2
    },
    {
      "question": "Who gave the modern periodic law?",
      "options": ["Mendeleev", "Moseley", "Newlands", "Dalton"],
      "answerIndex": 1
    },
    {
      "question": "Elements with similar properties appear at regular intervals. This is called ______.",
      "options": ["Law of Octaves", "Periodic Law", "Dalton's Law", "Mass Law"],
      "answerIndex": 1
    },
    {
      "question": "The atomic number of sodium is 11. Its valency is ______.",
      "options": ["1", "2", "3", "4"],
      "answerIndex": 0
    },
    {
      "question": "An element having 2 valence electrons belongs to group ______.",
      "options": ["1", "2", "13", "14"],
      "answerIndex": 1
    },
    {
      "question": "Noble gases are ______ in nature.",
      "options": ["Highly reactive", "Moderately reactive", "Inert", "Unstable"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is a transition element?",
      "options": ["Iron", "Sodium", "Chlorine", "Oxygen"],
      "answerIndex": 0
    },
    {
      "question": "The modern periodic table is based on ______.",
      "options": ["Atomic number", "Atomic mass", "Valency", "Density"],
      "answerIndex": 0
    },
    {
      "question": "Lanthanides and actinides belong to ______ block.",
      "options": ["s-block", "p-block", "d-block", "f-block"],
      "answerIndex": 3
    },
    {
      "question": "Atomic radius ______ across a period.",
      "options": ["Increases", "Decreases", "Remains same", "Fluctuates"],
      "answerIndex": 1
    },
    {
      "question": "Elements in the same group have the same ______.",
      "options": ["Atomic mass", "Number of shells", "Valence electrons", "Neutrons"],
      "answerIndex": 2
    },
    {
      "question": "Which element belongs to Group 2 and Period 3?",
      "options": ["Sodium", "Magnesium", "Calcium", "Aluminum"],
      "answerIndex": 1
    },
    {
      "question": "Which group contains halogens?",
      "options": ["15", "16", "17", "18"],
      "answerIndex": 2
    },
    {
      "question": "The most metallic element is ______.",
      "options": ["Cesium", "Gold", "Sodium", "Magnesium"],
      "answerIndex": 0
    },
    {
      "question": "The least metallic element is ______.",
      "options": ["Fluorine", "Oxygen", "Nitrogen", "Chlorine"],
      "answerIndex": 0
    },
    {
      "question": "Metalloids show properties of ______.",
      "options": ["Only metals", "Only nonmetals", "Both metals and nonmetals", "None"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is NOT a metalloid?",
      "options": ["Silicon", "Germanium", "Boron", "Sulfur"],
      "answerIndex": 3
    },
    {
      "question": "The periodic table helps to predict ______.",
      "options": ["Element properties", "Temperature", "Color", "Shape"],
      "answerIndex": 0
    },
    {
      "question": "The total number of elements in the modern periodic table is ______.",
      "options": ["108", "112", "118", "120"],
      "answerIndex": 2
    },
  ];

  Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📘 Chemistry - Chapter 3 MCQs"),
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
                        fontWeight: FontWeight.bold),
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

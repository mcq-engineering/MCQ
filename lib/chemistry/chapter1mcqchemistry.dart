import 'package:flutter/material.dart';

class ChemistryChapter1McqScreen extends StatefulWidget {
  const ChemistryChapter1McqScreen({super.key});

  @override
  State<ChemistryChapter1McqScreen> createState() =>
      _ChemistryChapter1McqScreenState();
}

class _ChemistryChapter1McqScreenState
    extends State<ChemistryChapter1McqScreen> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "What is Chemistry?",
      "options": [
        "The study of the Earth and its layers",
        "The study of matter, its properties, and changes",
        "The study of stars and planets",
        "The study of living organisms"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which branch of chemistry deals with carbon-containing compounds?",
      "options": ["Inorganic Chemistry", "Physical Chemistry", "Organic Chemistry", "Biochemistry"],
      "answerIndex": 2
    },
    {
      "question": "Which branch studies chemical processes in living organisms?",
      "options": ["Analytical Chemistry", "Biochemistry", "Industrial Chemistry", "Physical Chemistry"],
      "answerIndex": 1
    },
    {
      "question": "Matter is anything that has _______.",
      "options": ["Energy and weight", "Mass and occupies space", "Volume and energy", "Shape and weight"],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is a pure substance?",
      "options": ["Air", "Milk", "Water", "Soil"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is an element?",
      "options": ["Water", "Oxygen", "Salt", "Carbon dioxide"],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is a compound?",
      "options": ["Hydrogen", "Oxygen", "Water", "Iron"],
      "answerIndex": 2
    },
    {
      "question": "A mixture can be separated by ______ methods.",
      "options": ["Chemical", "Nuclear", "Physical", "Electrochemical"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is a homogeneous mixture?",
      "options": ["Oil and water", "Sand and salt", "Salt dissolved in water", "Iron and sulfur"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is an example of a heterogeneous mixture?",
      "options": ["Salt solution", "Air", "Oil and water", "Vinegar"],
      "answerIndex": 2
    },
    {
      "question": "Which property of matter depends on the amount of matter?",
      "options": ["Density", "Temperature", "Mass", "Boiling point"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is an extensive property?",
      "options": ["Mass", "Density", "Boiling point", "Melting point"],
      "answerIndex": 0
    },
    {
      "question": "Which of the following is an intensive property?",
      "options": ["Volume", "Mass", "Temperature", "Length"],
      "answerIndex": 2
    },
    {
      "question": "What type of change is rusting of iron?",
      "options": ["Physical change", "Chemical change", "Nuclear change", "Temporary change"],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is a physical change?",
      "options": ["Burning of wood", "Melting of ice", "Rusting of iron", "Digestion of food"],
      "answerIndex": 1
    },
    {
      "question": "Which branch of chemistry deals with analysis of substances?",
      "options": ["Analytical Chemistry", "Organic Chemistry", "Biochemistry", "Physical Chemistry"],
      "answerIndex": 0
    },
    {
      "question": "Who is known as the father of modern chemistry?",
      "options": ["John Dalton", "Antoine Lavoisier", "Robert Boyle", "J.J. Thomson"],
      "answerIndex": 1
    },
    {
      "question": "In which branch are rates of chemical reactions studied?",
      "options": ["Physical Chemistry", "Inorganic Chemistry", "Analytical Chemistry", "Organic Chemistry"],
      "answerIndex": 0
    },
    {
      "question": "Compounds can be broken down into simpler substances by ______ methods.",
      "options": ["Physical", "Chemical", "Mechanical", "Nuclear"],
      "answerIndex": 1
    },
    {
      "question": "Mixtures can be separated by ______ methods.",
      "options": ["Chemical", "Physical", "Nuclear", "Thermal"],
      "answerIndex": 1
    },
  ];

  Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📘 Chemistry - Chapter 1 MCQs"),
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

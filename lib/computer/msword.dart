import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MSWordPage extends StatefulWidget {
  const MSWordPage({super.key});

  @override
  State<MSWordPage> createState() => _MSWordPageState();
}

class _MSWordPageState extends State<MSWordPage> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "What is MS Word?",
      "options": [
        "An operating system",
        "A word processing software",
        "A spreadsheet program",
        "A database management system"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which company developed MS Word?",
      "options": ["Apple", "IBM", "Microsoft", "Google"],
      "answerIndex": 2
    },
    {
      "question": "What is the default file extension for Word 2019 documents?",
      "options": [".txt", ".doc", ".docx", ".pdf"],
      "answerIndex": 2
    },
    {
      "question": "Which tab contains the 'Font' group?",
      "options": ["Home", "Insert", "Layout", "Design"],
      "answerIndex": 0
    },
    {
      "question": "Shortcut key to 'Save' a document is?",
      "options": ["Ctrl + C", "Ctrl + V", "Ctrl + S", "Ctrl + P"],
      "answerIndex": 2
    },
    {
      "question": "Which key combination is used to 'Copy' text?",
      "options": ["Ctrl + V", "Ctrl + C", "Ctrl + X", "Ctrl + A"],
      "answerIndex": 1
    },
    {
      "question": "What does 'Ctrl + Z' do in Word?",
      "options": ["Redo", "Paste", "Undo", "Save"],
      "answerIndex": 2
    },
    {
      "question": "Which tab allows inserting pictures, tables, and shapes?",
      "options": ["Insert", "View", "Design", "Home"],
      "answerIndex": 0
    },
    {
      "question": "Which view displays document as it will appear when printed?",
      "options": ["Draft", "Outline", "Print Layout", "Web Layout"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is not a text alignment option?",
      "options": ["Left", "Right", "Center", "Diagonal"],
      "answerIndex": 3
    },
    {
      "question": "What is the default font in Word 2019?",
      "options": ["Arial", "Calibri", "Times New Roman", "Verdana"],
      "answerIndex": 1
    },
    {
      "question": "Which feature is used to find and correct spelling mistakes?",
      "options": ["Thesaurus", "AutoCorrect", "Spelling & Grammar", "Find & Replace"],
      "answerIndex": 2
    },
    {
      "question": "To make selected text bold, which shortcut is used?",
      "options": ["Ctrl + B", "Ctrl + I", "Ctrl + U", "Ctrl + P"],
      "answerIndex": 0
    },
    {
      "question": "Which option is used to print a document?",
      "options": ["File → Print", "Insert → Print", "View → Print", "Home → Print"],
      "answerIndex": 0
    },
    {
      "question": "Which feature allows creating the same text on every page?",
      "options": ["Header and Footer", "Footnote", "Page Number", "Reference"],
      "answerIndex": 0
    },
    {
      "question": "Which option allows inserting page numbers?",
      "options": ["Layout", "Insert", "Design", "Home"],
      "answerIndex": 1
    },
    {
      "question": "What is the use of Mail Merge in MS Word?",
      "options": [
        "To merge two documents",
        "To send bulk personalized letters or emails",
        "To check mail",
        "To import data from Excel"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which shortcut key is used to 'Select All' text?",
      "options": ["Ctrl + C", "Ctrl + S", "Ctrl + A", "Ctrl + D"],
      "answerIndex": 2
    },
    {
      "question": "What is the smallest unit of text formatting?",
      "options": ["Paragraph", "Sentence", "Word", "Character"],
      "answerIndex": 3
    },
    {
      "question": "Which feature automatically corrects typing errors?",
      "options": ["Spell Check", "AutoFormat", "AutoCorrect", "Grammar Check"],
      "answerIndex": 2
    },
    {
      "question": "Which tab contains options for page margins and orientation?",
      "options": ["Layout", "Insert", "Home", "References"],
      "answerIndex": 0
    },
    {
      "question": "How can you insert a table in Word?",
      "options": ["Insert → Table", "Home → Table", "Layout → Table", "File → Table"],
      "answerIndex": 0
    },
    {
      "question": "What does 'Ctrl + X' do?",
      "options": ["Cut", "Copy", "Paste", "Undo"],
      "answerIndex": 0
    },
    {
      "question": "Which feature repeats the last action?",
      "options": ["Redo", "Undo", "Paste", "Repeat"],
      "answerIndex": 0
    },
    {
      "question": "To open a new document, shortcut key is?",
      "options": ["Ctrl + N", "Ctrl + O", "Ctrl + D", "Ctrl + M"],
      "answerIndex": 0
    },
    {
      "question": "What is the purpose of the ruler in Word?",
      "options": ["To measure page size", "To set tabs, margins, and indents", "To draw shapes", "To change font size"],
      "answerIndex": 1
    },
    {
      "question": "Where can you find the option to add a watermark?",
      "options": ["Design Tab", "Insert Tab", "Layout Tab", "Home Tab"],
      "answerIndex": 0
    },
    {
      "question": "Which view is best for editing headers and footers?",
      "options": ["Print Layout", "Draft", "Outline", "Web Layout"],
      "answerIndex": 0
    },
    {
      "question": "Which tool checks synonyms of a selected word?",
      "options": ["Spell Check", "Thesaurus", "AutoCorrect", "Grammar"],
      "answerIndex": 1
    },
    {
      "question": "Which option helps to insert symbols or special characters?",
      "options": ["Insert → Symbol", "Layout → Symbol", "Home → Symbol", "View → Symbol"],
      "answerIndex": 0
    },
    {
      "question": "What is the function of 'Ctrl + P'?",
      "options": ["Paste", "Print", "Preview", "Paragraph"],
      "answerIndex": 1
    },
    {
      "question": "How can you check the word count of a document?",
      "options": ["Status bar or Review tab", "Home tab", "Insert tab", "Layout tab"],
      "answerIndex": 0
    },
    {
      "question": "What is the function of 'Ctrl + Y'?",
      "options": ["Undo", "Redo", "Copy", "Paste"],
      "answerIndex": 1
    },
    {
      "question": "What is the default paper size in MS Word?",
      "options": ["A3", "A4", "Letter", "Legal"],
      "answerIndex": 1
    },
    {
      "question": "Which feature can automatically create a list?",
      "options": ["Bullets and Numbering", "AutoFormat", "Table", "Find & Replace"],
      "answerIndex": 0
    },
    {
      "question": "Which part of MS Word shows information like page number and word count?",
      "options": ["Title Bar", "Status Bar", "Ribbon", "Taskbar"],
      "answerIndex": 1
    },
    {
      "question": "What is a Template in Word?",
      "options": [
        "A pre-designed document format",
        "A blank page",
        "A style sheet",
        "A drawing file"
      ],
      "answerIndex": 0
    },
    {
      "question": "What does the 'Track Changes' feature do?",
      "options": [
        "Records edits and comments in a document",
        "Saves backup files",
        "Finds spelling mistakes",
        "Protects the document"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which menu helps you change the page color?",
      "options": ["Layout", "Design", "Insert", "Home"],
      "answerIndex": 1
    },
    {
      "question": "Where can you change paragraph spacing?",
      "options": ["Home → Paragraph", "Layout → Paragraph", "Insert → Paragraph", "View → Paragraph"],
      "answerIndex": 0
    },
    {
      "question": "What is the use of the 'Zoom' feature?",
      "options": [
        "To resize page content view",
        "To enlarge text permanently",
        "To change font size",
        "To print bigger pages"
      ],
      "answerIndex": 0
    },
  ];

  final Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("MS Word Quiz", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final q = questions[index];
          final selected = selectedAnswers[index];
          final isCorrect = selected != null && selected == q['answerIndex'];

          return Card(
            elevation: 10,
            shadowColor: Colors.indigo.withOpacity(0.3),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.fileWord, color: Colors.indigo),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Q${index + 1}. ${q['question']}",
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.indigo),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(q['options'].length, (i) {
                    Color? color;
                    IconData? icon;

                    if (selected != null) {
                      if (i == selected && selected == q['answerIndex']) {
                        color = Colors.green.shade100;
                        icon = Icons.check_circle;
                      } else if (i == selected && selected != q['answerIndex']) {
                        color = Colors.red.shade100;
                        icon = Icons.cancel;
                      }
                    }

                    return GestureDetector(
                      onTap: () {
                        if (selected != q['answerIndex']) {
                          setState(() => selectedAnswers[index] = i);
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: color ?? Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.indigo.shade200),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                q['options'][i],
                                style: const TextStyle(fontSize: 16, color: Colors.black87),
                              ),
                            ),
                            if (icon != null) Icon(icon, color: selected == q['answerIndex'] ? Colors.green : Colors.red)
                          ],
                        ),
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

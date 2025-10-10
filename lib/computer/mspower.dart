import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MSPowerPointQuizPage extends StatefulWidget {
  const MSPowerPointQuizPage({super.key});

  @override
  State<MSPowerPointQuizPage> createState() => _MSPowerPointQuizPageState();
}

class _MSPowerPointQuizPageState extends State<MSPowerPointQuizPage> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "What is Microsoft PowerPoint primarily used for?",
      "options": [
        "Word processing",
        "Creating presentations",
        "Database management",
        "Graphic design"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which file extension is used for PowerPoint presentations?",
      "options": [".docx", ".pptx", ".xlsx", ".txt"],
      "answerIndex": 1
    },
    {
      "question": "Which tab allows you to insert pictures, shapes, and charts?",
      "options": ["Design", "Insert", "Home", "Review"],
      "answerIndex": 1
    },
    {
      "question": "What is a slide in PowerPoint?",
      "options": [
        "A page in a presentation",
        "A document section",
        "A spreadsheet cell",
        "A database record"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which key starts a slideshow from the beginning?",
      "options": ["F5", "F2", "Ctrl + S", "Alt + P"],
      "answerIndex": 0
    },
    {
      "question": "Which view shows all slides as thumbnails?",
      "options": ["Normal View", "Slide Sorter View", "Reading View", "Notes View"],
      "answerIndex": 1
    },
    {
      "question": "Which tab allows you to apply themes and background styles?",
      "options": ["Design", "Home", "View", "Insert"],
      "answerIndex": 0
    },
    {
      "question": "Which feature adds movement to text or objects?",
      "options": ["Transition", "Animation", "Theme", "Layout"],
      "answerIndex": 1
    },
    {
      "question": "What is the default file format in PowerPoint 2016 and later?",
      "options": [".ppt", ".pptx", ".pps", ".pot"],
      "answerIndex": 1
    },
    {
      "question": "What does the 'Slide Master' control?",
      "options": [
        "Layout and design of slides",
        "Animation timing",
        "Spell check",
        "Transition speed"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which shortcut duplicates a selected slide?",
      "options": ["Ctrl + D", "Ctrl + C", "Ctrl + N", "Ctrl + Shift + P"],
      "answerIndex": 0
    },
    {
      "question": "Which option controls how one slide moves to the next?",
      "options": ["Animation", "Transition", "Effect", "Layout"],
      "answerIndex": 1
    },
    {
      "question": "Which view is best for editing speaker notes?",
      "options": ["Notes Page View", "Slide Sorter", "Reading View", "Outline View"],
      "answerIndex": 0
    },
    {
      "question": "Which feature automatically fits text to a shape?",
      "options": ["SmartArt", "WordArt", "AutoFit", "Text Box"],
      "answerIndex": 2
    },
    {
      "question": "Which tab contains the Spelling check option?",
      "options": ["Review", "Insert", "Home", "Design"],
      "answerIndex": 0
    },
    {
      "question": "To print handouts, which menu should you open?",
      "options": ["Home", "File", "Design", "View"],
      "answerIndex": 1
    },
    {
      "question": "Which view helps rehearse timing for your slides?",
      "options": [
        "Slide Sorter View",
        "Rehearse Timings View",
        "Reading View",
        "Notes Page View"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which element holds text, images, or charts on a slide?",
      "options": ["Placeholder", "Theme", "Layout", "Slide Master"],
      "answerIndex": 0
    },
    {
      "question": "Which option allows you to insert a video into a slide?",
      "options": ["Insert > Video", "Design > Background", "Home > Layout", "View > Slide Show"],
      "answerIndex": 0
    },
    {
      "question": "The default slide orientation in PowerPoint is?",
      "options": ["Portrait", "Landscape", "Vertical", "Diagonal"],
      "answerIndex": 1
    },
    // --- 30 more questions for full quiz ---
    {
      "question": "Which key combination closes PowerPoint?",
      "options": ["Alt + F4", "Ctrl + F4", "Ctrl + Q", "Alt + Q"],
      "answerIndex": 0
    },
    {
      "question": "Which tab is used to insert tables and charts?",
      "options": ["Insert", "Design", "View", "Animations"],
      "answerIndex": 0
    },
    {
      "question": "Which view shows the slides one below another in text form?",
      "options": ["Outline View", "Slide Sorter", "Reading View", "Normal View"],
      "answerIndex": 0
    },
    {
      "question": "What is the function of a template?",
      "options": [
        "Predefined design for slides",
        "To check spelling",
        "To insert pictures",
        "To apply transitions"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which ribbon tab allows you to add transitions?",
      "options": ["Animations", "Transitions", "Slide Show", "Design"],
      "answerIndex": 1
    },
    {
      "question": "What is the shortcut to open a new presentation?",
      "options": ["Ctrl + N", "Ctrl + O", "Ctrl + S", "Ctrl + P"],
      "answerIndex": 0
    },
    {
      "question": "Which option allows you to change the slide background color?",
      "options": ["Design > Format Background", "Home > Layout", "Insert > Picture", "View > Gridlines"],
      "answerIndex": 0
    },
    {
      "question": "Which pane shows miniature views of slides?",
      "options": ["Slides Pane", "Notes Pane", "Outline Pane", "Task Pane"],
      "answerIndex": 0
    },
    {
      "question": "Which command saves a copy with a new name?",
      "options": ["Save As", "Save", "Export", "Send To"],
      "answerIndex": 0
    },
    {
      "question": "Which feature checks grammar and spelling?",
      "options": ["Proofing Tool", "AutoCorrect", "Thesaurus", "Smart Lookup"],
      "answerIndex": 0
    },
    {
      "question": "Which view is best for adding animations?",
      "options": ["Normal View", "Slide Sorter", "Reading View", "Slide Master"],
      "answerIndex": 0
    },
    {
      "question": "Which shortcut opens the Print dialog?",
      "options": ["Ctrl + P", "Alt + P", "Ctrl + Shift + P", "F12"],
      "answerIndex": 0
    },
    {
      "question": "Which key moves to the next slide during a slideshow?",
      "options": ["Spacebar", "Enter", "Right Arrow", "All of the above"],
      "answerIndex": 3
    },
    {
      "question": "Which feature allows text to follow a shape path?",
      "options": ["WordArt", "SmartArt", "Text Effects", "3D Effects"],
      "answerIndex": 2
    },
    {
      "question": "What does the Slide Show tab do?",
      "options": [
        "Runs presentations",
        "Designs backgrounds",
        "Adds transitions",
        "Inserts pictures"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which animation makes an object appear gradually?",
      "options": ["Fade", "Fly In", "Bounce", "Zoom"],
      "answerIndex": 0
    },
    {
      "question": "What is the use of the Reuse Slides option?",
      "options": [
        "To import slides from another presentation",
        "To duplicate current slides",
        "To save time in formatting",
        "To merge text boxes"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which shortcut saves the presentation?",
      "options": ["Ctrl + S", "Alt + S", "Ctrl + Shift + S", "F5"],
      "answerIndex": 0
    },
    {
      "question": "What is the use of Hyperlink in PowerPoint?",
      "options": [
        "To link to another slide, file, or webpage",
        "To insert animations",
        "To print slides",
        "To add color themes"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which key ends a running slideshow?",
      "options": ["Esc", "F5", "Ctrl + E", "Alt + End"],
      "answerIndex": 0
    },
  ];

  final Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade600,
        title: const Text(
          "MS PowerPoint Quiz",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.orange.shade50,
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          final selected = selectedAnswers[index];
          final correct = question['answerIndex'] == selected;

          return Card(
            elevation: 10,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.circleQuestion,
                          color: Colors.orange),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Q${index + 1}. ${question['question']}",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(question['options'].length, (i) {
                    final option = question['options'][i];
                    Color? color;
                    IconData? icon;

                    if (selected != null) {
                      if (i == selected) {
                        if (correct) {
                          color = Colors.green.shade100;
                          icon = Icons.check_circle;
                        } else {
                          color = Colors.red.shade100;
                          icon = Icons.cancel;
                        }
                      } else if (i == question['answerIndex'] && correct) {
                        color = Colors.green.shade100;
                        icon = Icons.check_circle;
                      }
                    }

                    return GestureDetector(
                      onTap: () {
                        if (correct) return;
                        setState(() => selectedAnswers[index] = i);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: color ?? Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          children: [
                            if (icon != null)
                              Icon(icon, color: correct ? Colors.green : Colors.red),
                            if (icon != null) const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                option,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
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

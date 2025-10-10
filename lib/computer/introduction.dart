import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroComputerQuizScrollable extends StatefulWidget {
  const IntroComputerQuizScrollable({Key? key}) : super(key: key);

  @override
  State<IntroComputerQuizScrollable> createState() =>
      _IntroComputerQuizScrollableState();
}

class _IntroComputerQuizScrollableState
    extends State<IntroComputerQuizScrollable> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "What is a computer?",
      "options": [
        "A manual calculating machine",
        "An electronic device that processes data",
        "A mechanical drawing tool",
        "A storage cabinet"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which are the two major components of a computer?",
      "options": [
        "CPU & GPU",
        "Hardware & Software",
        "Monitor & Keyboard",
        "Files & Folders"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is hardware?",
      "options": ["Windows", "MS Word", "Monitor", "Linux"],
      "answerIndex": 2
    },
    {
      "question": "Which of the following is software?",
      "options": ["Mouse", "Printer", "Microsoft Excel", "Keyboard"],
      "answerIndex": 2
    },
    {
      "question": "Which device is used to input text?",
      "options": ["Printer", "Monitor", "Keyboard", "Speaker"],
      "answerIndex": 2
    },
    {
      "question": "Which device displays output visually?",
      "options": ["Microphone", "Monitor", "Scanner", "Touchpad"],
      "answerIndex": 1
    },
    {
      "question": "The CPU is often called the:",
      "options": [
        "Heart of the computer",
        "Brain of the computer",
        "Eye of the computer",
        "Mouth of the computer"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which CPU part performs arithmetic and logical operations?",
      "options": ["Control Unit", "ALU", "Cache", "Register"],
      "answerIndex": 1
    },
    {
      "question": "Which CPU part fetches and executes instructions?",
      "options": ["Control Unit", "ALU", "ROM", "RAM"],
      "answerIndex": 0
    },
    {
      "question": "Which memory is volatile (loses data when power off)?",
      "options": ["ROM", "Hard Disk", "RAM", "SSD"],
      "answerIndex": 2
    },
    {
      "question": "What is an Operating System (OS)?",
      "options": [
        "An application for typing documents",
        "System software that manages hardware and software resources",
        "A web browser",
        "A file storage device"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is an operating system?",
      "options": ["MS Word", "Windows", "Chrome", "Excel"],
      "answerIndex": 1
    },
    {
      "question": "What is a file?",
      "options": [
        "A physical container",
        "A collection of related data stored on disk",
        "An operating system",
        "A hardware component"
      ],
      "answerIndex": 1
    },
    {
      "question": "What is a folder (directory)?",
      "options": [
        "A type of file",
        "A physical box",
        "A container used to organize files and subfolders",
        "An OS kernel"
      ],
      "answerIndex": 2
    },
    {
      "question": "Which symbol separates folders in a Windows path?",
      "options": ["|", "/", "\\", ":"],
      "answerIndex": 2
    },
    {
      "question": "Example of a full Windows path is:",
      "options": [
        "C:\\Users\\Me\\Documents\\file.txt",
        "/home/me/file.txt",
        "file://local/path",
        "http://example.com"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which operation removes a file permanently?",
      "options": ["Copy", "Cut", "Paste", "Delete"],
      "answerIndex": 3
    },
    {
      "question": "Which shortcut copies selected text?",
      "options": ["Ctrl + V", "Ctrl + C", "Ctrl + Z", "Ctrl + S"],
      "answerIndex": 1
    },
    {
      "question": "Which shortcut pastes copied content?",
      "options": ["Ctrl + C", "Ctrl + X", "Ctrl + V", "Ctrl + P"],
      "answerIndex": 2
    },
    {
      "question": "Which shortcut saves current document?",
      "options": ["Ctrl + S", "Ctrl + A", "Ctrl + P", "Ctrl + O"],
      "answerIndex": 0
    },
    {
      "question": "What is ROM?",
      "options": [
        "Random Operational Memory",
        "Read Only Memory",
        "Run On Memory",
        "Rapid Output Memory"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which of these is an input device?",
      "options": ["Printer", "Monitor", "Scanner", "Speaker"],
      "answerIndex": 2
    },
    {
      "question": "Which of these is an output device?",
      "options": ["Keyboard", "Mouse", "Projector", "Microphone"],
      "answerIndex": 2
    },
    {
      "question": "Which device records sound?",
      "options": ["Speaker", "Microphone", "Monitor", "Printer"],
      "answerIndex": 1
    },
    {
      "question": "Which device prints text on paper?",
      "options": ["Scanner", "Printer", "Speaker", "Monitor"],
      "answerIndex": 1
    },
    {
      "question": "Which OS feature provides security?",
      "options": [
        "Access control and passwords",
        "Recycle Bin",
        "Wallpaper",
        "Clipboard"
      ],
      "answerIndex": 0
    },
    {
      "question": "What is file compression?",
      "options": [
        "Making files larger",
        "Reducing file size for storage",
        "Changing file name",
        "Encrypting files"
      ],
      "answerIndex": 1
    },
    {
      "question": "What is a root directory?",
      "options": [
        "Topmost directory in a drive",
        "A hidden file",
        "An app icon",
        "A printer"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which of the following is system software?",
      "options": ["Windows", "MS Word", "Excel", "PowerPoint"],
      "answerIndex": 0
    },
    {
      "question": "Which of the following is application software?",
      "options": ["Linux", "Windows", "MS Word", "DOS"],
      "answerIndex": 2
    },
    {
      "question": "What is the main function of CPU?",
      "options": [
        "Store data permanently",
        "Perform processing and control",
        "Provide display",
        "Print pages"
      ],
      "answerIndex": 1
    },
    {
      "question": "What is multitasking?",
      "options": [
        "Running multiple programs simultaneously",
        "Printing many pages",
        "Typing faster",
        "Copying files"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which shortcut cuts selected text?",
      "options": ["Ctrl + C", "Ctrl + X", "Ctrl + V", "Ctrl + Z"],
      "answerIndex": 1
    },
    {
      "question": "Which device controls pointer movement?",
      "options": ["Keyboard", "Mouse", "Printer", "Speaker"],
      "answerIndex": 1
    },
    {
      "question": "Which unit measures data size?",
      "options": ["Meters", "Bytes", "Pixels", "Watts"],
      "answerIndex": 1
    },
    {
      "question": "1 Gigabyte = ?",
      "options": ["1024 MB", "1024 KB", "1000 bytes", "1 TB"],
      "answerIndex": 0
    },
    {
      "question": "Which is faster: SSD or HDD?",
      "options": ["SSD", "HDD", "CD-ROM", "Floppy Disk"],
      "answerIndex": 0
    },
    {
      "question": "Which of the following is an output device?",
      "options": ["Monitor", "Keyboard", "Mouse", "Scanner"],
      "answerIndex": 0
    },
    {
      "question": "What does ALU stand for?",
      "options": [
        "Arithmetic Logic Unit",
        "Automatic Logic Utility",
        "Advanced Logic Unit",
        "Arithmetic Linear Unit"
      ],
      "answerIndex": 0
    },
    {
      "question": "Which OS is used on mobile phones?",
      "options": ["Windows 10", "Android", "macOS", "Ubuntu"],
      "answerIndex": 1
    },
    {
      "question": "Which device produces hard copy output?",
      "options": ["Monitor", "Printer", "Scanner", "Mouse"],
      "answerIndex": 1
    },
    {
      "question": "Which memory stores data temporarily?",
      "options": ["ROM", "Hard Disk", "RAM", "SSD"],
      "answerIndex": 2
    },
    {
      "question": "Which shortcut prints a document?",
      "options": ["Ctrl + P", "Ctrl + S", "Ctrl + C", "Ctrl + V"],
      "answerIndex": 0
    },
    {
      "question": "Which file extension belongs to Word documents?",
      "options": [".txt", ".docx", ".jpg", ".mp3"],
      "answerIndex": 1
    },
    {
      "question": "Which key is used to refresh a page?",
      "options": ["F1", "F2", "F5", "F9"],
      "answerIndex": 2
    },
    {
      "question": "Which command lists files in Windows?",
      "options": ["dir", "ls", "show", "cat"],
      "answerIndex": 0
    },
    {
      "question": "Which term means saving a copy of data?",
      "options": ["Format", "Backup", "Compress", "Delete"],
      "answerIndex": 1
    },
    {
      "question": "Which of these improves security?",
      "options": [
        "Using strong passwords",
        "Sharing passwords",
        "Using same password everywhere",
        "Never logging out"
      ],
      "answerIndex": 0
    },
  ];

  final Map<int, int?> selectedAnswers = {};
  final Map<int, bool> correctAnswers = {};

  void selectOption(int qIndex, int optionIndex) {
    final correct = questions[qIndex]['answerIndex'] == optionIndex;
    setState(() {
      selectedAnswers[qIndex] = optionIndex;
      if (correct) correctAnswers[qIndex] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction to Computer"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlue.shade50,
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final q = questions[index];
          final selected = selectedAnswers[index];
          final correctIndex = q['answerIndex'];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Q${index + 1}. ${q['question']}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.indigo),
                    ),
                    const SizedBox(height: 8),
                    ...List.generate(q['options'].length, (i) {
                      Color bg = Colors.white;
                      IconData? icon;
                      Color? iconColor;

                      if (selected != null) {
                        if (i == selected && i == correctIndex) {
                          bg = Colors.green.shade100;
                          icon = Icons.check_circle;
                          iconColor = Colors.green;
                        } else if (i == selected && i != correctIndex) {
                          bg = Colors.red.shade100;
                          icon = Icons.cancel;
                          iconColor = Colors.red;
                        }
                      }

                      return GestureDetector(
                        onTap: () {
                          if (selected != correctIndex) {
                            selectOption(index, i);
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: bg,
                            border: Border.all(color: Colors.indigo.shade100),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                    q['options'][i],
                                    style: TextStyle(
                                      color: (selected == i && i != correctIndex)
                                          ? Colors.red
                                          : (selected == i && i == correctIndex)
                                          ? Colors.green
                                          : Colors.black87,
                                      fontWeight: selected == i
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  )),
                              if (icon != null) Icon(icon, color: iconColor),
                            ],
                          ),
                        ),
                      );
                    }),

                  ]),
            ),
          );
        },
      ),
    );
  }
}

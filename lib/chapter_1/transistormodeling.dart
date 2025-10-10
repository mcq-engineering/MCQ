import 'package:flutter/material.dart';

class transistorModeling extends StatefulWidget {
  const transistorModeling({super.key});

  @override
  State<transistorModeling> createState() => _transistorModelingState();
}

class _transistorModelingState extends State<transistorModeling> {
  final List<Map<String, dynamic>> questions = [

    {
      "question": "In AC domain analysis, the transistor is considered as?",
      "options": ["Open circuit", "Short circuit", "Small-signal model", "DC model"],
      "answerIndex": 2
    },
    {
      "question": "AC analysis neglects which component?",
      "options": ["AC source", "Coupling capacitors", "Signal resistance", "None"],
      "answerIndex": 1
    },
    {
      "question": "The voltage gain in AC domain is defined as?",
      "options": ["Vo/Vi", "Ic/Ib", "β × Rc", "Vce/Vbe"],
      "answerIndex": 0
    },
    {
      "question": "In AC analysis, capacitors are treated as?",
      "options": ["Open circuit", "Short circuit", "Variable resistance", "Not present"],
      "answerIndex": 1
    },
    {
      "question": "The current gain in AC analysis of a transistor is?",
      "options": ["α", "β", "γ", "δ"],
      "answerIndex": 1
    },
    {
      "question": "Input impedance in AC domain is given by?",
      "options": ["Vi/Ib", "Vb/Ib", "Vc/Ic", "Vo/Ib"],
      "answerIndex": 0
    },
    {
      "question": "The output impedance in AC analysis is measured at?",
      "options": ["Input terminals", "Output terminals", "Base terminal", "None"],
      "answerIndex": 1
    },
    {
      "question": "Voltage gain of CE amplifier in AC domain is?",
      "options": ["Negative", "Positive", "Zero", "Unity"],
      "answerIndex": 0
    },
    {
      "question": "The effect of emitter resistance on AC gain is?",
      "options": ["Increase", "Decrease", "No effect", "Double"],
      "answerIndex": 1
    },
    {
      "question": "In AC analysis, the DC sources are replaced with?",
      "options": ["Short circuit", "Open circuit", "Resistors", "Voltage divider"],
      "answerIndex": 0
    },
    {
      "question": "BJT modeling is done to analyze?",
      "options": ["AC signals", "DC signals", "Both AC and DC", "Only noise"],
      "answerIndex": 2
    },
    {
      "question": "The small signal model assumes signals are?",
      "options": ["Large", "Sinusoidal", "Small variations", "Square wave"],
      "answerIndex": 2
    },
    {
      "question": "The hybrid model of transistor is used for?",
      "options": ["High power analysis", "Small signal analysis", "Switching", "Noise analysis"],
      "answerIndex": 1
    },
    {
      "question": "Which parameters define the hybrid model?",
      "options": ["h-parameters", "z-parameters", "y-parameters", "ABCD"],
      "answerIndex": 0
    },
    {
      "question": "Hybrid model is preferred because it is?",
      "options": ["Simple", "Accurate", "Both", "None"],
      "answerIndex": 2
    },
    {
      "question": "Transistor models represent it as?",
      "options": ["An ideal diode", "A black box", "Equivalent circuit", "Perfect conductor"],
      "answerIndex": 2
    },
    {
      "question": "The emitter resistance in small signal model provides?",
      "options": ["Biasing", "Stability", "Noise reduction", "Amplification"],
      "answerIndex": 1
    },
    {
      "question": "AC equivalent model removes?",
      "options": ["Coupling capacitors", "DC sources", "Load resistor", "Input signal"],
      "answerIndex": 1
    },
    {
      "question": "Thevenin equivalent is often used in modeling to simplify?",
      "options": ["Load", "Source", "Biasing network", "Coupling capacitors"],
      "answerIndex": 2
    },
    {
      "question": "BJT modeling helps in determining?",
      "options": ["Frequency response", "Power dissipation", "Gain", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "The hybrid model is also called?",
      "options": ["h-parameter model", "π-model", "y-model", "z-model"],
      "answerIndex": 0
    },
    {
      "question": "How many h-parameters are there?",
      "options": ["2", "3", "4", "5"],
      "answerIndex": 2
    },
    {
      "question": "Which h-parameter represents input impedance?",
      "options": ["hie", "hfe", "hoe", "hre"],
      "answerIndex": 0
    },
    {
      "question": "Which h-parameter represents current gain?",
      "options": ["hie", "hfe", "hre", "hoe"],
      "answerIndex": 1
    },
    {
      "question": "Which h-parameter is reverse voltage gain?",
      "options": ["hie", "hfe", "hre", "hoe"],
      "answerIndex": 2
    },
    {
      "question": "Which h-parameter is output conductance?",
      "options": ["hoe", "hre", "hfe", "hie"],
      "answerIndex": 0
    },
    {
      "question": "h-parameter model is most accurate for?",
      "options": ["Low frequency", "High frequency", "DC analysis", "Noise analysis"],
      "answerIndex": 0
    },
    {
      "question": "h-parameters are derived from?",
      "options": ["Hybrid equivalent circuit", "Miller’s theorem", "Kirchhoff’s law", "Maxwell’s equations"],
      "answerIndex": 0
    },
    {
      "question": "Hybrid model is widely used because?",
      "options": ["Universal", "Accurate", "Simple", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "The unit of hfe is?",
      "options": ["Ohm", "Ampere", "Dimensionless", "Volt"],
      "answerIndex": 2
    },
    {
      "question": "Graphical determination of h-parameters is done using?",
      "options": ["Input and output characteristics", "DC load line", "Biasing curve", "Rectification curve"],
      "answerIndex": 0
    },
    {
      "question": "hie is found from the slope of?",
      "options": ["Output characteristics", "Input characteristics", "Transfer curve", "Load line"],
      "answerIndex": 1
    },
    {
      "question": "hfe is determined from the slope of?",
      "options": ["Ic vs Vce", "Ic vs Ib", "Ib vs Vce", "Vce vs Ic"],
      "answerIndex": 1
    },
    {
      "question": "hoe is calculated from?",
      "options": ["Input characteristics", "Output characteristics", "Both", "None"],
      "answerIndex": 1
    },
    {
      "question": "hre is determined by measuring?",
      "options": ["Reverse voltage gain", "Forward current gain", "Input resistance", "Output resistance"],
      "answerIndex": 0
    },
    {
      "question": "Graphical method is less accurate than?",
      "options": ["Analytical method", "AC analysis", "Simulation", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Which parameter requires extrapolation of curves?",
      "options": ["hie", "hfe", "hre", "hoe"],
      "answerIndex": 3
    },
    {
      "question": "Graphical determination is mostly done for?",
      "options": ["Class A amplifiers", "Class B amplifiers", "Switching circuits", "Digital circuits"],
      "answerIndex": 0
    },
    {
      "question": "The accuracy of graphical h-parameters depends on?",
      "options": ["Sharpness of curves", "Load resistance", "Temperature only", "None"],
      "answerIndex": 0
    },
    {
      "question": "Which tool can replace graphical determination?",
      "options": ["Simulation software", "Multimeter", "Oscilloscope", "Logic analyzer"],
      "answerIndex": 0
    },
    {
      "question": "Transistor parameters vary with?",
      "options": ["Temperature", "Voltage", "Current", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "hfe increases with?",
      "options": ["Temperature rise", "Temperature fall", "Voltage increase", "Frequency"],
      "answerIndex": 0
    },
    {
      "question": "Which parameter decreases with increase in temperature?",
      "options": ["Base-emitter voltage", "hfe", "Output conductance", "Collector current"],
      "answerIndex": 0
    },
    {
      "question": "At high frequencies, h-parameters become?",
      "options": ["Constant", "Variable", "Zero", "Infinite"],
      "answerIndex": 1
    },
    {
      "question": "Variation of parameters makes transistor circuits?",
      "options": ["More stable", "Less stable", "Constant", "Noise free"],
      "answerIndex": 1
    },
    {
      "question": "To minimize parameter variation, designers use?",
      "options": ["Feedback", "Bias stabilization", "Compensation techniques", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Early effect causes variation in?",
      "options": ["Base resistance", "Collector current", "Emitter voltage", "hie"],
      "answerIndex": 1
    },
    {
      "question": "Transistor parameter variation is higher in?",
      "options": ["Discrete devices", "Integrated circuits", "Both", "None"],
      "answerIndex": 0
    },
    {
      "question": "Which parameter varies most significantly with temperature?",
      "options": ["hfe", "Vbe", "hoe", "hre"],
      "answerIndex": 1
    },
    {
      "question": "Designers use datasheets to account for?",
      "options": ["Average values", "Worst-case values", "Exact values", "Constant values"],
      "answerIndex": 1
    }




  ];


  Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('${questions.length}',style: const TextStyle(color: Colors.white,fontSize: 18),),
          const SizedBox(width: 15,),

        ],
        centerTitle: true,
        title: const Text("BJT Modeling",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: questions.length,
        itemBuilder: (context, qIndex) {
          final question = questions[qIndex];
          return Card(
            color: Colors.grey[100],
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 15,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Q${qIndex + 1}. ${question["question"]}",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Options list
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
                            // Only allow selecting until the correct is chosen
                            if (selectedAnswers[qIndex] !=
                                question["answerIndex"]) {
                              selectedAnswers[qIndex] = optIndex;
                            }
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

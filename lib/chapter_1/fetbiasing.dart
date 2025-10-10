import 'package:flutter/material.dart';

class FETBiasingScreen extends StatefulWidget {
  const FETBiasingScreen({super.key});

  @override
  State<FETBiasingScreen> createState() => _FETBiasingScreenState();
}

class _FETBiasingScreenState extends State<FETBiasingScreen> {
  final List<Map<String, dynamic>> questions = [



          {
            "question": "In fixed bias, gate is connected to?",
            "options": ["Ground through resistor", "Directly to supply", "Through capacitor", "Open circuit"],
            "answerIndex": 1
          },
          {
            "question": "Fixed bias circuit uses?",
            "options": ["Single resistor", "Two resistors", "Capacitors only", "No resistor"],
            "answerIndex": 0
          },
          {
            "question": "The main disadvantage of fixed bias is?",
            "options": ["Simple design", "Poor stability", "High cost", "Large size"],
            "answerIndex": 1
          },
          {
            "question": "In fixed bias, Id depends mainly on?",
            "options": ["Temperature", "Gate resistor", "Source resistor", "Voltage divider"],
            "answerIndex": 0
          },
          {
            "question": "Fixed bias is mostly used in?",
            "options": ["Lab experiments", "Industrial circuits", "IC design", "High-frequency amplifiers"],
            "answerIndex": 0
          },
          {
            "question": "The operating point in fixed bias is?",
            "options": ["Highly stable", "Unstable", "Independent of temperature", "Independent of device"],
            "answerIndex": 1
          },
          {
            "question": "Fixed bias circuit is also known as?",
            "options": ["Self bias", "Gate bias", "Voltage divider bias", "Feedback bias"],
            "answerIndex": 1
          },
          {
            "question": "The value of gate resistor in fixed bias is?",
            "options": ["Low", "Very high", "Zero", "Negative"],
            "answerIndex": 1
          },
          {
            "question": "The current in fixed bias is controlled by?",
            "options": ["Vgs", "Vds", "Resistor only", "Capacitor"],
            "answerIndex": 0
          },
          {
            "question": "Fixed bias is rarely used in practical design because?",
            "options": ["Simple", "Unstable", "Expensive", "Complex"],
            "answerIndex": 1
          },

          {
            "question": "In self bias, gate is connected to?",
            "options": ["Ground through resistor", "Source through resistor", "Directly to supply", "Capacitor"],
            "answerIndex": 1
          },
          {
            "question": "Self bias provides?",
            "options": ["No stability", "Improved stability", "Poor efficiency", "No gain"],
            "answerIndex": 1
          },
          {
            "question": "In self bias, source resistor develops?",
            "options": ["Positive voltage", "Negative voltage", "AC voltage", "Constant current"],
            "answerIndex": 1
          },
          {
            "question": "Self bias is widely used in?",
            "options": ["Amplifier circuits", "Rectifiers", "Oscillators", "Logic circuits"],
            "answerIndex": 0
          },
          {
            "question": "Self bias is also called?",
            "options": ["Gate bias", "Source bias", "Drain bias", "Voltage divider bias"],
            "answerIndex": 1
          },
          {
            "question": "The main disadvantage of self bias is?",
            "options": ["Requires large resistor", "Needs capacitor", "Unstable", "Complex"],
            "answerIndex": 0
          },
          {
            "question": "Self bias circuit requires?",
            "options": ["Single supply", "Dual supply", "Three supplies", "No supply"],
            "answerIndex": 0
          },
          {
            "question": "Self bias stabilizes Id against?",
            "options": ["Temperature variation", "Frequency variation", "Noise", "Gain"],
            "answerIndex": 0
          },
          {
            "question": "Self bias circuit Q-point is?",
            "options": ["Very unstable", "Fairly stable", "Completely stable", "Independent of device"],
            "answerIndex": 1
          },
          {
            "question": "Self bias is preferred over fixed bias due to?",
            "options": ["Simplicity", "Better stability", "Higher power gain", "No resistors"],
            "answerIndex": 1
          },

          {
            "question": "Voltage divider bias uses?",
            "options": ["One resistor", "Two resistors", "Three resistors", "No resistor"],
            "answerIndex": 1
          },
          {
            "question": "Voltage divider provides?",
            "options": ["Best stability", "Poor stability", "Average stability", "No stability"],
            "answerIndex": 0
          },
          {
            "question": "This bias is widely used in?",
            "options": ["Discrete FET amplifiers", "Power supplies", "Rectifiers", "Transformers"],
            "answerIndex": 0
          },
          {
            "question": "Voltage divider bias is also known as?",
            "options": ["Self bias", "Potential divider bias", "Feedback bias", "Gate bias"],
            "answerIndex": 1
          },
          {
            "question": "The main advantage of voltage divider bias is?",
            "options": ["Simple design", "High thermal stability", "Low power", "Low frequency"],
            "answerIndex": 1
          },
          {
            "question": "Voltage divider bias requires?",
            "options": ["Dual supply", "Single supply", "No supply", "Three supplies"],
            "answerIndex": 1
          },
          {
            "question": "Voltage divider bias Q-point is?",
            "options": ["Unstable", "Stable", "Unpredictable", "Shifts a lot"],
            "answerIndex": 1
          },
          {
            "question": "This bias consumes?",
            "options": ["No current", "Some current", "Large current", "Infinite current"],
            "answerIndex": 1
          },
          {
            "question": "Voltage divider bias is mostly used in?",
            "options": ["IC design", "Digital circuits", "Analog amplifiers", "Rectifiers"],
            "answerIndex": 2
          },
          {
            "question": "Voltage divider bias improves?",
            "options": ["Gain", "Stability", "Noise", "Size"],
            "answerIndex": 1
          },

          {
            "question": "In depletion MOSFET, channel exists?",
            "options": ["Before applying gate voltage", "Only after applying gate voltage", "Never exists", "Only with AC signal"],
            "answerIndex": 0
          },
          {
            "question": "Gate voltage in depletion MOSFET can?",
            "options": ["Only increase current", "Only decrease current", "Increase or decrease current", "Has no effect"],
            "answerIndex": 2
          },
          {
            "question": "Depletion MOSFET can work in?",
            "options": ["Only depletion mode", "Only enhancement mode", "Both depletion and enhancement modes", "Neither mode"],
            "answerIndex": 2
          },
          {
            "question": "Biasing depletion MOSFET often uses?",
            "options": ["Fixed bias", "Self bias", "Voltage divider bias", "All of the above"],
            "answerIndex": 3
          },
          {
            "question": "Applying negative gate voltage in depletion MOSFET?",
            "options": ["Enhances current", "Reduces current", "Has no effect", "Destroys device"],
            "answerIndex": 1
          },
          {
            "question": "At Vgs = 0, depletion MOSFET is?",
            "options": ["OFF", "ON", "Partially ON", "Reverse biased"],
            "answerIndex": 1
          },
          {
            "question": "Depletion MOSFET biasing resembles?",
            "options": ["JFET biasing", "BJT biasing", "Rectifier circuit", "Thyristor biasing"],
            "answerIndex": 0
          },
          {
            "question": "In depletion biasing, Id can be controlled by?",
            "options": ["Vds only", "Vgs only", "Vgs and Vds both", "Gate current"],
            "answerIndex": 2
          },
          {
            "question": "The main advantage of depletion MOSFET is?",
            "options": ["Can operate at Vgs=0", "Needs dual supply", "Very high power handling", "No channel"],
            "answerIndex": 0
          },
          {
            "question": "Biasing of depletion MOSFET is simpler compared to?",
            "options": ["JFET", "Enhancement MOSFET", "BJT", "SCR"],
            "answerIndex": 1
          },

          {
            "question": "In enhancement MOSFET, channel exists?",
            "options": ["Before gate voltage", "After positive gate voltage applied", "Always exists", "Never exists"],
            "answerIndex": 1
          },
          {
            "question": "Enhancement MOSFET is normally?",
            "options": ["ON", "OFF", "Half ON", "Reverse biased"],
            "answerIndex": 1
          },
          {
            "question": "Enhancement MOSFET biasing requires?",
            "options": ["Negative gate voltage", "Positive gate voltage", "Zero gate voltage", "Dual supply"],
            "answerIndex": 1
          },
          {
            "question": "Biasing enhancement MOSFET often uses?",
            "options": ["Voltage divider", "Fixed bias", "Self bias", "All of the above"],
            "answerIndex": 3
          },
          {
            "question": "Threshold voltage in enhancement MOSFET is?",
            "options": ["Negative", "Positive", "Zero", "Infinite"],
            "answerIndex": 1
          },
          {
            "question": "Enhancement MOSFET behaves like?",
            "options": ["JFET", "Normally closed switch", "Normally open switch", "Diode"],
            "answerIndex": 2
          },
          {
            "question": "Enhancement MOSFET biasing is more critical than?",
            "options": ["BJT biasing", "JFET biasing", "Depletion MOSFET biasing", "SCR biasing"],
            "answerIndex": 2
          },
          {
            "question": "Gate current in enhancement MOSFET is?",
            "options": ["High", "Moderate", "Zero", "Negative"],
            "answerIndex": 2
          },
          {
            "question": "Enhancement MOSFETs are widely used in?",
            "options": ["Analog amplifiers", "Digital switching circuits", "Rectifiers", "Thyristors"],
            "answerIndex": 1
          },
          {
            "question": "Biasing an enhancement MOSFET requires careful control of?",
            "options": ["Gate voltage", "Drain resistance", "Capacitance", "Frequency"],
            "answerIndex": 0
          },

          {
            "question": "Combination bias networks use?",
            "options": ["Fixed bias only", "Self bias only", "Fixed and self bias together", "No bias"],
            "answerIndex": 2
          },
          {
            "question": "The main purpose of combination networks is?",
            "options": ["To reduce resistors", "To improve stability", "To simplify design", "To increase distortion"],
            "answerIndex": 1
          },
          {
            "question": "Combination biasing is mostly used in?",
            "options": ["JFET circuits", "Enhancement MOSFET", "Power amplifiers", "All of the above"],
            "answerIndex": 3
          },
          {
            "question": "Combination networks improve?",
            "options": ["Thermal stability", "Power loss", "Noise", "Size"],
            "answerIndex": 0
          },
          {
            "question": "In combination bias, stability comes from?",
            "options": ["Only fixed bias", "Only self bias", "Both resistors", "No resistor"],
            "answerIndex": 2
          },
          {
            "question": "Combination networks may require?",
            "options": ["One resistor only", "Two resistors", "Three or more resistors", "No resistor"],
            "answerIndex": 2
          },
          {
            "question": "Combination biasing reduces?",
            "options": ["Power gain", "Q-point shift", "Thermal resistance", "Capacitance"],
            "answerIndex": 1
          },
          {
            "question": "Combination bias is a compromise between?",
            "options": ["Cost and size", "Stability and complexity", "Noise and power", "AC and DC"],
            "answerIndex": 1
          },
          {
            "question": "Combination biasing is rarely used in?",
            "options": ["High power circuits", "Small signal circuits", "IC design", "JFET amplifiers"],
            "answerIndex": 2
          },
          {
            "question": "The performance of combination networks depends on?",
            "options": ["Temperature only", "Resistor ratio", "Frequency response", "Voltage gain"],
            "answerIndex": 1
          },

          {
            "question": "P-channel FET requires?",
            "options": ["Positive Vgs for cutoff", "Negative Vgs for cutoff", "Zero bias", "Dual supply"],
            "answerIndex": 1
          },
          {
            "question": "Biasing of P-channel FET is similar to?",
            "options": ["N-channel FET but polarities reversed", "BJT biasing", "MOS capacitor", "Rectifier"],
            "answerIndex": 0
          },
          {
            "question": "In P-channel FET, drain supply is usually?",
            "options": ["Positive", "Negative", "Zero", "AC"],
            "answerIndex": 1
          },
          {
            "question": "P-channel FET biasing requires reversing?",
            "options": ["Source polarity", "Gate polarity", "Drain polarity", "All polarities"],
            "answerIndex": 3
          },
          {
            "question": "P-channel devices are less popular due to?",
            "options": ["Higher cost", "Lower mobility", "Complex design", "Noisy operation"],
            "answerIndex": 1
          },
          {
            "question": "Biasing circuits for P-channel FETs are?",
            "options": ["Same as N-channel", "Same but polarities reversed", "Completely different", "Not required"],
            "answerIndex": 1
          },
          {
            "question": "In P-channel JFET, Vgs must be?",
            "options": ["Positive", "Negative", "Zero", "Constant"],
            "answerIndex": 1
          },
          {
            "question": "P-channel FET biasing is less common in?",
            "options": ["CMOS", "Analog amplifiers", "IC design", "Digital circuits"],
            "answerIndex": 1
          },
          {
            "question": "The cutoff voltage of P-channel FET is?",
            "options": ["Positive", "Negative", "Zero", "Infinite"],
            "answerIndex": 1
          },
          {
            "question": "P-channel FET is biased opposite to?",
            "options": ["JFET", "MOSFET", "N-channel FET", "BJT"],
            "answerIndex": 2
          },

          {
            "question": "Universal JFET bias curve relates?",
            "options": ["Id vs Vgs", "Id vs Vds", "Vgs vs Vds", "Current vs temperature"],
            "answerIndex": 0
          },
          {
            "question": "Universal bias curve is derived from?",
            "options": ["Shockley’s equation", "Ohm’s law", "Kirchhoff’s law", "Miller theorem"],
            "answerIndex": 0
          },
          {
            "question": "The curve helps to find?",
            "options": ["Q-point", "Cutoff frequency", "Power gain", "Resonance"],
            "answerIndex": 0
          },
          {
            "question": "On universal curve, Idss corresponds to?",
            "options": ["Vgs = 0", "Vgs = Vp", "Vds = 0", "Vds = ∞"],
            "answerIndex": 0
          },
          {
            "question": "Pinch-off voltage is shown at?",
            "options": ["Vgs = 0", "Vgs = Vp", "Id = 0", "Id = Idss"],
            "answerIndex": 1
          },
          {
            "question": "Universal bias curve is useful for?",
            "options": ["Graphical bias design", "AC analysis", "Power loss estimation", "Noise calculation"],
            "answerIndex": 0
          },
          {
            "question": "The shape of universal curve is?",
            "options": ["Linear", "Parabolic", "Exponential", "Square law"],
            "answerIndex": 3
          },
          {
            "question": "Shockley’s equation gives?",
            "options": ["Id = Idss(1 - Vgs/Vp)^2", "Vgs = IR", "Id = V/R", "Id = βVgs"],
            "answerIndex": 0
          },
          {
            "question": "The universal curve is independent of?",
            "options": ["Device parameters", "Temperature", "Capacitance", "Resistor values"],
            "answerIndex": 3
          },
          {
            "question": "The Q-point is chosen on universal curve for?",
            "options": ["Maximum distortion", "Minimum efficiency", "Stable operation", "Noise increase"],
            "answerIndex": 2
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
        title: const Text("FET DC Biasing",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
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
                          fontWeight: FontWeight.bold,color: Colors.blue
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
        )

    );
  }
}

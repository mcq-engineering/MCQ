import 'package:flutter/material.dart';

class FETScreen extends StatefulWidget {
  const FETScreen({super.key});

  @override
  State<FETScreen> createState() => _FETScreenState();
}

class _FETScreenState extends State<FETScreen> {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "The full form of FET is?",
      "options": ["Field Emission Transistor", "Field Effect Transistor", "Forward Effect Transistor", "Feedback Effect Transistor"],
      "answerIndex": 1
    },
    {
      "question": "FET is a?",
      "options": ["Voltage-controlled device", "Current-controlled device", "Power device", "Switch only"],
      "answerIndex": 0
    },
    {
      "question": "The input resistance of a FET is?",
      "options": ["Low", "Medium", "High", "Very low"],
      "answerIndex": 2
    },
    {
      "question": "The terminals of JFET are?",
      "options": ["Emitter, Base, Collector", "Gate, Source, Drain", "Anode, Cathode, Gate", "Input, Output, Control"],
      "answerIndex": 1
    },
    {
      "question": "FET channel is made of?",
      "options": ["Metal", "Semiconductor", "Insulator", "Oxide"],
      "answerIndex": 1
    },
    {
      "question": "JFET can be either?",
      "options": ["N-channel or P-channel", "Only P-channel", "Only N-channel", "MOS type only"],
      "answerIndex": 0
    },
    {
      "question": "Gate terminal of JFET is always?",
      "options": ["Forward biased", "Reverse biased", "Neutral", "Floating"],
      "answerIndex": 1
    },
    {
      "question": "Which region of JFET is controlled by gate voltage?",
      "options": ["Channel width", "Drain current", "Cutoff region", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "FET has advantage of?",
      "options": ["High input resistance", "Low noise", "Small size", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "FET is sometimes called?",
      "options": ["Unipolar device", "Bipolar device", "PNP device", "Rectifier"],
      "answerIndex": 0
    },
    {
      "question": "The graph of I_D vs V_DS at constant V_GS is called?",
      "options": ["Transfer curve", "Output characteristic", "Input curve", "Load line"],
      "answerIndex": 1
    },
    {
      "question": "In FET, pinch-off occurs when?",
      "options": ["V_GS = 0", "Channel closes completely", "I_D = 0", "V_DS = 0"],
      "answerIndex": 1
    },
    {
      "question": "The maximum drain current at V_GS = 0 is?",
      "options": ["I_DSS", "I_G", "I_DS", "β"],
      "answerIndex": 0
    },
    {
      "question": "The cutoff voltage is also called?",
      "options": ["Threshold voltage", "Saturation voltage", "Bias voltage", "Breakdown voltage"],
      "answerIndex": 0
    },
    {
      "question": "In saturation region, drain current is?",
      "options": ["Independent of V_DS", "Proportional to V_DS", "Zero", "Infinite"],
      "answerIndex": 0
    },
    {
      "question": "At pinch-off, drain current becomes?",
      "options": ["Maximum", "Zero", "Constant", "Negative"],
      "answerIndex": 2
    },
    {
      "question": "The small leakage current in FET is?",
      "options": ["I_G", "I_DSS", "I_D", "I_DS"],
      "answerIndex": 0
    },
    {
      "question": "The slope of I_D vs V_DS curve is?",
      "options": ["Resistance", "Conductance", "Transconductance", "Impedance"],
      "answerIndex": 2
    },
    {
      "question": "In ohmic region, FET behaves as?",
      "options": ["Resistor", "Amplifier", "Oscillator", "Switch"],
      "answerIndex": 0
    },
    {
      "question": "The transconductance is denoted by?",
      "options": ["g_m", "h_FE", "β", "α"],
      "answerIndex": 0
    },
    {
      "question": "Transfer characteristic is graph between?",
      "options": ["I_D and V_DS", "I_D and V_GS", "V_DS and V_GS", "I_D and β"],
      "answerIndex": 1
    },
    {
      "question": "Transfer characteristic of JFET is?",
      "options": ["Linear", "Quadratic", "Exponential", "Step"],
      "answerIndex": 1
    },
    {
      "question": "Equation of transfer characteristic is?",
      "options": ["I_D = I_DSS (1 - V_GS/V_GS(off))^2", "I_D = βV_DS", "I_D = g_m V_GS", "I_D = I_B β"],
      "answerIndex": 0
    },
    {
      "question": "At V_GS = 0, I_D equals?",
      "options": ["0", "I_DSS", "I_DS", "g_m"],
      "answerIndex": 1
    },
    {
      "question": "When V_GS = V_GS(off), I_D is?",
      "options": ["Maximum", "Zero", "Constant", "Infinite"],
      "answerIndex": 1
    },
    {
      "question": "The slope of transfer curve is?",
      "options": ["Input resistance", "g_m", "Load line", "Pinch-off"],
      "answerIndex": 1
    },
    {
      "question": "The relationship between I_D and V_GS is?",
      "options": ["Square law", "Linear law", "Exponential law", "Ohm’s law"],
      "answerIndex": 0
    },
    {
      "question": "g_m at V_GS = 0 is called?",
      "options": ["g_m(max)", "g_m(min)", "g_m(off)", "β"],
      "answerIndex": 0
    },
    {
      "question": "Transfer characteristic helps to determine?",
      "options": ["I_DSS only", "V_GS(off)", "g_m", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Which region does transfer curve cover?",
      "options": ["Cutoff to saturation", "Saturation to breakdown", "Ohmic only", "Breakdown only"],
      "answerIndex": 0
    },
    {
      "question": "Which parameter on FET datasheet shows maximum drain current?",
      "options": ["I_DSS", "g_m", "V_DS(max)", "V_GS(th)"],
      "answerIndex": 0
    },
    {
      "question": "V_DS(max) in specification sheet represents?",
      "options": ["Maximum gate voltage", "Maximum drain-source voltage", "Maximum drain current", "Pinch-off voltage"],
      "answerIndex": 1
    },
    {
      "question": "The threshold voltage of MOSFET is denoted by?",
      "options": ["V_DS", "V_GS(th)", "I_DSS", "g_m"],
      "answerIndex": 1
    },
    {
      "question": "The power dissipation rating of FET is usually given in?",
      "options": ["Watts", "Amperes", "Volts", "Ohms"],
      "answerIndex": 0
    },
    {
      "question": "The parameter g_m in datasheet stands for?",
      "options": ["Transconductance", "Input resistance", "Output resistance", "Power gain"],
      "answerIndex": 0
    },
    {
      "question": "Breakdown voltage of gate-drain junction is labeled as?",
      "options": ["V_GD(max)", "V_GS(max)", "V_DS(max)", "V_GB(max)"],
      "answerIndex": 0
    },
    {
      "question": "Datasheet provides input capacitance value denoted as?",
      "options": ["C_gs", "C_ds", "C_gd", "C_in"],
      "answerIndex": 0
    },
    {
      "question": "Safe Operating Area (SOA) is given to prevent?",
      "options": ["Noise", "Thermal damage", "Leakage", "Pinch-off"],
      "answerIndex": 1
    },
    {
      "question": "Which parameter specifies switching speed?",
      "options": ["Rise/fall time", "Pinch-off voltage", "V_DS", "I_DSS"],
      "answerIndex": 0
    },
    {
      "question": "The thermal resistance parameter is expressed in?",
      "options": ["°C/W", "W/°C", "Amps/°C", "V/°C"],
      "answerIndex": 0
    },
    {
      "question": "In depletion MOSFET, channel exists?",
      "options": ["Before applying V_GS", "Only after V_GS applied", "Never", "At high temperature only"],
      "answerIndex": 0
    },
    {
      "question": "Depletion MOSFET can work in?",
      "options": ["Only enhancement mode", "Only depletion mode", "Both depletion and enhancement mode", "None"],
      "answerIndex": 2
    },
    {
      "question": "Symbol of depletion MOSFET has?",
      "options": ["Solid line channel", "Broken line channel", "Arrow both ways", "No line"],
      "answerIndex": 0
    },
    {
      "question": "Applying negative V_GS in depletion MOSFET?",
      "options": ["Increases I_D", "Decreases I_D", "No effect", "Causes breakdown"],
      "answerIndex": 1
    },
    {
      "question": "Applying positive V_GS in depletion MOSFET?",
      "options": ["Increases I_D", "Decreases I_D", "No effect", "Blocks channel"],
      "answerIndex": 0
    },
    {
      "question": "Depletion MOSFET is used as?",
      "options": ["Resistor", "Amplifier", "Switch", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "The threshold voltage of depletion MOSFET can be?",
      "options": ["Positive", "Negative", "Either positive or negative", "Zero only"],
      "answerIndex": 2
    },
    {
      "question": "Depletion MOSFET is also called?",
      "options": ["Normally-on device", "Normally-off device", "Latch device", "Unipolar switch"],
      "answerIndex": 0
    },
    {
      "question": "Which type of MOSFET is less commonly used?",
      "options": ["Enhancement", "Depletion", "CMOS", "VMOS"],
      "answerIndex": 1
    },
    {
      "question": "The conduction in depletion MOSFET is controlled by?",
      "options": ["Electric field", "Magnetic field", "Charge storage", "Thermal effect"],
      "answerIndex": 0
    },
    {
      "question": "Enhancement MOSFET is also called?",
      "options": ["Normally-on", "Normally-off", "Latch device", "Resistor"],
      "answerIndex": 1
    },
    {
      "question": "Enhancement MOSFET requires V_GS?",
      "options": ["Positive for n-channel", "Negative for n-channel", "Zero", "Either positive or negative"],
      "answerIndex": 0
    },
    {
      "question": "At V_GS = 0, enhancement MOSFET conducts?",
      "options": ["Fully", "Partially", "Not at all", "Only leakage"],
      "answerIndex": 2
    },
    {
      "question": "Enhancement MOSFET is widely used in?",
      "options": ["ICs", "Switching regulators", "Amplifiers", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Channel in enhancement MOSFET is created by?",
      "options": ["Electric field", "Magnetic field", "Thermal energy", "Diffusion"],
      "answerIndex": 0
    },
    {
      "question": "Threshold voltage in enhancement MOSFET is?",
      "options": ["Zero", "Positive for n-channel", "Negative for n-channel", "Infinite"],
      "answerIndex": 1
    },
    {
      "question": "Symbol of enhancement MOSFET shows?",
      "options": ["Broken line channel", "Solid line channel", "Arrow both ways", "No line"],
      "answerIndex": 0
    },
    {
      "question": "Enhancement MOSFET operates mostly in?",
      "options": ["Linear region", "Cutoff region", "Saturation region", "Ohmic region"],
      "answerIndex": 2
    },
    {
      "question": "Main advantage of enhancement MOSFET?",
      "options": ["Low power consumption", "High input resistance", "High speed", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Enhancement MOSFET dominates in?",
      "options": ["Analog circuits", "Digital ICs", "Power amplifiers", "Sensors"],
      "answerIndex": 1
    },
    {
      "question": "MOSFETs are highly sensitive to?",
      "options": ["Light", "Pressure", "Static electricity", "Heat only"],
      "answerIndex": 2
    },
    {
      "question": "For safety, MOSFETs should be handled with?",
      "options": ["Bare hands", "ESD wrist strap", "Wooden tools", "Plastic tweezers"],
      "answerIndex": 1
    },
    {
      "question": "During storage, MOSFET terminals should be?",
      "options": ["Shorted together", "Left open", "Connected to battery", "Grounded permanently"],
      "answerIndex": 0
    },
    {
      "question": "While soldering MOSFET, precaution is?",
      "options": ["Use high temperature", "Use low temperature", "Short all leads", "Avoid grounding"],
      "answerIndex": 2
    },
    {
      "question": "MOSFET gate oxide layer is?",
      "options": ["Thick and strong", "Very thin and fragile", "Metallic", "Magnetic"],
      "answerIndex": 1
    },
    {
      "question": "To prevent ESD damage, MOSFETs are shipped in?",
      "options": ["Plastic bags", "Antistatic bags", "Paper wrap", "Glass jars"],
      "answerIndex": 1
    },
    {
      "question": "MOSFETs should not be touched at?",
      "options": ["Source", "Drain", "Gate terminal", "Body terminal"],
      "answerIndex": 2
    },
    {
      "question": "One safe handling method is?",
      "options": ["Keep gate shorted to source", "Keep drain shorted to gate", "Keep gate open", "Keep source floating"],
      "answerIndex": 0
    },
    {
      "question": "Static discharge can permanently?",
      "options": ["Increase gain", "Destroy gate oxide", "Increase speed", "Decrease noise"],
      "answerIndex": 1
    },
    {
      "question": "MOSFET devices are also protected by?",
      "options": ["Built-in diodes", "Built-in fuses", "Heatsinks", "Switches"],
      "answerIndex": 0
    },
    {
      "question": "The 'V' in VMOS stands for?",
      "options": ["Vertical", "Vacuum", "Voltage", "Variable"],
      "answerIndex": 0
    },
    {
      "question": "VMOS transistors have?",
      "options": ["Horizontal structure", "Vertical structure", "Planar structure", "Radial structure"],
      "answerIndex": 1
    },
    {
      "question": "VMOS devices are mainly used in?",
      "options": ["Low frequency applications", "Power electronics", "RF amplifiers", "Sensors"],
      "answerIndex": 1
    },
    {
      "question": "VMOS allows?",
      "options": ["Low current handling", "High current handling", "Only low voltage operation", "Only analog operation"],
      "answerIndex": 1
    },
    {
      "question": "VMOS devices reduce?",
      "options": ["Switching speed", "On-resistance", "Power dissipation", "Both b and c"],
      "answerIndex": 3
    },
    {
      "question": "The structure of VMOS provides?",
      "options": ["Low breakdown voltage", "High breakdown voltage", "No breakdown", "Negative resistance"],
      "answerIndex": 1
    },
    {
      "question": "VMOS is a type of?",
      "options": ["JFET", "MOSFET", "BJT", "IGBT"],
      "answerIndex": 1
    },
    {
      "question": "VMOS devices are faster because?",
      "options": ["Shorter channel length", "Longer channel length", "No channel", "Magnetic effect"],
      "answerIndex": 0
    },
    {
      "question": "VMOS transistors are mainly used as?",
      "options": ["Amplifiers", "Switches", "Oscillators", "Resistors"],
      "answerIndex": 1
    },
    {
      "question": "VMOS structure improves?",
      "options": ["Current density", "Speed", "Efficiency", "All of these"],
      "answerIndex": 3
    },
      {
        "question": "CMOS stands for?",
        "options": ["Complementary MOS", "Combined MOS", "Controlled MOS", "Conventional MOS"],
        "answerIndex": 0
      },
      {
        "question": "CMOS technology uses?",
        "options": ["Only nMOS", "Only pMOS", "Both nMOS and pMOS", "Only depletion MOS"],
        "answerIndex": 2
      },
      {
        "question": "Main advantage of CMOS is?",
        "options": ["High power consumption", "Low power consumption", "Low input resistance", "Low speed"],
        "answerIndex": 1
      },
      {
        "question": "CMOS circuits operate at?",
        "options": ["High static power", "Low static power", "Negative power", "Infinite power"],
        "answerIndex": 1
      },
      {
        "question": "CMOS is widely used in?",
        "options": ["Analog circuits", "Digital ICs", "Motors", "Power devices"],
        "answerIndex": 1
      },
      {
        "question": "CMOS logic family is?",
        "options": ["Low noise", "High noise", "Medium noise", "Noisy"],
        "answerIndex": 0
      },
      {
        "question": "The drawback of CMOS is?",
        "options": ["Susceptibility to static damage", "High power loss", "Low efficiency", "Slow speed"],
        "answerIndex": 0
      },
      {
        "question": "In CMOS, power is mainly consumed during?",
        "options": ["Switching", "Idle state", "Storage", "Biasing"],
        "answerIndex": 0
      },
      {
        "question": "CMOS inverter consists of?",
        "options": ["Two nMOS", "Two pMOS", "One pMOS and one nMOS", "Two BJTs"],
        "answerIndex": 2
      },
      {
        "question": "CMOS circuits are preferred in?",
        "options": ["Digital watches", "Computers", "Mobile devices", "All of these"],
        "answerIndex": 3
      },
    {
      "question": "The main advantage of FET over BJT is?",
      "options": ["Low input resistance", "High input impedance", "Low output impedance", "High gain"],
      "answerIndex": 1
    },
    {
      "question": "The channel in JFET is controlled by?",
      "options": ["Drain current", "Gate voltage", "Source current", "Gate current"],
      "answerIndex": 1
    },
    {
      "question": "The gate current in FET is ideally?",
      "options": ["Large", "Zero", "Equal to drain current", "Equal to source current"],
      "answerIndex": 1
    },
    {
      "question": "FET behaves as a?",
      "options": ["Current controlled device", "Voltage controlled device", "Power controlled device", "None"],
      "answerIndex": 1
    },
    {
      "question": "The input impedance of MOSFET is?",
      "options": ["Low", "Medium", "High", "Very high"],
      "answerIndex": 3
    },
    {
      "question": "The region of FET used as amplifier is?",
      "options": ["Cutoff", "Ohmic", "Active/Saturation", "Breakdown"],
      "answerIndex": 2
    },
    {
      "question": "FET is less noisy than BJT because?",
      "options": ["It is unipolar", "It has high gain", "It is bipolar", "It uses feedback"],
      "answerIndex": 0
    },
    {
      "question": "Which FET is widely used in digital logic circuits?",
      "options": ["JFET", "MOSFET", "VMOS", "None"],
      "answerIndex": 1
    },
    {
      "question": "MOSFET requires special handling due to?",
      "options": ["Low gain", "Static charge sensitivity", "High current", "Magnetic effects"],
      "answerIndex": 1
    },
    {
      "question": "In CMOS technology, P-channel and N-channel MOSFETs are?",
      "options": ["Connected in parallel", "Connected in series", "Complementary", "Not used together"],
      "answerIndex": 2
    },
    {
      "question": "The voltage between gate and source in JFET is normally?",
      "options": ["Forward biased", "Reverse biased", "Zero biased", "Positive"],
      "answerIndex": 1
    },
    {
      "question": "The transfer characteristics of FET show relation between?",
      "options": ["ID and VDS", "ID and VGS", "VDS and VGS", "ID and IG"],
      "answerIndex": 1
    },
    {
      "question": "Depletion type MOSFET can operate in?",
      "options": ["Only enhancement mode", "Only depletion mode", "Both depletion and enhancement modes", "None"],
      "answerIndex": 2
    },
    {
      "question": "Enhancement type MOSFET requires gate voltage?",
      "options": ["Negative", "Zero", "More positive than threshold", "Reverse biased"],
      "answerIndex": 2
    },
    {
      "question": "FET is also called?",
      "options": ["Unipolar device", "Bipolar device", "Hybrid device", "Current device"],
      "answerIndex": 0
    },
    {
      "question": "Which FET structure is used for high power applications?",
      "options": ["JFET", "VMOS", "Enhancement MOSFET", "Depletion MOSFET"],
      "answerIndex": 1
    },
    {
      "question": "In MOSFET datasheet, Vth represents?",
      "options": ["Threshold voltage", "Thermal voltage", "Terminal voltage", "Transconductance voltage"],
      "answerIndex": 0
    },
    {
      "question": "Transconductance (gm) of FET is defined as?",
      "options": ["ΔID/ΔVGS", "ΔVDS/ΔID", "ΔID/ΔVDS", "ΔVGS/ΔID"],
      "answerIndex": 0
    },
    {
      "question": "FETs are mostly preferred in RF applications because?",
      "options": ["Low noise", "High input impedance", "High speed", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "The gate of a MOSFET is insulated by?",
      "options": ["Silicon dioxide layer", "Metal film", "PN junction", "Polysilicon"],
      "answerIndex": 0
    },


    // 👉 Add remaining questions from your prepared FET MCQs list here
  ];

  // To store selected answers
  Map<int, int?> selectedAnswers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('${questions.length}',style: const TextStyle(color: Colors.white,fontSize: 18),),
          const SizedBox(width: 15,),

        ],
        title: const Text("Field Effect Transistor",style: TextStyle(color: Colors.white,fontSize: 18),),
        backgroundColor: Colors.blue,
        centerTitle: true,
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

import 'package:flutter/material.dart';

class BJTScreen extends StatefulWidget {
  const BJTScreen({super.key});

  @override
  State<BJTScreen> createState() => _BJTScreenState();
}

class _BJTScreenState extends State<BJTScreen> {
  final List<Map<String, dynamic>> questions = [
    // --- Construction & Operation ---
    {
      "question": "A BJT is a device controlled by?",
      "options": ["Current", "Voltage", "Power", "Resistance"],
      "answerIndex": 0
    },
    {
      "question": "The three terminals of a BJT are?",
      "options": ["Anode, Cathode, Gate", "Emitter, Base, Collector", "Source, Drain, Gate", "Input, Output, Ground"],
      "answerIndex": 1
    },
    {
      "question": "A BJT is made of?",
      "options": ["Two PN junctions", "One PN junction", "Four PN junctions", "None"],
      "answerIndex": 0
    },
    {
      "question": "In NPN transistor, majority carriers are?",
      "options": ["Electrons", "Holes", "Both", "None"],
      "answerIndex": 0
    },
    {
      "question": "In PNP transistor, majority carriers are?",
      "options": ["Electrons", "Holes", "Both", "None"],
      "answerIndex": 1
    },

    // --- Common Base ---
    {
      "question": "In common-base configuration, the input is applied between?",
      "options": ["Base & Collector", "Emitter & Base", "Collector & Emitter", "None"],
      "answerIndex": 1
    },
    {
      "question": "The current gain in common-base configuration is called?",
      "options": ["Beta (β)", "Alpha (α)", "Gamma (γ)", "Delta (δ)"],
      "answerIndex": 1
    },
    {
      "question": "The value of α (common base gain) is approximately?",
      "options": ["0.01", "0.5", "0.95 to 0.99", "More than 1"],
      "answerIndex": 2
    },
    {
      "question": "Input resistance of common base configuration is?",
      "options": ["High", "Low", "Medium", "Infinite"],
      "answerIndex": 1
    },
    {
      "question": "Output resistance of common base configuration is?",
      "options": ["High", "Low", "Zero", "Medium"],
      "answerIndex": 0
    },

    // --- Common Emitter ---
    {
      "question": "In common emitter configuration, input is applied between?",
      "options": ["Emitter & Collector", "Base & Emitter", "Base & Collector", "Collector & Ground"],
      "answerIndex": 1
    },
    {
      "question": "The current gain in common emitter is called?",
      "options": ["Alpha (α)", "Beta (β)", "Gamma (γ)", "Delta (δ)"],
      "answerIndex": 1
    },
    {
      "question": "The value of β is usually between?",
      "options": ["1–10", "20–200", "500–1000", "2000–5000"],
      "answerIndex": 1
    },
    {
      "question": "Common emitter configuration provides?",
      "options": ["High current gain", "High voltage gain", "Phase inversion", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Input resistance of common emitter is?",
      "options": ["Very high", "Low", "Medium", "Infinite"],
      "answerIndex": 2
    },

    // --- Common Collector ---
    {
      "question": "Common collector configuration is also called?",
      "options": ["Voltage follower", "Emitter follower", "Base follower", "Current follower"],
      "answerIndex": 1
    },
    {
      "question": "Input resistance of common collector is?",
      "options": ["Low", "Medium", "Very high", "Zero"],
      "answerIndex": 2
    },
    {
      "question": "Output resistance of common collector is?",
      "options": ["High", "Medium", "Low", "Infinite"],
      "answerIndex": 2
    },
    {
      "question": "Voltage gain of common collector is approximately?",
      "options": ["Zero", "Less than 1", "1", "Greater than 10"],
      "answerIndex": 2
    },
    {
      "question": "Common collector is mainly used for?",
      "options": ["Voltage amplification", "Impedance matching", "Current amplification", "Power amplification"],
      "answerIndex": 1
    },

    // --- Specifications & Testing ---
    {
      "question": "The maximum current rating of a transistor is specified for?",
      "options": ["Base", "Emitter", "Collector", "All terminals"],
      "answerIndex": 2
    },
    {
      "question": "The maximum voltage rating is usually across?",
      "options": ["Emitter-Base", "Collector-Emitter", "Collector-Base", "Base-Collector"],
      "answerIndex": 1
    },
    {
      "question": "Leakage current in BJT is?",
      "options": ["ICBO", "IBO", "IEBO", "All of these"],
      "answerIndex": 0
    },
    {
      "question": "The β of transistor is tested using?",
      "options": ["Ohmmeter", "Transistor tester", "Voltmeter", "Ammeter"],
      "answerIndex": 1
    },
    {
      "question": "hFE of transistor represents?",
      "options": ["Current gain in CE", "Voltage gain in CB", "Resistance in CC", "Power gain"],
      "answerIndex": 0
    },

    // --- Casing & Terminals ---
    {
      "question": "In TO-92 package, the flat side indicates?",
      "options": ["Pin sequence", "Collector size", "Polarity", "Power rating"],
      "answerIndex": 0
    },
    {
      "question": "Which transistor casing is used for power transistors?",
      "options": ["TO-3", "TO-92", "SOT-23", "DIP"],
      "answerIndex": 0
    },
    {
      "question": "Middle pin of TO-92 casing is usually?",
      "options": ["Emitter", "Base", "Collector", "Ground"],
      "answerIndex": 1
    },
    {
      "question": "The metallic case of TO-3 transistor is connected to?",
      "options": ["Emitter", "Base", "Collector", "None"],
      "answerIndex": 2
    },
    {
      "question": "Plastic casings are used for?",
      "options": ["Low power", "Medium power", "High power", "All"],
      "answerIndex": 0
    },

    // --- Darlington Pair ---
    {
      "question": "A Darlington pair consists of?",
      "options": ["1 transistor", "2 transistors", "3 transistors", "4 transistors"],
      "answerIndex": 1
    },
    {
      "question": "The current gain of a Darlington pair is?",
      "options": ["β1 + β2", "β1 × β2", "β1 / β2", "β1 - β2"],
      "answerIndex": 1
    },
    {
      "question": "Darlington pair has very?",
      "options": ["Low input resistance", "High input resistance", "High output resistance", "None"],
      "answerIndex": 1
    },
    {
      "question": "Darlington pair is mainly used for?",
      "options": ["Impedance matching", "High current gain", "Power gain", "Frequency multiplication"],
      "answerIndex": 1
    },
    {
      "question": "One disadvantage of Darlington pair is?",
      "options": ["High input resistance", "Low output resistance", "High saturation voltage", "Low gain"],
      "answerIndex": 2
    },

    // --- More Mixed Questions to reach ~50 ---
    {
      "question": "The input characteristics of a transistor resemble?",
      "options": ["PN junction diode", "Rectifier", "Resistor", "Capacitor"],
      "answerIndex": 0
    },
    {
      "question": "In CE amplifier, phase shift between input and output is?",
      "options": ["0°", "90°", "180°", "360°"],
      "answerIndex": 2
    },
    {
      "question": "The operating region of transistor used as amplifier is?",
      "options": ["Cutoff", "Saturation", "Active", "Breakdown"],
      "answerIndex": 2
    },
    {
      "question": "Which configuration has highest input resistance?",
      "options": ["CB", "CE", "CC", "None"],
      "answerIndex": 2
    },
    {
      "question": "Which configuration has unity voltage gain?",
      "options": ["CB", "CE", "CC", "None"],
      "answerIndex": 2
    },
    //
    {
      "question": "A BJT is constructed using?",
      "options": ["Two diodes back-to-back", "Two PN junctions", "Four layers", "Three resistors"],
      "answerIndex": 1
    },
    {
      "question": "The three regions of BJT are?",
      "options": ["Emitter, Collector, Base", "Source, Drain, Gate", "Cathode, Anode, Grid", "Plate, Screen, Grid"],
      "answerIndex": 0
    },
    {
      "question": "The base region of BJT is?",
      "options": ["Thick and lightly doped", "Thin and lightly doped", "Thick and heavily doped", "Thin and heavily doped"],
      "answerIndex": 1
    },
    {
      "question": "Emitter is always?",
      "options": ["Lightly doped", "Moderately doped", "Heavily doped", "Undoped"],
      "answerIndex": 2
    },
    {
      "question": "Collector region is?",
      "options": ["Largest", "Smallest", "Equal to base", "Equal to emitter"],
      "answerIndex": 0
    },
    {
      "question": "BJT is a?",
      "options": ["Unipolar device", "Bipolar device", "Digital device", "Optical device"],
      "answerIndex": 1
    },
    {
      "question": "The majority carriers in NPN BJT emitter are?",
      "options": ["Electrons", "Holes", "Both", "None"],
      "answerIndex": 0
    },
    {
      "question": "In PNP transistor, current carriers are mainly?",
      "options": ["Electrons", "Holes", "Both", "None"],
      "answerIndex": 1
    },
    {
      "question": "Which layer controls the current in BJT?",
      "options": ["Emitter", "Base", "Collector", "All"],
      "answerIndex": 1
    },
    {
      "question": "BJT is also known as?",
      "options": ["Current controlled device", "Voltage controlled device", "Charge controlled", "None"],
      "answerIndex": 0
    },

    // ================= Operations (10) =================
    {
      "question": "When emitter-base junction is forward biased and collector-base is reverse biased, transistor is in?",
      "options": ["Cutoff", "Active", "Saturation", "Breakdown"],
      "answerIndex": 1
    },
    {
      "question": "When both junctions are forward biased, transistor is in?",
      "options": ["Cutoff", "Saturation", "Active", "Reverse active"],
      "answerIndex": 1
    },
    {
      "question": "When both junctions are reverse biased, transistor is in?",
      "options": ["Cutoff", "Saturation", "Active", "Breakdown"],
      "answerIndex": 0
    },
    {
      "question": "Which region is used for amplification?",
      "options": ["Cutoff", "Active", "Saturation", "Breakdown"],
      "answerIndex": 1
    },
    {
      "question": "In saturation region, VCE is?",
      "options": ["High", "Zero", "Very low", "Infinite"],
      "answerIndex": 2
    },
    {
      "question": "In cutoff region, IC is?",
      "options": ["High", "Zero", "Low leakage", "Negative"],
      "answerIndex": 2
    },
    {
      "question": "Reverse active mode is rarely used because?",
      "options": ["Low β", "High β", "High leakage", "High gain"],
      "answerIndex": 0
    },
    {
      "question": "Which region ensures linear amplification?",
      "options": ["Cutoff", "Saturation", "Active", "Breakdown"],
      "answerIndex": 2
    },
    {
      "question": "Collector-base junction is usually?",
      "options": ["Forward biased", "Reverse biased", "Zero biased", "None"],
      "answerIndex": 1
    },
    {
      "question": "Emitter-base junction must be?",
      "options": ["Reverse biased", "Forward biased", "Zero biased", "Open"],
      "answerIndex": 1
    },

    // ================= Common Base (10) =================
    {
      "question": "In common base configuration, input is applied between?",
      "options": ["Base and Collector", "Emitter and Base", "Collector and Emitter", "None"],
      "answerIndex": 1
    },
    {
      "question": "Common base has?",
      "options": ["High input resistance", "Low input resistance", "Medium input resistance", "Infinite resistance"],
      "answerIndex": 1
    },
    {
      "question": "The output resistance of common base is?",
      "options": ["Low", "High", "Medium", "Zero"],
      "answerIndex": 1
    },
    {
      "question": "Current gain in CB configuration is?",
      "options": ["α", "β", "γ", "1/β"],
      "answerIndex": 0
    },
    {
      "question": "CB configuration is used for?",
      "options": ["Voltage gain", "Current gain", "Impedance matching", "Switching"],
      "answerIndex": 0
    },
    {
      "question": "Phase shift between input and output in CB is?",
      "options": ["0°", "90°", "180°", "360°"],
      "answerIndex": 0
    },
    {
      "question": "CB configuration has?",
      "options": ["High β", "Low β", "Infinite β", "Negative β"],
      "answerIndex": 1
    },
    {
      "question": "Which is least commonly used configuration?",
      "options": ["CB", "CE", "CC", "All equal"],
      "answerIndex": 0
    },
    {
      "question": "Power gain of CB is?",
      "options": ["High", "Low", "Medium", "Zero"],
      "answerIndex": 2
    },
    {
      "question": "Input of CB is always?",
      "options": ["Emitter current", "Collector current", "Base current", "Leakage current"],
      "answerIndex": 0
    },
    // Common Base
    {
      "question": "In common base configuration, input is applied between?",
      "options": ["Base and emitter", "Emitter and base", "Emitter and collector", "Base and collector"],
      "answerIndex": 1
    },
    {
      "question": "Which parameter is most important in common base configuration?",
      "options": ["Input resistance", "Current gain (α)", "Output resistance", "Power gain"],
      "answerIndex": 1
    },
    {
      "question": "Common base amplifier provides?",
      "options": ["High input resistance", "Low input resistance", "Unity gain", "Negative resistance"],
      "answerIndex": 1
    },
    {
      "question": "Phase difference between input and output in common base amplifier is?",
      "options": ["0°", "90°", "180°", "270°"],
      "answerIndex": 0
    },
    {
      "question": "Typical current gain α in common base is?",
      "options": ["< 1", "= 1", "> 1", "Infinite"],
      "answerIndex": 0
    },
    {
      "question": "Common base configuration is mostly used for?",
      "options": ["Audio amplifiers", "Impedance matching", "Oscillators", "Digital switching"],
      "answerIndex": 1
    },
    {
      "question": "The voltage gain of common base amplifier is?",
      "options": ["Less than 1", "Around 1", "Greater than 1", "Always infinite"],
      "answerIndex": 2
    },
    {
      "question": "In common base configuration, output is taken across?",
      "options": ["Emitter and collector", "Base and emitter", "Collector and base", "Collector and emitter"],
      "answerIndex": 3
    },
    {
      "question": "Common base configuration has?",
      "options": ["High current gain", "Low current gain", "Moderate power gain", "Unity power gain"],
      "answerIndex": 1
    },
    {
      "question": "Which of the following is true for CB configuration?",
      "options": ["High input resistance", "Low output resistance", "Low input resistance", "Phase reversal"],
      "answerIndex": 2
    },
    // CEmitter
    {
      "question": "Common emitter configuration provides?",
      "options": ["High voltage gain", "Low current gain", "Unity power gain", "Negative resistance"],
      "answerIndex": 0
    },
    {
      "question": "Phase shift between input and output in CE amplifier is?",
      "options": ["0°", "90°", "180°", "270°"],
      "answerIndex": 2
    },
    {
      "question": "In CE configuration, input is applied between?",
      "options": ["Base and collector", "Base and emitter", "Emitter and collector", "Collector and base"],
      "answerIndex": 1
    },
    {
      "question": "CE amplifier is widely used because of?",
      "options": ["Low gain", "High gain", "Unity gain", "Zero gain"],
      "answerIndex": 1
    },
    {
      "question": "Current gain in CE configuration is represented by?",
      "options": ["α", "β", "γ", "h"],
      "answerIndex": 1
    },
    {
      "question": "Power gain in CE is?",
      "options": ["Lowest", "Highest", "Zero", "Unity"],
      "answerIndex": 1
    },
    {
      "question": "The input resistance of CE configuration is?",
      "options": ["Low", "High", "Very high", "Infinite"],
      "answerIndex": 0
    },
    {
      "question": "The output resistance of CE configuration is?",
      "options": ["Low", "High", "Infinite", "Zero"],
      "answerIndex": 1
    },
    {
      "question": "Common emitter is also called?",
      "options": ["Voltage buffer", "Current buffer", "Inverting amplifier", "Phase shifter"],
      "answerIndex": 2
    },
    {
      "question": "Which region of transistor is used for amplification in CE?",
      "options": ["Cutoff", "Saturation", "Active", "Breakdown"],
      "answerIndex": 2
    },
    // Common Collector
    {
      "question": "Common collector configuration is also called?",
      "options": ["Emitter follower", "Voltage follower", "Base follower", "Current follower"],
      "answerIndex": 0
    },
    {
      "question": "In CC configuration, voltage gain is approximately?",
      "options": ["Zero", "One", "Infinity", "Negative"],
      "answerIndex": 1
    },
    {
      "question": "CC configuration is mainly used for?",
      "options": ["Current gain", "Voltage gain", "Power gain", "Impedance matching"],
      "answerIndex": 3
    },
    {
      "question": "Phase shift between input and output in CC is?",
      "options": ["0°", "90°", "180°", "270°"],
      "answerIndex": 0
    },
    {
      "question": "The input resistance of CC configuration is?",
      "options": ["Low", "High", "Very low", "Zero"],
      "answerIndex": 1
    },
    {
      "question": "The output resistance of CC configuration is?",
      "options": ["Low", "High", "Infinite", "Zero"],
      "answerIndex": 0
    },
    {
      "question": "In CC configuration, input is applied between?",
      "options": ["Base and emitter", "Base and collector", "Emitter and collector", "Collector and base"],
      "answerIndex": 1
    },
    {
      "question": "In CC configuration, output is taken between?",
      "options": ["Collector and emitter", "Base and collector", "Base and emitter", "Collector and base"],
      "answerIndex": 0
    },
    {
      "question": "The current gain of CC is approximately?",
      "options": ["Less than 1", "Equal to 1", "More than 1", "Zero"],
      "answerIndex": 2
    },
    {
      "question": "CC amplifier is best suited for?",
      "options": ["Power amplification", "Impedance matching", "Voltage amplification", "Phase inversion"],
      "answerIndex": 1
    },
    // Specification
    {
      "question": "Which parameter defines maximum voltage across collector-emitter?",
      "options": ["V_BE", "V_CB", "V_CE", "V_BC"],
      "answerIndex": 2
    },
    {
      "question": "The maximum current a transistor can handle is?",
      "options": ["I_E", "I_B", "I_C", "β"],
      "answerIndex": 2
    },
    {
      "question": "The parameter h_FE refers to?",
      "options": ["Input resistance", "Output resistance", "DC current gain", "Power rating"],
      "answerIndex": 2
    },
    {
      "question": "Maximum power rating of a transistor depends on?",
      "options": ["Junction temperature", "Supply voltage", "Load resistance", "Bias current"],
      "answerIndex": 0
    },
    {
      "question": "The frequency at which transistor current gain becomes unity is called?",
      "options": ["Cutoff frequency", "Transition frequency", "Corner frequency", "Midband frequency"],
      "answerIndex": 1
    },
    {
      "question": "Transistor’s leakage current is measured between?",
      "options": ["Base-emitter", "Base-collector", "Collector-emitter", "Emitter-base"],
      "answerIndex": 2
    },
    {
      "question": "The thermal resistance of a transistor is expressed in?",
      "options": ["°C/W", "W/°C", "°C/V", "W/Ω"],
      "answerIndex": 0
    },
    {
      "question": "Safe operating area (SOA) defines?",
      "options": ["Voltage limits", "Current limits", "Power limits", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Which of the following is NOT a transistor specification?",
      "options": ["V_CE max", "I_C max", "β", "Capacitance rating"],
      "answerIndex": 3
    },
    {
      "question": "h_FE of a transistor decreases with?",
      "options": ["Increase in temperature", "Decrease in current", "Stable bias", "Cooling"],
      "answerIndex": 0
    },
    // Testing
    {
      "question": "Which instrument is most commonly used to test a transistor?",
      "options": ["Voltmeter", "Ammeter", "Ohmmeter", "Wattmeter"],
      "answerIndex": 2
    },
    {
      "question": "For a good NPN transistor, base-emitter junction behaves like?",
      "options": ["Forward diode", "Reverse diode", "Open circuit", "Short circuit"],
      "answerIndex": 0
    },
    {
      "question": "In a faulty transistor, which condition may occur?",
      "options": ["Open junction", "Shorted junction", "Leakage current increase", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "To test a transistor with a multimeter, we check?",
      "options": ["V_CE only", "I_C only", "Junction resistance", "Power gain"],
      "answerIndex": 2
    },
    {
      "question": "A base-emitter voltage drop for silicon transistor in forward bias is approximately?",
      "options": ["0.1 V", "0.3 V", "0.7 V", "1 V"],
      "answerIndex": 2
    },
    {
      "question": "A transistor tester can directly measure?",
      "options": ["Voltage gain", "h_FE", "Power gain", "Output resistance"],
      "answerIndex": 1
    },
    {
      "question": "If collector-emitter junction shows very low resistance both ways, transistor is?",
      "options": ["Good", "Shorted", "Open", "Normal"],
      "answerIndex": 1
    },
    {
      "question": "Which method checks transistor by replacing it in circuit?",
      "options": ["Static test", "Dynamic test", "Continuity test", "Diode test"],
      "answerIndex": 1
    },
    {
      "question": "A PNP transistor can be tested same as NPN but with?",
      "options": ["Opposite polarity", "Same polarity", "High voltage", "Low resistance"],
      "answerIndex": 0
    },
    {
      "question": "Which of the following indicates faulty transistor?",
      "options": ["h_FE = 100", "Base-emitter drop 0.7 V", "Open collector junction", "High β"],
      "answerIndex": 2
    },
    //Casing and terminal
    {
      "question": "TO-92 package is mostly used for?",
      "options": ["Power transistors", "Low-power transistors", "ICs", "Rectifiers"],
      "answerIndex": 1
    },
    {
      "question": "In TO-220 package, the metal tab is usually connected to?",
      "options": ["Emitter", "Base", "Collector", "Ground"],
      "answerIndex": 2
    },
    {
      "question": "In most transistor casing, the middle lead is?",
      "options": ["Emitter", "Collector", "Base", "Ground"],
      "answerIndex": 1
    },
    {
      "question": "TO-3 package is designed for?",
      "options": ["Small-signal transistors", "High-power transistors", "Digital ICs", "Op-amps"],
      "answerIndex": 1
    },
    {
      "question": "Heat sink is usually attached to?",
      "options": ["Emitter", "Collector", "Base", "All terminals"],
      "answerIndex": 1
    },
    {
      "question": "SMD transistors are usually in?",
      "options": ["TO-220", "TO-92", "SOT-23", "TO-3"],
      "answerIndex": 2
    },
    {
      "question": "Which lead in TO-92 casing is base?",
      "options": ["First", "Second", "Third", "Varies with manufacturer"],
      "answerIndex": 3
    },
    {
      "question": "Transistor casing helps in?",
      "options": ["Insulation", "Heat dissipation", "Protection", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "Marking codes on transistors identify?",
      "options": ["Polarity", "Pin configuration", "Part number", "Voltage rating"],
      "answerIndex": 2
    },
    {
      "question": "Power transistors are usually mounted on?",
      "options": ["PCB only", "Plastic cover", "Heat sink", "Socket"],
      "answerIndex": 2
    },
    // Darlington
    {
      "question": "A Darlington pair consists of?",
      "options": ["Two diodes", "Two transistors", "Two resistors", "Two capacitors"],
      "answerIndex": 1
    },
    {
      "question": "Darlington pair is used to provide?",
      "options": ["High voltage gain", "High current gain", "Low input resistance", "High frequency response"],
      "answerIndex": 1
    },
    {
      "question": "The input resistance of Darlington pair is?",
      "options": ["Very low", "Low", "High", "Infinite"],
      "answerIndex": 2
    },
    {
      "question": "The output resistance of Darlington pair is?",
      "options": ["Very high", "High", "Low", "Infinite"],
      "answerIndex": 2
    },
    {
      "question": "Typical current gain of Darlington pair is?",
      "options": ["< 10", "10–100", "100–1000", "> 1000"],
      "answerIndex": 3
    },
    {
      "question": "Darlington pair requires base-emitter voltage of?",
      "options": ["0.3 V", "0.7 V", "1.4 V", "2.8 V"],
      "answerIndex": 2
    },
    {
      "question": "Which is a drawback of Darlington pair?",
      "options": ["Low current gain", "High V_BE", "Low input resistance", "Low output current"],
      "answerIndex": 1
    },
    {
      "question": "Darlington pair is commonly used in?",
      "options": ["Power amplifiers", "Switching circuits", "Buffer stages", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "In Darlington pair, leakage current of first transistor is?",
      "options": ["Blocked", "Amplified", "Ignored", "Reduced"],
      "answerIndex": 1
    },
    {
      "question": "The configuration of Darlington pair is equivalent to?",
      "options": ["Single transistor with high β", "Two independent transistors", "MOSFET", "Thyristor"],
      "answerIndex": 0
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
        title: const Text("BJT Transistor",style: TextStyle(color: Colors.white)),
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
                    style: const TextStyle(fontSize: 17,
                        fontWeight: FontWeight.bold,color: Colors.blue),
                  ),
                  const SizedBox(height: 10),
                  ...(question["options"] as List<String>).asMap().entries.map(
                        (entry) {
                      int optIndex = entry.key;
                      String option = entry.value;
                      bool isSelected = selectedAnswers[qIndex] == optIndex;
                      bool isCorrect =
                          selectedAnswers[qIndex] == question["answerIndex"] &&
                              isSelected;
                      bool isWrong =
                          isSelected && selectedAnswers[qIndex] != question["answerIndex"];

                      return Card(
                        color: isCorrect
                            ? Colors.green[100]
                            : isWrong
                            ? Colors.red[100]
                            : null,
                        child: ListTile(
                          title: Text(option),
                          trailing: isCorrect
                              ? const Icon(Icons.check_circle, color: Colors.green)
                              : isWrong
                              ? const Icon(Icons.cancel, color: Colors.red)
                              : null,
                          onTap: () {
                            setState(() {
                              if (selectedAnswers[qIndex] != question["answerIndex"]) {
                                selectedAnswers[qIndex] = optIndex;
                              }
                            });
                          },
                        ),
                      );
                    },
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

import 'package:flutter/material.dart';

class DiodeApplicationsScreen extends StatefulWidget {
  const DiodeApplicationsScreen({super.key});

  @override
  State<DiodeApplicationsScreen> createState() => _DiodeApplicationsScreenState();
}

class _DiodeApplicationsScreenState extends State<DiodeApplicationsScreen> {
  final List<Map<String, dynamic>> questions =
  [
    {
      "question": "What does a diode’s load line represent on its characteristic curve?",
      "options": ["Static resistance", "Dynamic behavior under bias", "Operating point under circuit conditions", "Breakdown voltage"],
      "answerIndex": 2
    },
    {
      "question": "In the piecewise-linear approximation, a diode is modeled as?",
      "options": ["Pure short circuit", "Open circuit", "Ideal diode with threshold and resistance", "Current source"],
      "answerIndex": 2
    },
    {
      "question": "What is the forward voltage drop of a silicon diode approximately?",
      "options": ["0.1 V", "0.3 V", "0.7 V", "1.2 V"],
      "answerIndex": 2
    },
    {
      "question": "When diodes are connected in parallel, what is the main concern?",
      "options": ["Reverse recovery", "Current sharing", "Voltage rating", "Temperature rise only"],
      "answerIndex": 1
    },
    {
      "question": "When diodes are connected in series, what is the purpose?",
      "options": ["Increase current capacity", "Increase voltage rating", "Improve switching speed", "Reduce forward drop"],
      "answerIndex": 1
    },
    {
      "question": "How many diodes are required to make an AND gate using diode logic?",
      "options": ["1", "2 or more", "4", "Depends on voltage source"],
      "answerIndex": 1
    },
    {
      "question": "How many diodes are required to make an OR gate using diode logic?",
      "options": ["1", "2 or more", "4", "Depends on load resistance"],
      "answerIndex": 1
    },
    {
      "question": "What is the average DC output voltage of a half-wave rectifier with peak input Vm?",
      "options": ["Vm/π", "Vm/2", "2Vm/π", "Vm"],
      "answerIndex": 0
    },
    {
      "question": "What is the average DC output voltage of a full-wave rectifier with peak input Vm?",
      "options": ["Vm/π", "2Vm/π", "Vm/2", "Vm"],
      "answerIndex": 1
    },
    {
      "question": "What is the efficiency of an ideal half-wave rectifier?",
      "options": ["40.6%", "50%", "81.2%", "100%"],
      "answerIndex": 0
    },
    {
      "question": "What is the efficiency of an ideal full-wave rectifier?",
      "options": ["40.6%", "50%", "81.2%", "100%"],
      "answerIndex": 2
    },
    {
      "question": "What is the ripple factor of a half-wave rectifier?",
      "options": ["0.482", "0.707", "1.21", "1.414"],
      "answerIndex": 2
    },
    {
      "question": "What is the ripple factor of a full-wave rectifier?",
      "options": ["0.707", "0.482", "0.812", "1.21"],
      "answerIndex": 1
    },
    {
      "question": "What is the Peak Inverse Voltage (PIV) of a half-wave rectifier?",
      "options": ["Vm", "2Vm", "Vm/2", "None"],
      "answerIndex": 0
    },
    {
      "question": "What is the PIV of a full-wave rectifier using center-tapped transformer?",
      "options": ["Vm", "2Vm", "Vm/2", "None"],
      "answerIndex": 1
    },
    {
      "question": "What is the PIV across each diode in a bridge rectifier?",
      "options": ["Vm", "2Vm", "Vm/2", "None"],
      "answerIndex": 0
    },
    {
      "question": "How many diodes are required in a single-phase bridge rectifier?",
      "options": ["2", "3", "4", "6"],
      "answerIndex": 2
    },
    {
      "question": "Which diode configuration removes the negative half cycle of a sinusoidal input?",
      "options": ["Full-wave rectifier", "Half-wave rectifier", "Clamper", "Clipper"],
      "answerIndex": 1
    },
    {
      "question": "Which rectifier provides both halves of input at the output?",
      "options": ["Half-wave rectifier", "Full-wave rectifier", "Voltage doubler", "Clipper"],
      "answerIndex": 1
    },
    {
      "question": "What does a clipper circuit do?",
      "options": ["Amplifies", "Limits voltage to a level", "Shifts DC level", "Doubles voltage"],
      "answerIndex": 1
    },
    {
      "question": "What does a clamper circuit do?",
      "options": ["Clips voltage", "Shifts waveform up/down", "Regulates voltage", "Doubles frequency"],
      "answerIndex": 1
    },
    {
      "question": "Which diode circuit can shift an AC waveform to always remain positive?",
      "options": ["Clipper", "Clamper", "Rectifier", "Voltage regulator"],
      "answerIndex": 1
    },
    {
      "question": "A voltage doubler circuit produces an output of?",
      "options": ["Half of input", "Same as input", "Twice the input peak", "Square wave"],
      "answerIndex": 2
    },
    {
      "question": "Which diode configuration can triple the input peak voltage?",
      "options": ["Voltage doubler", "Voltage tripler", "Voltage regulator", "Clamper"],
      "answerIndex": 1
    },
    {
      "question": "Which diode multiplier is commonly used in CRT TV sets for high-voltage generation?",
      "options": ["Doubler", "Tripler", "Quadrupler", "Voltage divider"],
      "answerIndex": 2
    },
    {
      "question": "What is the main limitation of a diode logic gate?",
      "options": ["Power dissipation", "Lack of amplification", "Cannot provide inversion", "All of these"],
      "answerIndex": 3
    },
    {
      "question": "What is the frequency of the output ripple in a full-wave rectifier with 50 Hz input?",
      "options": ["25 Hz", "50 Hz", "100 Hz", "200 Hz"],
      "answerIndex": 2
    },
    {
      "question": "What is the frequency of the output ripple in a half-wave rectifier with 50 Hz input?",
      "options": ["25 Hz", "50 Hz", "100 Hz", "200 Hz"],
      "answerIndex": 1
    },
    {
      "question": "What is the main function of a filter capacitor in rectifiers?",
      "options": ["Increase ripple", "Smooth DC output", "Decrease frequency", "Boost voltage"],
      "answerIndex": 1
    },
    {
      "question": "What type of diode is preferred in high-frequency rectifiers?",
      "options": ["Schottky diode", "PN junction diode", "Zener diode", "LED"],
      "answerIndex": 0
    },
    {
      "question": "Which diode is used as a voltage regulator?",
      "options": ["LED", "Tunnel diode", "Zener diode", "Schottky diode"],
      "answerIndex": 2
    },
    {
      "question": "Which region of a Zener diode is used for voltage regulation?",
      "options": ["Forward active", "Cutoff", "Breakdown region", "Saturation"],
      "answerIndex": 2
    },
    {
      "question": "In diode series-parallel networks, what is critical for accuracy?",
      "options": ["Equal resistance", "Power dissipation", "Forward voltage drop consistency", "High capacitance"],
      "answerIndex": 2
    },
    {
      "question": "Which diode is used in microwave oscillators?",
      "options": ["Tunnel diode", "Zener diode", "PIN diode", "Schottky diode"],
      "answerIndex": 0
    },
    {
      "question": "What is the output of a half-wave rectifier if input is sinusoidal with Vm = 10V?",
      "options": ["3.18 V DC", "5 V DC", "6.36 V DC", "10 V DC"],
      "answerIndex": 0
    },
    {
      "question": "What is the output of a full-wave rectifier if input is sinusoidal with Vm = 10V?",
      "options": ["3.18 V DC", "5 V DC", "6.36 V DC", "10 V DC"],
      "answerIndex": 2
    },
    {
      "question": "What is the form factor of a half-wave rectifier output?",
      "options": ["1.11", "1.21", "1.57", "2.0"],
      "answerIndex": 2
    },
    {
      "question": "What is the form factor of a full-wave rectifier output?",
      "options": ["1.11", "1.21", "1.57", "2.0"],
      "answerIndex": 1
    },
    {
      "question": "Why is a Schottky diode used in switching regulators?",
      "options": ["Low forward voltage drop", "High breakdown voltage", "Large capacitance", "Very high resistance"],
      "answerIndex": 0
    },
    {
      "question": "What is the main use of a PIN diode?",
      "options": ["Rectification", "Attenuation and RF switching", "Logic gate", "Voltage regulation"],
      "answerIndex": 1
    },
    {
      "question": "Which diode operates on the principle of tunneling?",
      "options": ["Zener", "Tunnel", "PIN", "LED"],
      "answerIndex": 1
    },
    {
      "question": "Which diode emits light when forward biased?",
      "options": ["Zener", "LED", "Schottky", "Tunnel"],
      "answerIndex": 1
    },
    {
      "question": "What limits the reverse current in a diode under reverse bias?",
      "options": ["Junction capacitance", "Breakdown region", "Minority carriers", "Doping gradient"],
      "answerIndex": 2
    },
    {
      "question": "Which rectifier requires a center-tapped transformer?",
      "options": ["Half-wave", "Full-wave (2-diode)", "Bridge", "Voltage doubler"],
      "answerIndex": 1
    },
    {
      "question": "Which rectifier does not require a center-tapped transformer?",
      "options": ["Half-wave", "Bridge rectifier", "Full-wave (2-diode)", "Voltage tripler"],
      "answerIndex": 1
    },
    {
      "question": "What is the purpose of bleeder resistance in a filter?",
      "options": ["Increase voltage", "Reduce ripple", "Discharge capacitor", "Control frequency"],
      "answerIndex": 2
    },
    {
      "question": "What happens to diode current when temperature rises?",
      "options": ["Decreases", "Increases", "Remains same", "Becomes zero"],
      "answerIndex": 1
    },
    {
      "question": "What is the reverse recovery time of a diode?",
      "options": ["Time to conduct forward current", "Time to block reverse current", "Time to switch from conduction to blocking", "Lifetime of diode"],
      "answerIndex": 2
    },
    {
      "question": "Which diode has negative resistance region?",
      "options": ["Zener", "LED", "Tunnel diode", "PIN"],
      "answerIndex": 2
    },
    {
      "question": "Which diode is widely used in RF detection?",
      "options": ["Schottky", "Tunnel", "Zener", "LED"],
      "answerIndex": 0
    },
    {
      "question": "In a clamper, the capacitor value should be?",
      "options": ["Very high", "Very low", "Matched to load", "Matched to supply"],
      "answerIndex": 0
    },
    {
      "question": "Which filter gives better smoothing in rectifiers?",
      "options": ["Shunt capacitor", "Series inductor", "LC filter", "All of these depending on load"],
      "answerIndex": 3
    },
    {
      "question": "What is the disadvantage of a half-wave rectifier?",
      "options": ["High efficiency", "High ripple", "Low PIV", "Low cost"],
      "answerIndex": 1
    },
    {
      "question": "Why is a full-wave rectifier preferred over half-wave?",
      "options": ["More ripple", "Higher efficiency", "Lower cost", "Simple design"],
      "answerIndex": 1
    },
    {
      "question": "Which diode parameter defines its speed of operation?",
      "options": ["Reverse recovery time", "Forward voltage drop", "Breakdown voltage", "Capacitance"],
      "answerIndex": 0
    },
    {
      "question": "What is the typical breakdown voltage range of a Zener diode?",
      "options": ["0.1–0.3 V", "0.7–1 V", "2–200 V", "500–1000 V"],
      "answerIndex": 2
    },
    {
      "question": "Which diode is used for voltage clamping in high-speed digital circuits?",
      "options": ["LED", "Schottky diode", "PIN diode", "Zener diode"],
      "answerIndex": 1
    },
    {
      "question": "What is the output waveform of a half-wave rectifier?",
      "options": ["Pure DC", "Pulsating DC", "Square wave", "Sawtooth"],
      "answerIndex": 1
    },
    {
      "question": "What is the output waveform of a full-wave rectifier?",
      "options": ["Pure DC", "Pulsating DC with doubled frequency", "Triangular wave", "Square wave"],
      "answerIndex": 1
    },
    {
      "question": "What happens if filter capacitor value is too large in rectifiers?",
      "options": ["Ripple increases", "Current surge at switch on", "Voltage decreases", "Frequency increases"],
      "answerIndex": 1
    },
    {
      "question": "What is the purpose of a clamper diode polarity?",
      "options": ["Determines clip level", "Determines shift direction", "Controls efficiency", "Sets frequency"],
      "answerIndex": 1
    },
    {
      "question": "Which diode circuit can act as a voltage shifter?",
      "options": ["Clamper", "Clipper", "Multiplier", "Rectifier"],
      "answerIndex": 0
    },
    {
      "question": "Which is the main factor limiting diode current rating?",
      "options": ["Size of diode", "Heat dissipation", "Reverse bias", "Capacitance"],
      "answerIndex": 1
    },
    {
      "question": "What happens to diode forward resistance when current increases?",
      "options": ["Increases", "Decreases", "Remains same", "Becomes infinite"],
      "answerIndex": 1
    },
    {
      "question": "Which type of rectifier requires 4 diodes and no center tap?",
      "options": ["Half-wave", "Bridge rectifier", "Voltage doubler", "Voltage tripler"],
      "answerIndex": 1
    },
    {
      "question": "Which rectifier output is closest to pure DC with filter?",
      "options": ["Half-wave", "Full-wave bridge", "Voltage doubler", "None"],
      "answerIndex": 1
    },
    {
      "question": "What is the efficiency of an ideal bridge rectifier?",
      "options": ["40.6%", "50%", "81.2%", "100%"],
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
        title: const Text("Diode Applications",style: TextStyle(color: Colors.white),),
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
                    style: const TextStyle(color: Colors.blue,fontSize: 17, fontWeight: FontWeight.bold),
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

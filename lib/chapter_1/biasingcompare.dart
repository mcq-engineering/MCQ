import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BJTBiasingScreen1 extends StatelessWidget {
  const BJTBiasingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> biasingData = [
      {
        "title": "Fixed Bias",
        "icon": FontAwesomeIcons.bolt,
        "description":
        "In fixed bias, a resistor (RB) connects the base to supply (VCC). It is simple but thermally unstable.",
        "advantages": ["Simple to design", "Requires few components"],
        "disadvantages": [
          "Very poor thermal stability",
          "Collector current depends on β"
        ],
        "applications": [
          "Switching circuits",
          "Basic BJT demonstration"
        ],
        "equations": [
          "IB = (VCC - VBE) / RB",
          "IC = β × IB",
          "VCE = VCC - IC × RC"
        ],
      },
      {
        "title": "Collector-to-Base Bias",
        "icon": FontAwesomeIcons.plugCircleBolt,
        "description":
        "Here, the base resistor connects to the collector instead of VCC to provide feedback and improve stability.",
        "advantages": [
          "Better stability than fixed bias",
          "Reduces β dependency"
        ],
        "disadvantages": [
          "Voltage gain is lower",
          "Not ideal for high-precision amplifiers"
        ],
        "applications": [
          "Low-gain amplifiers",
          "Bias stabilization circuits"
        ],
        "equations": [
          "IB = (VCC - VBE) / (RB + (β + 1) × RE)",
          "IC = β × IB",
          "VCE = VCC - IC × RC - IE × RE"
        ],
      },
      {
        "title": "Voltage Divider Bias",
        "icon": FontAwesomeIcons.batteryFull,
        "description":
        "It uses two resistors (R1, R2) as a voltage divider to set a stable base voltage, making it the most reliable biasing method.",
        "advantages": [
          "Excellent stability against temperature",
          "Independent of transistor β"
        ],
        "disadvantages": [
          "Requires more components",
          "Complex design analysis"
        ],
        "applications": [
          "Widely used in amplifiers",
          "General-purpose BJT circuits"
        ],
        "equations": [
          "VB = (R2 / (R1 + R2)) × VCC",
          "VE = VB - VBE",
          "IE ≈ IC = VE / RE",
          "VCE = VCC - IC × (RC + RE)"
        ],
      },
      {
        "title": "Emitter Bias (Self Bias)",
        "icon": FontAwesomeIcons.barsStaggered,
        "description":
        "An emitter resistor provides negative feedback, improving stability and minimizing β effects.",
        "advantages": [
          "Good thermal stability",
          "Reduces β variation effect"
        ],
        "disadvantages": [
          "Reduced gain due to RE",
          "Requires bypass capacitor for AC signals"
        ],
        "applications": [
          "Common-emitter amplifiers",
          "Low distortion amplifiers"
        ],
        "equations": [
          "VE = RE × IE",
          "IB = (VCC - VBE - VE) / RB",
          "VCE = VCC - IC × RC - VE"
        ],
      },
      {
        "title": "Feedback Bias",
        "icon": FontAwesomeIcons.waveSquare,
        "description":
        "Combines collector feedback with a voltage divider to provide automatic bias correction.",
        "advantages": [
          "Excellent stability",
          "Automatic bias correction"
        ],
        "disadvantages": [
          "Complex circuit design",
          "Reduced voltage swing"
        ],
        "applications": [
          "High-stability amplifier circuits",
          "Precision electronic stages"
        ],
        "equations": [
          "IB = (VCC - VBE - IC × RC) / RB",
          "IC = β × IB",
          "VCE = VCC - IC × (RC + RE)"
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: const Text("BJT Biasing Summary"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
       // elevation: 6,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: biasingData.length,
        itemBuilder: (context, index) {
          final bias = biasingData[index];
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.95),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FaIcon(bias["icon"], color: Colors.deepOrange, size: 28),
                      const SizedBox(width: 10),
                      Text(
                        bias["title"],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 20, thickness: 1),
                  Text(
                    bias["description"],
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  const SizedBox(height: 8),
                  _buildSection("Equations", bias["equations"], isEquation: true),
                  _buildSection("Advantages", bias["advantages"]),
                  _buildSection("Disadvantages", bias["disadvantages"]),
                  _buildSection("Applications", bias["applications"]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSection(String title, List<String> items,
      {bool isEquation = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          ...items.map(
                (item) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(isEquation ? "→ " : "• ",
                    style: const TextStyle(color: Colors.black54, fontSize: 16)),
                Expanded(
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: isEquation ? 15 : 15,
                      fontFamily: isEquation ? 'monospace' : null,
                      color: isEquation ? Colors.deepPurple : Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

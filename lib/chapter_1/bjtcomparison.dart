import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BJTComparisonScreen extends StatelessWidget {
  const BJTComparisonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> bjtData = [
      {
        "configuration": "Common Base (CB)",
        "icon": FontAwesomeIcons.arrowUpFromBracket,
        "input": {
          "signal_applied_between": "Emitter and Base",
          "resistance": "Low"
        },
        "output": {
          "signal_taken_between": "Collector and Base",
          "resistance": "High"
        },
        "current_gain": "α (Alpha) ≈ 0.95 to 0.99",
        "voltage_gain": "High",
        "phase_relation": "Input and output in phase",
        "application": "Used for high-frequency applications",
        "remarks": "Low input resistance, high voltage gain, no phase inversion"
      },
      {
        "configuration": "Common Emitter (CE)",
        "icon": FontAwesomeIcons.microchip,
        "input": {
          "signal_applied_between": "Base and Emitter",
          "resistance": "Medium"
        },
        "output": {
          "signal_taken_between": "Collector and Emitter",
          "resistance": "Medium to High"
        },
        "current_gain": "β (Beta) = 20 to 500",
        "voltage_gain": "High",
        "phase_relation": "Output 180° out of phase with input",
        "application": "Most widely used amplifier configuration",
        "remarks": "Provides both voltage and current amplification, moderate input/output resistances"
      },
      {
        "configuration": "Common Collector (CC)",
        "icon": FontAwesomeIcons.plug,
        "input": {
          "signal_applied_between": "Base and Collector",
          "resistance": "High"
        },
        "output": {
          "signal_taken_between": "Emitter and Collector",
          "resistance": "Low"
        },
        "current_gain": "High, ≈ (1 + β)",
        "voltage_gain": "≈ 1 (Unity)",
        "phase_relation": "Input and output in phase",
        "application": "Used for impedance matching (buffer amplifier)",
        "remarks": "High input and low output resistance, no voltage gain"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("BJT Configuration Comparison"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        elevation: 6,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: bjtData.length,
          itemBuilder: (context, index) {
            final config = bjtData[index];
            return AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(config["icon"], color: Colors.deepPurple, size: 28),
                        const SizedBox(width: 10),
                        Text(
                          config["configuration"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20, thickness: 1),
                    _buildRow("Input Between", config["input"]["signal_applied_between"]),
                    _buildRow("Input Resistance", config["input"]["resistance"]),
                    _buildRow("Output Between", config["output"]["signal_taken_between"]),
                    _buildRow("Output Resistance", config["output"]["resistance"]),
                    _buildRow("Current Gain", config["current_gain"]),
                    _buildRow("Voltage Gain", config["voltage_gain"]),
                    _buildRow("Phase Relation", config["phase_relation"]),
                    _buildRow("Application", config["application"]),
                    _buildRow("Remarks", config["remarks"]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "$title:",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

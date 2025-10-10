import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final List<String> options;
  final int correctOptionIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOptionIndex,
  });
}
class MCQScreen extends StatefulWidget {
  @override
  _MCQScreenState createState() => _MCQScreenState();
}

class _MCQScreenState extends State<MCQScreen> {
  List<Question> questions = [
    Question(
      questionText: 'What is the unit of resistance?',
      options: ['Ohm', 'Volt', 'Ampere', 'Watt'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What type of diode allows current in one direction?',
      options: ['PN junction diode', 'LED', 'Photodiode', 'Zener diode'],
      correctOptionIndex: 0,
    ),
    // Add more questions below (total 20)
    Question(
      questionText: 'Which component stores charge?',
      options: ['Resistor', 'Capacitor', 'Inductor', 'Transformer'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'What is the function of a transistor?',
      options: ['Amplify signals', 'Rectify AC', 'Store data', 'Filter noise'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which device converts AC to DC?',
      options: ['Transformer', 'Rectifier', 'Oscillator', 'Amplifier'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'The main function of an op-amp?',
      options: ['Filtering', 'Amplification', 'Rectification', 'Oscillation'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'What is the unit of capacitance?',
      options: ['Farad', 'Henry', 'Ohm', 'Watt'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which device is used for voltage regulation?',
      options: ['Zener diode', 'LED', 'Transistor', 'Capacitor'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the primary function of a resistor?',
      options: ['Store energy', 'Limit current', 'Amplify signals', 'Rectify voltage'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'In digital electronics, a logic AND gate outputs?',
      options: ['High', 'Low', 'Depends', 'Zero'],
      correctOptionIndex: 0,
    ),
    // Add more questions to reach total 20
    Question(
      questionText: 'Which component acts as an inductor?',
      options: ['Coil', 'Capacitor', 'Resistor', 'Diode'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the symbol for a battery?',
      options: ['?', '!', '@', '⎓'],
      correctOptionIndex: 3,
    ),
    Question(
      questionText: 'Which device is used to store digital data?',
      options: ['Capacitor', 'Flip-Flop', 'Resistor', 'Transistor'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'The basic logic level for digital high?',
      options: ['0V', '5V', '0V or 5V', 'Depends'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'Which semiconductor material is commonly used?',
      options: ['Germanium', 'Silicon', 'Gallium arsenide', 'All of the above'],
      correctOptionIndex: 3,
    ),
    Question(
      questionText: 'What is the main purpose of a transistor?',
      options: ['Amplification', 'Rectification', 'Filtering', 'Oscillation'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In electronics, what does LED stand for?',
      options: ['Light Emitting Diode', 'Light Energy Device', 'Low Energy Diode', 'Light Emitting Device'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which of these is a passive component?',
      options: ['Resistor', 'Transistor', 'Op-Amp', 'Diode'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the main function of a capacitor in a circuit?',
      options: ['Store energy', 'Limit current', 'Amps', 'Rectify voltage'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the primary function of a transistor?',
      options: ['Amplification', 'Rectification', 'Filtering', 'Oscillation'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which device is used to convert AC to DC?',
      options: ['Transformer', 'Diode', 'Capacitor', 'Inductor'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'What is the symbol for a resistor in circuit diagrams?',
      options: ['Zigzag line', 'Arrow', 'Rectangle', 'Circle'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which of the following materials is commonly used as a semiconductor?',
      options: ['Copper', 'Silicon', 'Aluminum', 'Gold'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'What does an LED stand for?',
      options: ['Light Emitting Diode', 'Light Energy Diode', 'Low Energy Diode', 'Light Emitter Device'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which component stores energy in a magnetic field?',
      options: ['Capacitor', 'Resistor', 'Inductor', 'Diode'],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: 'What is the main purpose of a transformer?',
      options: ['To change voltage levels', 'To rectify signals', 'To filter signals', 'To amplify signals'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which type of diode is used to regulate voltage?',
      options: ['Zener diode', 'LED', 'Photodiode', 'Schottky diode'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the unit of capacitance?',
      options: ['Ohm', 'Farad', 'Henry', 'Watt'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'Which of the following is an active component?',
      options: ['Resistor', 'Transistor', 'Capacitor', 'Inductor'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'The function of a rectifier circuit is to:',
      options: ['Convert AC to DC', 'Convert DC to AC', 'Filter noise', 'Amplify signals'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which instrument is used to measure current?',
      options: ['Voltmeter', 'Ammeter', 'Ohmmeter', 'Multimeter'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'What is the purpose of a potentiometer?',
      options: ['To vary resistance', 'To amplify signals', 'To store charge', 'To convert AC to DC'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which component is used to smooth out fluctuations in power supply?',
      options: ['Resistor', 'Capacitor', 'Inductor', 'Diode'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'In digital circuits, what does a logic "AND" gate do?',
      options: ['Outputs high only if all inputs are high', 'Outputs high if any input is high', 'Outputs low if any input is high', 'Outputs high only if all inputs are low'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which device is used as a voltage regulator?',
      options: ['Zener diode', 'LED', 'Transformer', 'Resistor'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the typical function of a relay?',
      options: ['To switch circuits on and off', 'To amplify signals', 'To store energy', 'To convert AC to DC'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which component is used to convert a signal from analog to digital?',
      options: ['ADC (Analog-to-Digital Converter)', 'DAC (Digital-to-Analog Converter)', 'Amplifier', 'Oscillator'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which type of transistor is controlled by voltage?',
      options: ['BJT (Bipolar Junction Transistor)', 'FET (Field Effect Transistor)', 'SCR (Silicon Controlled Rectifier)', 'Diode'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'The main purpose of a fuse in an electrical circuit is to:',
      options: ['Protect against overcurrent', 'Step down voltage', 'Filter noise', 'Store energy'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the main purpose of a rectifier circuit?',
      options: ['Convert AC to DC', 'Convert DC to AC', 'Filter signals', 'Amplify signals'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which of the following is used in a half-wave rectifier?',
      options: ['Single diode', 'Bridge of four diodes', 'Transformer', 'Capacitor'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a full-wave rectifier, how many diodes are used in a center-tapped configuration?',
      options: ['Two', 'Four', 'One', 'Three'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the main advantage of a full-wave rectifier over a half-wave rectifier?',
      options: ['Higher average output voltage', 'Lower power consumption', 'Less complex circuit', 'Lower ripple'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which diode arrangement is used in a bridge rectifier?',
      options: ['Four diodes in bridge configuration', 'Two diodes with center tap', 'Single diode', 'Two diodes in series'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the main advantage of a bridge rectifier compared to a half-wave rectifier?',
      options: ['Full-wave operation', 'Less diode voltage drop', 'Simpler circuit', 'Lower cost'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a bridge rectifier, the output voltage is approximately equal to:',
      options: ['Peak input voltage minus diode drops', 'Half of the input voltage', 'Double the input voltage', 'Zero'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Which component is essential for converting AC to DC in a rectifier circuit?',
      options: ['Diode', 'Resistor', 'Capacitor', 'Inductor'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'What is the primary disadvantage of a half-wave rectifier?',
      options: ['High ripple', 'Low efficiency', 'Limited output voltage', 'All of the above'],
      correctOptionIndex: 3,
    ),
    Question(
      questionText: 'Which type of rectifier produces a smoother DC output?',
      options: ['Full-wave rectifier', 'Half-wave rectifier', 'Both produce the same', 'None of the above'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A single-phase full-wave rectifier supplies a peak voltage of 20V. What is the approximate peak output voltage after diode drops (assuming 2 diode drops of 0.7V each)?',
      options: ['19.4V', '20V', '18.6V', '21.4V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a bridge rectifier, if the peak input voltage is 25V, what is the approximate peak output voltage across the load (considering two diode drops of 0.7V each)?',
      options: ['23.6V', '24.6V', '25V', '22.6V'],
      correctOptionIndex: 0,
    ),
    Question(
        questionText: 'A half-wave rectifier supplies an average load voltage of 10V. If the peak voltage of the input AC is 15V, what is the diode forward voltage drop?',
        options: ['5V', '2V', '3V','Not applicable'],
        correctOptionIndex: 3, // For numerical, you might want to explain or adjust formatting
    ),
    Question(
      questionText: 'Calculate the ripple factor for a half-wave rectifier if the DC output voltage is 15V and the RMS output voltage is 22V.',
      options: ['0.33', '0.5', '0.67', '1.0'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A full-wave rectifier delivers an RMS voltage of 14V. What is the approximate DC output voltage?',
      options: ['12.5V', '14V', '10V', '16V'],
      correctOptionIndex: 0, // Adjust according to your format
    ),
    Question(
      questionText: 'A single-phase full-wave rectifier has a peak input voltage of 30V. What is the approximate peak output voltage across the load, considering two diode drops of 0.7V each?',
      options: ['28.6V', '29.3V', '30V', '27V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'If the RMS value of the output voltage of a half-wave rectifier is 10V, what is its approximate peak voltage?',
      options: ['14.14V', '10V', '7.07V', '20V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A bridge rectifier receives an AC input of 24V RMS. What is the approximate peak voltage after diode drops?',
      options: ['23.3V', '24V', '22.6V', '25V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Calculate the average output voltage of a half-wave rectifier supplied with an AC voltage of 20V RMS.',
      options: ['12.57V', '20V', '14.14V', '10V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a full-wave rectifier, the RMS output voltage is 16V. What is the approximate DC output voltage?',
      options: ['11.3V', '16V', '22.6V', '8V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'The peak voltage of an AC source is 40V. What is the approximate peak voltage after passing through a bridge rectifier with two diode drops of 0.7V each?',
      options: ['38.6V', '40V', '39.3V', '37V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'If the RMS value of the output of a half-wave rectifier is 15V, what is the approximate peak voltage?',
      options: ['21.2V', '15V', '10.6V', '30V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A full-wave rectifier has a ripple factor of approximately 0.48. What is its form factor?',
      options: ['1.21', '1.41', '1.73', '1.11'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: 'The average output voltage of a half-wave rectifier fed with 120V AC (RMS) is approximately?',
      options: ['71V', '85V', '120V', '60V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a bridge rectifier, if the peak input voltage is 50V, what is the approximate peak output voltage considering diode drops?',
      options: ['49.3V', '50V', '48.6V', '47V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A rectifier circuit has an RMS output voltage of 12V. What is the approximate peak voltage?',
      options: ['16.97V', '12V', '8.49V', '24V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'For a half-wave rectifier with a peak voltage of 25V, what is the approximate average output voltage?',
      options: ['15.7V', '25V', '17.7V', '12.5V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'The ripple factor for a full-wave rectifier is approximately?',
      options: ['0.48', '0.69', '0.37', '0.12'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'If the RMS voltage of the output of a full-wave rectifier is 14V, what is the approximate peak voltage?',
      options: ['19.8V', '14V', '9.9V', '28V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A bridge rectifier with a peak input voltage of 60V produces a peak output voltage of approximately?',
      options: ['59.3V', '60V', '58.6V', '57V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'The RMS output voltage of a half-wave rectifier is 8V. What is the approximate peak output voltage?',
      options: ['11.3V', '8V', '5.7V', '16V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'Calculate the average output voltage for a full-wave rectifier with a peak voltage of 35V, considering diode drops of 0.7V each.',
      options: ['34.6V', '35V', '33.6V', '32V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'If the ripple factor of a rectifier circuit is 0.5, what is its approximate form factor?',
      options: ['1.41', '1.73', '1.11', '1.21'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'The peak voltage of a rectifier circuit is 45V. After considering diode drops of 0.7V each in a bridge rectifier, the approximate peak output voltage is?',
      options: ['44.6V', '45V', '43.6V', '42V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'A rectifier circuit has an average output voltage of 18V with an input RMS of 25V. What is the approximate peak voltage?',
      options: ['35.4V', '25V', '17.7V', '50V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'In a full-wave rectifier, if the RMS output voltage is 10V, what is the approximate peak voltage?',
      options: ['14.14V', '10V', '7.07V', '20V'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: 'For a rectifier with a peak voltage of 50V, what is the approximate average output voltage in a half-wave configuration?',
      options: ['31.4V', '50V', '35.4V', '25V'],
      correctOptionIndex: 0,
    ),
  ];


// Initialize tracking lists based on the questions list length
  late List<int?> selectedOptions = List.filled(questions.length, null);
  late List<bool?> answerCorrectness = List.filled(questions.length, null);

// Total questions
  late int totalQuestions = questions.length;

// User's total score
  int score = 0;

  void checkAnswer(int questionIndex, int selectedOption) {
    setState(() {
      // Only process if the question is not already answered correctly
      if (answerCorrectness[questionIndex] != true) {
        selectedOptions[questionIndex] = selectedOption;
        if (selectedOption == questions[questionIndex].correctOptionIndex) {
          answerCorrectness[questionIndex] = true;
          score++;
        } else {
          // Mark as incorrect but allow re-selection
          answerCorrectness[questionIndex] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to Electronics',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: questions.asMap().entries.map((entry) {
            int index = entry.key;
            Question question = entry.value;
            return Card(
              color: Colors.grey[200],
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Q${index + 1}: ${question.questionText}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Column(
                      children: question.options.asMap().entries.map((optionEntry) {
                        int optionIndex = optionEntry.key;
                        String optionText = optionEntry.value;
                        bool isSelected = selectedOptions[index] == optionIndex;
                        bool? isCorrect = answerCorrectness[index];

                        Widget icon = SizedBox.shrink();

                        if (isSelected && isCorrect != null) {
                          icon = Icon(
                            isCorrect ? Icons.check_circle : Icons.cancel,
                            color: isCorrect ? Colors.green : Colors.red,
                          );
                        }

                        return ListTile(
                          leading: isSelected
                              ? icon
                              : SizedBox(width: 24), // space for icon
                          title: Text(optionText),
                          tileColor: isSelected
                              ? Colors.grey.shade200
                              : null,
                          onTap: () {
                            // Allow re-selection only if not answered correctly
                            if (answerCorrectness[index] != true) {
                              checkAnswer(index, optionIndex);
                            }
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          onPressed: () {
            // Show total score
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Quiz Completed'),
                content: Text('Your score: $score / ${questions.length}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Reset quiz
                      setState(() {
                        selectedOptions = List.filled(questions.length, null);
                        answerCorrectness = List.filled(questions.length, null);
                        score = 0;
                      });
                    },
                    child: Text('Restart'),
                  ),
                ],
              ),
            );
          },
          child: Text('Show Score & Restart'),
        ),
      ),
    );
  }
}
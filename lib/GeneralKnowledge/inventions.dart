import 'package:flutter/material.dart';
import 'dart:convert';

class inventions extends StatefulWidget {
  const inventions({super.key});

  @override
  State<inventions> createState() => _inventionsState();
}

class _inventionsState extends State<inventions> {
  final String jsonData = '''
[
  {"question": "Who invented the motorcycle?", "answer": "Gottlieb Daimler and Wilhelm Maybach in 1885 (Daimler Reitwagen, Germany)."},
  {"question": "Who invented the cell phone?", "answer": "Martin Cooper in 1973 at Motorola, USA (first portable handheld mobile phone)."},
  {"question": "Who was J. Brandenberger?", "answer": "Jacques Edwin Brandenberger, Swiss chemist, invented cellophane in 1908."},
  {"question": "Who discovered radium?", "answer": "Marie Curie and Pierre Curie in 1898 (from pitchblende, France)."},
  {"question": "Who discovered penicillin?", "answer": "Alexander Fleming in 1928 (mold Penicillium notatum, first true antibiotic)."},
  {"question": "Who developed the hydrogen bomb?", "answer": "Edward Teller and Stanislaw Ulam (Teller–Ulam design) in the early 1950s, first test in 1952 (USA)."},
  {"question": "Who invented the neutron bomb?", "answer": "Samuel T. Cohen, American physicist, in the 1950s."},
  {"question": "Who invented the microprocessor?", "answer": "Ted Hoff, Federico Faggin, and Stanley Mazor at Intel in 1971 (Intel 4004)."},
  {"question": "Who was Robert Noyce?", "answer": "American physicist and inventor, co-inventor of the integrated circuit in 1959, co-founder of Intel."},
  {"question": "Who invented the jet engine?", "answer": "Sir Frank Whittle (UK) in 1930s and Hans von Ohain (Germany) in 1936; first practical flights in 1939–1941."},
  {"question": "What is the blood group of a man?", "answer": "Depends on antigens: A, B, AB, or O, with Rh factor (+/-)."},
  {"question": "Who discovered blood groups?", "answer": "Karl Landsteiner in 1901 (ABO system); later discovered Rh factor in 1940."},
  {"question": "Who invented the barometer, telescope, aeroplane, helicopter, and bicycle?", "answer": "Barometer: Evangelista Torricelli (1643), Telescope: Hans Lippershey (1608), Aeroplane: Wright brothers (1903), Helicopter: Igor Sikorsky (1939), Bicycle: Karl von Drais (1817)."},
  {"question": "Who discovered radioactivity?", "answer": "Henri Becquerel in 1896 (spontaneous emission from uranium salts)."},
  {"question": "Who invented the mercury thermometer?", "answer": "Daniel Gabriel Fahrenheit in 1714 (also created Fahrenheit temperature scale)."},
  {"question": "Who invented the friction match?", "answer": "John Walker in 1826 (first practical friction matches)."},
  {"question": "Who devised the Celsius scale?", "answer": "Anders Celsius in 1742 (temperature scale with 0°C = freezing, 100°C = boiling of water)."},
  {"question": "Who propounded the theory that Earth revolves around the Sun?", "answer": "Nicolaus Copernicus in 1543 (heliocentric theory)."},
  {"question": "Who discovered the circulation of blood?", "answer": "William Harvey in 1628 (blood circulates continuously through the body)."},
  {"question": "Who studied the diffusion of gases?", "answer": "Thomas Graham in 1830s–1840s (Graham’s law of diffusion)."},
  {"question": "Who first isolated a gene?", "answer": "Herbert Boyer and Stanley Cohen in 1973 (first gene cloned using recombinant DNA)."},
  {"question": "Who deciphered the genetic code?", "answer": "Har Gobind Khorana (1960s–70s) – synthesized first artificial gene and decoded codons. Nobel Prize 1968."},
  {"question": "Who discovered insulin?", "answer": "Frederick Banting and Charles Best in 1921 (isolated insulin to treat diabetes)."},
  {"question": "Who invented the internal combustion engine?", "answer": "Nikolaus Otto in 1876 (four-stroke engine)."},
  {"question": "Who invented the Diesel engine?", "answer": "Rudolf Diesel in 1897 (compression-ignition engine)."}
]

  ''';

  late List<dynamic> quizItems;
  List<bool> _expanded = [];

  @override
  void initState() {
    super.initState();
    quizItems = json.decode(jsonData);
    _expanded = List<bool>.filled(quizItems.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventions & Discoveries'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: quizItems.length,
          itemBuilder: (context, index) {
            final item = quizItems[index];
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 3),
                  )
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  setState(() {
                    _expanded[index] = !_expanded[index];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['question'],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(height: 8),
                      AnimatedCrossFade(
                        firstChild: const SizedBox.shrink(),
                        secondChild: Text(
                          item['answer'],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        crossFadeState: _expanded[index]
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 300),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          _expanded[index]
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

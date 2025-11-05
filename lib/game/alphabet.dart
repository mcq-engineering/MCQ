import 'package:flutter/material.dart';

class KidsLearningGame extends StatefulWidget {
  const KidsLearningGame({super.key});

  @override
  State<KidsLearningGame> createState() => _KidsLearningGameState();
}

class _KidsLearningGameState extends State<KidsLearningGame> {
  int currentIndex = 0;

  final List<Map<String, dynamic>> letters = [
    {'letter': 'A', 'emoji': '🍎', 'word': 'Apple', 'color': Colors.red.shade200},
    {'letter': 'B', 'emoji': '⚽', 'word': 'Ball', 'color': Colors.blue},
    {'letter': 'C', 'emoji': '🐱', 'word': 'Cat', 'color': Colors.orange},
    {'letter': 'D', 'emoji': '🐶', 'word': 'Dog', 'color': Colors.green},
    {'letter': 'E', 'emoji': '🐘', 'word': 'Elephant', 'color': Colors.purple},
    {'letter': 'F', 'emoji': '🐟', 'word': 'Fish', 'color': Colors.teal},
    {'letter': 'G', 'emoji': '🍇', 'word': 'Grapes', 'color': Colors.deepPurple},
    {'letter': 'H', 'emoji': '🎩', 'word': 'Hat', 'color': Colors.brown},
    {'letter': 'I', 'emoji': '🍦', 'word': 'Ice Cream', 'color': Colors.pink},
    {'letter': 'J', 'emoji': '🧃', 'word': 'Juice', 'color': Colors.orangeAccent},
    {'letter': 'K', 'emoji': '🪁', 'word': 'Kite', 'color': Colors.lightBlue},
    {'letter': 'L', 'emoji': '🦁', 'word': 'Lion', 'color': Colors.amber},
    {'letter': 'M', 'emoji': '🐒', 'word': 'Monkey', 'color': Colors.deepOrange},
    {'letter': 'N', 'emoji': '🪹', 'word': 'Nest', 'color': Colors.green},
    {'letter': 'O', 'emoji': '🍊', 'word': 'Orange', 'color': Colors.deepOrangeAccent},
    {'letter': 'P', 'emoji': '🦜', 'word': 'Parrot', 'color': Colors.greenAccent},
    {'letter': 'Q', 'emoji': '👑', 'word': 'Queen', 'color': Colors.purpleAccent},
    {'letter': 'R', 'emoji': '🐰', 'word': 'Rabbit', 'color': Colors.grey},
    {'letter': 'S', 'emoji': '☀️', 'word': 'Sun', 'color': Colors.yellow},
    {'letter': 'T', 'emoji': '🐯', 'word': 'Tiger', 'color': Colors.orange},
    {'letter': 'U', 'emoji': '☂️', 'word': 'Umbrella', 'color': Colors.indigo},
    {'letter': 'V', 'emoji': '🎻', 'word': 'Violin', 'color': Colors.redAccent},
    {'letter': 'W', 'emoji': '⌚', 'word': 'Watch', 'color': Colors.blueAccent},
    {'letter': 'X', 'emoji': '🎵', 'word': 'Xylophone', 'color': Colors.cyan},
    {'letter': 'Y', 'emoji': '🐃', 'word': 'Yak', 'color': Colors.brown},
    {'letter': 'Z', 'emoji': '🦓', 'word': 'Zebra', 'color': Colors.black87},
  ];

  void nextLetter() {
    setState(() {
      currentIndex = (currentIndex + 1) % letters.length;
    });
  }

  void previousLetter() {
    setState(() {
      currentIndex = (currentIndex - 1 + letters.length) % letters.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final current = letters[currentIndex];
    return Scaffold(
      backgroundColor: current['color'].withOpacity(0.15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              current['letter'],
              style: TextStyle(
                fontSize: 180, // Big Letter
                fontWeight: FontWeight.bold,
                color: current['color'],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              current['emoji'],
              style: const TextStyle(
                fontSize: 150, // Big Emoji
              ),
            ),
            const SizedBox(height: 30),
            Text(
              current['word'],
              style: const TextStyle(
                fontSize: 70,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: previousLetter,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20)),
                  child: const Icon(Icons.arrow_left, size: 60),
                ),
                const SizedBox(width: 60),
                ElevatedButton(
                  onPressed: nextLetter,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20)),
                  child: const Icon(Icons.arrow_right, size: 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



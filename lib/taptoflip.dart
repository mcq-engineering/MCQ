import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class MemoryMatchScreen extends StatefulWidget {
  const MemoryMatchScreen({super.key});

  @override
  State<MemoryMatchScreen> createState() => _MemoryMatchScreenState();
}

class _MemoryMatchScreenState extends State<MemoryMatchScreen> {
  int gridSize = 2; // default grid 2x2
  late List<String> cards;
  late List<bool> cardFlipped;
  late List<bool> cardMatched;
  int? firstFlippedIndex;
  int pairsFound = 0;
  int moves = 0;
  int secondsPassed = 0;
  Timer? gameTimer;
  late ConfettiController _confettiController;

  final List<String> baseCards = [
    "🐶", "🐱", "🦊", "🐸", "🐵", "🐼", "🦁", "🐨",
    "🐯", "🐰", "🦄", "🐷", "🐹", "🐻", "🐔", "🐤"
  ]; // enough cards for 6x6 max (18 pairs = 36 tiles)

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));
    _initializeGame();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    gameTimer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    gameTimer?.cancel();
    secondsPassed = 0;
    gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        secondsPassed += 1;
      });
    });
  }

  void _initializeGame({int? size}) {
    gridSize = size ?? gridSize;

    // Ensure total tiles is even
    int totalTiles = gridSize * gridSize;
    if (totalTiles % 2 != 0) {
      throw Exception("Grid size must result in an even number of tiles!");
    }

    int neededPairs = totalTiles ~/ 2;

    cards = List.from(baseCards.take(neededPairs))
      ..addAll(baseCards.take(neededPairs));
    cards.shuffle(Random());

    cardFlipped = List.filled(totalTiles, false);
    cardMatched = List.filled(totalTiles, false);
    firstFlippedIndex = null;
    pairsFound = 0;
    moves = 0;
    _startTimer();
    setState(() {});
  }

  void _flipCard(int index) {
    if (cardFlipped[index] || cardMatched[index]) return;

    setState(() {
      cardFlipped[index] = true;
    });

    if (firstFlippedIndex == null) {
      firstFlippedIndex = index;
    } else {
      moves += 1;
      int secondIndex = index;

      if (cards[firstFlippedIndex!] == cards[secondIndex]) {
        // Match found
        cardMatched[firstFlippedIndex!] = true;
        cardMatched[secondIndex] = true;
        pairsFound += 1;
        firstFlippedIndex = null;

        if (pairsFound == gridSize * gridSize ~/ 2) {
          // All pairs found → confetti
          _confettiController.play();
          gameTimer?.cancel();
        }
      } else {
        // Not a match → flip back after 1 sec
        Timer(const Duration(seconds: 1), () {
          setState(() {
            cardFlipped[firstFlippedIndex!] = false;
            cardFlipped[secondIndex] = false;
            firstFlippedIndex = null;
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardSize = (screenWidth - 20 - gridSize * 10) / gridSize;

    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text("Memory Match Game"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.grid_on),
            onSelected: (value) => _initializeGame(size: value),
            itemBuilder: (context) => [
              for (int i in [2, 4, 6])
                PopupMenuItem(value: i, child: Text("$i x $i Grid")),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Pairs Found: $pairsFound / ${gridSize * gridSize ~/ 2}   Moves: $moves   Time: $secondsPassed s",
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),

              // --- Card Grid ---
              Expanded(
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: gridSize * gridSize,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridSize,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _flipCard(index),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            decoration: BoxDecoration(
                              color: cardFlipped[index] || cardMatched[index]
                                  ? Colors.white
                                  : Colors.pinkAccent.shade100,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: const Offset(2, 2),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Center(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                transitionBuilder: (child, animation) =>
                                    ScaleTransition(scale: animation, child: child),
                                child: cardFlipped[index] || cardMatched[index]
                                    ? Text(
                                  cards[index],
                                  key: ValueKey(cards[index]),
                                  style: TextStyle(
                                    fontSize: cardSize * 0.5,
                                  ),
                                )
                                    : const SizedBox.shrink(
                                  key: ValueKey("hidden"),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              // --- Restart Button ---
              GestureDetector(
                onTap: () => _initializeGame(),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.pinkAccent, Colors.pink],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.5),
                        offset: const Offset(2, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Restart Game",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // --- Confetti ---
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [Colors.green, Colors.pink, Colors.yellow, Colors.blue],
              numberOfParticles: 30,
            ),
          ),
        ],
      ),
    );
  }
}

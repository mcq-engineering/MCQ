import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CatchTheStarGame extends StatefulWidget {
  const CatchTheStarGame({super.key});

  @override
  State<CatchTheStarGame> createState() => _CatchTheStarGameState();
}

class _CatchTheStarGameState extends State<CatchTheStarGame>
    with SingleTickerProviderStateMixin {
  double playerX = 0.0;
  double playerY = 0.0;
  double starX = 0.5;
  double starY = 0.5;
  int score = 0;
  final double moveStep = 0.1;
  final Random random = Random();

  Color starColor = Colors.yellow;
  Color playerColor = Colors.pink;

  late AnimationController _starController;
  late Animation<double> _starScale;

  @override
  void initState() {
    super.initState();

    // Star pulse animation
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _starScale = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(parent: _starController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  void movePlayer(String direction) {
    setState(() {
      if (direction == 'left' && playerX > -1) playerX -= moveStep;
      if (direction == 'right' && playerX < 1) playerX += moveStep;
      if (direction == 'up' && playerY > -1) playerY -= moveStep;
      if (direction == 'down' && playerY < 1) playerY += moveStep;
      checkCollision();
    });
  }

  void checkCollision() {
    if ((playerX - starX).abs() < 0.1 && (playerY - starY).abs() < 0.1) {
      setState(() {
        score++;
        // Move star to new random position
        starX = random.nextDouble() * 2 - 1;
        starY = random.nextDouble() * 2 - 1;
        // Change colors randomly
        starColor = getRandomColor();
        playerColor = getRandomColor();
      });

      _starController.forward(from: 0); // pop animation
    }
  }

  Color getRandomColor() {
    // Generate a bright random color
    return Color.fromARGB(
      255,
      100 + random.nextInt(156), // avoid too dark colors
      100 + random.nextInt(156),
      100 + random.nextInt(156),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) movePlayer('left');
        if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) movePlayer('right');
        if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) movePlayer('up');
        if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) movePlayer('down');
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: Stack(
          children: [
            // Animated star
            AnimatedAlign(
              alignment: Alignment(starX, starY),
              duration: const Duration(milliseconds: 300),
              child: ScaleTransition(
                scale: _starScale,
                child: Icon(Icons.star, color: starColor, size: 60),
              ),
            ),
            // Animated player
            AnimatedAlign(
              alignment: Alignment(playerX, playerY),
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: Icon(
                Icons.sentiment_satisfied,
                color: playerColor,
                size: 80,
              ),
            ),
            // Score display
            Align(
              alignment: const Alignment(0, -0.95),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '⭐ Score: $score ⭐',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

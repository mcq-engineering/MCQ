import 'package:flutter/material.dart';

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  int gridSize = 3;
  late List<String> board;
  String currentPlayer = 'X';
  String winner = '';
  List<int> winningTiles = []; // store winning block indexes

  @override
  void initState() {
    super.initState();
    board = List.filled(gridSize * gridSize, '');
  }

  void changeGridSize(int size) {
    setState(() {
      gridSize = size;
      board = List.filled(gridSize * gridSize, '');
      currentPlayer = 'X';
      winner = '';
      winningTiles = [];
    });
  }

  void resetGame() {
    setState(() {
      board = List.filled(gridSize * gridSize, '');
      currentPlayer = 'X';
      winner = '';
      winningTiles = [];
    });
  }

  void playMove(int index) {
    if (board[index] == '' && winner == '') {
      board[index] = currentPlayer;

      if (checkWinner(currentPlayer)) {
        winner = currentPlayer;
      } else if (!board.contains('')) {
        winner = 'Draw';
      } else {
        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
      }
      setState(() {});
    }
  }

  bool checkWinner(String player) {
    winningTiles = [];

    // Rows
    for (int r = 0; r < gridSize; r++) {
      List<int> row = List.generate(gridSize, (i) => r * gridSize + i);
      if (row.every((index) => board[index] == player)) {
        winningTiles = row;
        return true;
      }
    }

    // Columns
    for (int c = 0; c < gridSize; c++) {
      List<int> col = List.generate(gridSize, (i) => i * gridSize + c);
      if (col.every((index) => board[index] == player)) {
        winningTiles = col;
        return true;
      }
    }

    // Diagonal top-left → bottom-right
    List<int> diag1 = List.generate(gridSize, (i) => i * gridSize + i);
    if (diag1.every((index) => board[index] == player)) {
      winningTiles = diag1;
      return true;
    }

    // Diagonal top-right → bottom-left
    List<int> diag2 = List.generate(gridSize, (i) => i * gridSize + (gridSize - 1 - i));
    if (diag2.every((index) => board[index] == player)) {
      winningTiles = diag2;
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Tic Tac Toe",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.grid_on,color: Colors.white,),
            onSelected: (value) => changeGridSize(value),
            itemBuilder: (context) => [
              for (int i = 3; i <= 6; i++)
                PopupMenuItem(value: i, child: Text("$i x $i Grid")),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          Text(
            winner == ''
                ? "Turn: Player $currentPlayer"
                : winner == 'Draw'
                ? "It's a Draw!"
                : "Player $winner Wins!",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: winner == ''
                  ? (currentPlayer == 'X' ? Colors.white : Colors.redAccent)
                  : (winner == 'X'
                  ? Colors.white
                  : winner == 'O'
                  ? Colors.redAccent
                  : Colors.black),
            ),
          ),
          const SizedBox(height: 12),

          // Centered Grid
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double blockSize = constraints.maxWidth / gridSize;
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: gridSize * gridSize,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridSize,
                      ),
                      itemBuilder: (context, index) {
                        bool isWinningBlock = winningTiles.contains(index);
                        return GestureDetector(
                          onTap: () => playMove(index),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: isWinningBlock
                                  ? Colors.yellowAccent
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: const Offset(2, 2),
                                    blurRadius: 6)
                              ],
                            ),
                            child: Center(
                              child: AnimatedScale(
                                scale: board[index] == '' ? 0 : 1,
                                duration: const Duration(milliseconds: 300),
                                child: Text(
                                  board[index],
                                  style: TextStyle(
                                    fontSize: blockSize * 0.6,
                                    fontWeight: FontWeight.bold,
                                    color: board[index] == 'X'
                                        ? Colors.blue
                                        : Colors.redAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: resetGame,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.5),
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

          const SizedBox(height: 18),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'candy_tile.dart';
import '../models/game_board.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  _GameBoardState createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late GameBoardModel _gameBoard;

  @override
  void initState() {
    super.initState();
    _gameBoard = GameBoardModel(rows: 8, cols: 8);
    _gameBoard.initializeBoard();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _gameBoard.rows * _gameBoard.cols,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (context, index) {
        int row = index ~/ 8;
        int col = index % 8;
        return CandyTile(candy: _gameBoard.board[row][col]);
      },
    );
  }
}

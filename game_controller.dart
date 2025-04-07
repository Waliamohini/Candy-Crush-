import '../models/game_board.dart';

class GameController {
  final GameBoardModel board;

  GameController({required this.board});

  void swapCandies(int row1, int col1, int row2, int col2) {
    var temp = board.board[row1][col1];
    board.board[row1][col1] = board.board[row2][col2];
    board.board[row2][col2] = temp;
  }

  void checkForMatches() {
    // Implement match checking logic here.
  }
}

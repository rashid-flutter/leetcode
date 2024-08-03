class Solution {
  List<List<int>> gameOfLife(List<List<int>> board) {
     int m = board.length;
  int n = board[0].length;

  // Directions for the 8 neighbors
  List<List<int>> directions = [
    [-1, -1], [-1, 0], [-1, 1],
    [0, -1],         [0, 1],
    [1, -1], [1, 0], [1, 1]
  ];

  // Helper function to count live neighbors
  int countLiveNeighbors(List<List<int>> board, int row, int col) {
    int count = 0;
    for (List<int> direction in directions) {
      int newRow = row + direction[0];
      int newCol = col + direction[1];
      if (newRow >= 0 && newRow < m && newCol >= 0 && newCol < n && (board[newRow][newCol] == 1 || board[newRow][newCol] == -1)) {
        count++;
      }
    }
    return count;
  }

  // Traverse the board and apply the rules of the game
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      int liveNeighbors = countLiveNeighbors(board, i, j);

      // Rule 1 or Rule 3
      if (board[i][j] == 1 && (liveNeighbors < 2 || liveNeighbors > 3)) {
        board[i][j] = -1; // Mark as -1 to indicate the cell was live but now dead
      }

      // Rule 4
      if (board[i][j] == 0 && liveNeighbors == 3) {
        board[i][j] = 2; // Mark as 2 to indicate the cell was dead but now live
      }
    }
  }

  // Update the board to the next state
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      if (board[i][j] == -1) {
        board[i][j] = 0;
      } else if (board[i][j] == 2) {
        board[i][j] = 1;
      }
    }
  }

  return board;
  }
}
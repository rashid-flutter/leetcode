class Solution {
  bool isValidSudoku(List<List<String>> board) {
    List<Set<String>> rows = List.generate(9, (_) => <String>{});
  List<Set<String>> cols = List.generate(9, (_) => <String>{});
  List<Set<String>> boxes = List.generate(9, (_) => <String>{});

  // Iterate through each cell in the board
  for (int i = 0; i < 9; i++) {
    for (int j = 0; j < 9; j++) {
      String num = board[i][j];

      // If the cell is not empty
      if (num != '.') {
        // Calculate box index
        int boxIndex = (i ~/ 3) * 3 + (j ~/ 3);

        // Check if the number is already in the row, column, or box
        if (rows[i].contains(num) || cols[j].contains(num) || boxes[boxIndex].contains(num)) {
          return false;
        }

        // Add the number to the corresponding row, column, and box sets
        rows[i].add(num);
        cols[j].add(num);
        boxes[boxIndex].add(num);
      }
    }
  }

  // If no duplicates are found, the board is valid
  return true;
  }
}
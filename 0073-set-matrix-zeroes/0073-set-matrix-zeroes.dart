class Solution {
  void setZeroes(List<List<int>> matrix) {
    int m = matrix.length;
  int n = matrix[0].length;
  bool firstRowZero = false;
  bool firstColZero = false;

  // Determine if the first row or first column should be zeroed
  for (int i = 0; i < m; i++) {
    if (matrix[i][0] == 0) {
      firstColZero = true;
      break;
    }
  }

  for (int j = 0; j < n; j++) {
    if (matrix[0][j] == 0) {
      firstRowZero = true;
      break;
    }
  }

  // Use first row and column to mark zero rows and columns
  for (int i = 1; i < m; i++) {
    for (int j = 1; j < n; j++) {
      if (matrix[i][j] == 0) {
        matrix[i][0] = 0;
        matrix[0][j] = 0;
      }
    }
  }

  // Zero out marked rows and columns
  for (int i = 1; i < m; i++) {
    if (matrix[i][0] == 0) {
      for (int j = 1; j < n; j++) {
        matrix[i][j] = 0;
      }
    }
  }

  for (int j = 1; j < n; j++) {
    if (matrix[0][j] == 0) {
      for (int i = 1; i < m; i++) {
        matrix[i][j] = 0;
      }
    }
  }

  // Zero out the first row and first column if needed
  if (firstRowZero) {
    for (int j = 0; j < n; j++) {
      matrix[0][j] = 0;
    }
  }

  if (firstColZero) {
    for (int i = 0; i < m; i++) {
      matrix[i][0] = 0;
    }
  }
  }
}
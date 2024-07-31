class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
     if (matrix.isEmpty) return [];

  int top = 0;
  int bottom = matrix.length - 1;
  int left = 0;
  int right = matrix[0].length - 1;

  List<int> result = [];

  while (top <= bottom && left <= right) {
    // Traverse from left to right along the top row
    for (int i = left; i <= right; i++) {
      result.add(matrix[top][i]);
    }
    top++;

    // Traverse from top to bottom along the right column
    for (int i = top; i <= bottom; i++) {
      result.add(matrix[i][right]);
    }
    right--;

    // Traverse from right to left along the bottom row, if there's still a row left
    if (top <= bottom) {
      for (int i = right; i >= left; i--) {
        result.add(matrix[bottom][i]);
      }
      bottom--;
    }

    // Traverse from bottom to top along the left column, if there's still a column left
    if (left <= right) {
      for (int i = bottom; i >= top; i--) {
        result.add(matrix[i][left]);
      }
      left++;
    }
  }

  return result;
  }
}
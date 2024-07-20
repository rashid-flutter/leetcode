class Solution {
  List<List<int>> restoreMatrix(List<int> rowSum, List<int> colSum) {
    int numRows = rowSum.length;
  int numCols = colSum.length;
  List<List<int>> matrix = List.generate(numRows, (_) => List.filled(numCols, 0));

  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      int minVal = rowSum[i] < colSum[j] ? rowSum[i] : colSum[j];
      matrix[i][j] = minVal;
      rowSum[i] -= minVal;
      colSum[j] -= minVal;
    }
  }

  return matrix;
  }
}
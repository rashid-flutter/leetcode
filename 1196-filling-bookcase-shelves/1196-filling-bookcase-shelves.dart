class Solution {
  int minHeightShelves(List<List<int>> books, int shelfWidth) {
    int n = books.length;
  List<int> dp = List.filled(n + 1, 1000 * 1000); // Use a large number for initialization
  dp[0] = 0;

  for (int i = 1; i <= n; i++) {
    int width = 0;
    int height = 0;
    for (int j = i; j > 0; j--) {
      width += books[j - 1][0];
      if (width > shelfWidth) break;
      height = max(height, books[j - 1][1]);
      dp[i] = min(dp[i], dp[j - 1] + height);
    }
  }

  return dp[n];
  }
}
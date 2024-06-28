class Solution {
  int maximumImportance(int n, List<List<int>> roads) {
     List<int> degree = List<int>.filled(n, 0);
  for (var road in roads) {
    degree[road[0]]++;
    degree[road[1]]++;
  }
    List<int> sortedCities = List<int>.generate(n, (i) => i);
  sortedCities.sort((a, b) => degree[b] - degree[a]);
  List<int> values = List<int>.filled(n, 0);
  for (int i = 0; i < n; i++) {
    values[sortedCities[i]] = n - i;
  }
  int totalImportance = 0;
  for (var road in roads) {
    totalImportance += values[road[0]] + values[road[1]];
  }
  
  return totalImportance;
  }
}
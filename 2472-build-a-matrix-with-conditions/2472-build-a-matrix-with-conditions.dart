import "dart:collection";
class Solution {
 List<int> topologicalSort(int n, List<List<int>> conditions) {
  List<List<int>> graph = List.generate(n + 1, (_) => []);
  List<int> inDegree = List.filled(n + 1, 0);
  
  for (var condition in conditions) {
    graph[condition[0]].add(condition[1]);
    inDegree[condition[1]]++;
  }
  
  Queue<int> queue = Queue<int>();
  for (int i = 1; i <= n; i++) {
    if (inDegree[i] == 0) {
      queue.add(i);
    }
  }
  
  List<int> result = [];
  while (queue.isNotEmpty) {
    int node = queue.removeFirst();
    result.add(node);
    for (int neighbor in graph[node]) {
      inDegree[neighbor]--;
      if (inDegree[neighbor] == 0) {
        queue.add(neighbor);
      }
    }
  }
  
  return result.length == n ? result : [];
}

List<List<int>> buildMatrix(int k, List<List<int>> rowConditions, List<List<int>> colConditions) {
  List<int> rowOrder = topologicalSort(k, rowConditions);
  List<int> colOrder = topologicalSort(k, colConditions);
  
  if (rowOrder.isEmpty || colOrder.isEmpty) {
    return [];
  }
  
  Map<int, int> rowPosition = {};
  Map<int, int> colPosition = {};
  
  for (int i = 0; i < k; i++) {
    rowPosition[rowOrder[i]] = i;
    colPosition[colOrder[i]] = i;
  }
  
  List<List<int>> matrix = List.generate(k, (_) => List.filled(k, 0));
  for (int i = 1; i <= k; i++) {
    int? rowPos = rowPosition[i];
    int? colPos = colPosition[i];
    if (rowPos != null && colPos != null) {
      matrix[rowPos][colPos] = i;
    }
  }
  
  return matrix;
}


}
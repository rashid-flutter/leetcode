class Solution {
  int findCenter(List<List<int>> edges) {
    int u=edges[0][0];
    int v=edges[0][1];
     if (edges[1][0] == u || edges[1][1] == u) {
    return u;
  } else {
    return v;
  }
  }
}
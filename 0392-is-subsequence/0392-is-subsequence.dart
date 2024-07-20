class Solution {
  bool isSubsequence(String s, String t) {
    int sPointer = 0;
  int tPointer = 0;

  while (sPointer < s.length && tPointer < t.length) {
    if (s[sPointer] == t[tPointer]) {
      sPointer++;
    }
    tPointer++;
  }

  return sPointer == s.length;
  }
}
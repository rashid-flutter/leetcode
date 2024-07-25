class Solution {
  String minWindow(String s, String t) {
    if (s.isEmpty || t.isEmpty) return "";

  Map<String, int> tFreq = {};
  for (int i = 0; i < t.length; i++) {
    tFreq[t[i]] = (tFreq[t[i]] ?? 0) + 1;
  }

  Map<String, int> windowFreq = {};
  int have = 0, need = tFreq.length;
  int left = 0, right = 0;
  int minLen = s.length + 1;
  int minLeft = 0;

  while (right < s.length) {
    String rightChar = s[right];
    windowFreq[rightChar] = (windowFreq[rightChar] ?? 0) + 1;

    if (tFreq.containsKey(rightChar) && windowFreq[rightChar] == tFreq[rightChar]) {
      have++;
    }

    while (have == need) {
      if ((right - left + 1) < minLen) {
        minLen = right - left + 1;
        minLeft = left;
      }

      String leftChar = s[left];
      windowFreq[leftChar] = windowFreq[leftChar]! - 1;
      if (tFreq.containsKey(leftChar) && windowFreq[leftChar]! < tFreq[leftChar]!) {
        have--;
      }
      left++;
    }
    right++;
  }

  return minLen == s.length + 1 ? "" : s.substring(minLeft, minLeft + minLen);
  }
}
class Solution {
  int lengthOfLongestSubstring(String s) {
     int n = s.length;
  int maxLength = 0;
  int start = 0;
  Set<String> charSet = {};

  for (int end = 0; end < n; end++) {
    while (charSet.contains(s[end])) {
      charSet.remove(s[start]);
      start++;
    }
    charSet.add(s[end]);
    maxLength = maxLength > (end - start + 1) ? maxLength : (end - start + 1);
  }

  return maxLength;

  }
}
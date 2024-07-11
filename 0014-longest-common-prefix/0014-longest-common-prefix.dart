class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

  // Sort the array
  strs.sort();

  // Take the first and the last string
  String first = strs.first;
  String last = strs.last;

  // Compare characters of the first and last string
  int i = 0;
  while (i < first.length && i < last.length && first[i] == last[i]) {
    i++;
  }

  // The common prefix
  return first.substring(0,i);
  }
}
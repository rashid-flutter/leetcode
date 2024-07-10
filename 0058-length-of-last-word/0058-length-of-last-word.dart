class Solution {
  int lengthOfLastWord(String s) {
    // Trim any trailing spaces from the string
  s = s.trim();
  
  // Split the string by spaces
  List<String> words = s.split(' ');
  
  // Return the length of the last word in the list
  return words.last.length;
  }
}
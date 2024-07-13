class Solution {
  String reverseWords(String s) {
     s = s.trim();

  // Step 2: Split the string by one or more spaces
  List<String> words = s.split(RegExp(r'\s+'));

  // Step 3: Reverse the list of words
  words = words.reversed.toList();

  // Step 4: Join the words with a single space
  String reversedString = words.join(' ');

  return reversedString;
  }
}
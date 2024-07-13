class Solution {
  List<String> fullJustify(List<String> words, int maxWidth) {
    List<String> result = [];
  List<String> currentLine = [];
  int currentLineLength = 0;

  for (String word in words) {
    if (currentLineLength + currentLine.length + word.length > maxWidth) {
      for (int i = 0; i < maxWidth - currentLineLength; i++) {
        currentLine[i % (currentLine.length - 1 == 0 ? 1 : currentLine.length - 1)] += ' ';
      }
      result.add(currentLine.join(''));
      currentLine = [];
      currentLineLength = 0;
    }
    currentLine.add(word);
    currentLineLength += word.length;
  }

  result.add(currentLine.join(' ') + ' ' * (maxWidth - currentLineLength - (currentLine.length - 1)));

  return result;
  }
}
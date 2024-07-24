class Solution {
  List<int> findSubstring(String s, List<String> words) {
    if (s.isEmpty || words.isEmpty) return [];

  final wordLength = words[0].length;
  final wordsCount = words.length;
  final wordsMap = <String, int>{};
  for (final word in words) {
    wordsMap[word] = (wordsMap[word] ?? 0) + 1;
  }

  final result = <int>[];
  for (int i = 0; i <= s.length - wordLength * wordsCount; i++) {
    final tempMap = <String, int>{};
    for (int j = 0; j < wordsCount; j++) {
      final word = s.substring(i + j * wordLength, i + (j + 1) * wordLength);
      if (!wordsMap.containsKey(word)) break;
      tempMap[word] = (tempMap[word] ?? 0) + 1;
      if (tempMap[word]! > wordsMap[word]!) break;
      if (j + 1 == wordsCount) result.add(i);
    }
  }

  return result;
  }
}
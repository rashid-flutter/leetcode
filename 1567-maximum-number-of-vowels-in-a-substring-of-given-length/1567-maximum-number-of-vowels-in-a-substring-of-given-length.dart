class Solution {
  int maxVowels(String s, int k) {
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
  int maxVowelCount = 0;
  int currentVowelCount = 0;

  // Count vowels in the first window of size k
  for (int i = 0; i < k; i++) {
    if (vowels.contains(s[i])) {
      currentVowelCount++;
    }
  }

  maxVowelCount = currentVowelCount;

  // Slide the window through the string
  for (int i = k; i < s.length; i++) {
    if (vowels.contains(s[i])) {
      currentVowelCount++;
    }
    if (vowels.contains(s[i - k])) {
      currentVowelCount--;
    }
    maxVowelCount = currentVowelCount > maxVowelCount ? currentVowelCount : maxVowelCount;
  }

  return maxVowelCount;

  }
}
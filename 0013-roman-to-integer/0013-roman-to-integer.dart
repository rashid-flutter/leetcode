class Solution {
  int romanToInt(String s) {
     Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  int result = 0;
  int i = 0;

  while (i < s.length) {
    // If this is the subtractive combination
    if (i < s.length - 1 && romanMap[s[i]]! < romanMap[s[i + 1]]!) {
      result += romanMap[s[i + 1]]! - romanMap[s[i]]!;
      i += 2;
    } else {
      result += romanMap[s[i]]!;
      i++;
    }
  }

  return result;
  }
}
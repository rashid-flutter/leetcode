import 'dart:collection';
class Solution {
  String countOfAtoms(String formula) {
     int n = formula.length;
//   Stack<Map<String, int>> stack = Stack();
List<Map<String, int>> stack = [];
  Map<String, int> currentMap = {};

  int i = 0;
  while (i < n) {
    if (formula[i] == '(') {
      stack.add(currentMap);
      currentMap = {};
      i++;
    } else if (formula[i] == ')') {
      int iStart = ++i, multiplier = 0;
      while (i < n && isDigit(formula[i])) i++;
      if (i > iStart) {
        multiplier = int.parse(formula.substring(iStart, i));
      } else {
        multiplier = 1;
      }

      if (stack.isNotEmpty) {
        Map<String, int> topMap = stack.removeLast();
        currentMap.forEach((element, count) {
          topMap[element] = (topMap[element] ?? 0) + count * multiplier;
        });
        currentMap = topMap;
      }
    } else {
      int iStart = i++;
      while (i < n && isLowerCase(formula[i])) i++;
      String name = formula.substring(iStart, i);
      iStart = i;
      while (i < n && isDigit(formula[i])) i++;
      int count = (i > iStart) ? int.parse(formula.substring(iStart, i)) : 1;
      currentMap[name] = (currentMap[name] ?? 0) + count;
    }
  }

  // Convert map to sorted string
  List<String> sortedElements = currentMap.keys.toList()..sort();
  String result = '';
  for (String element in sortedElements) {
    result += element;
    if (currentMap[element]! > 1) {
      result += currentMap[element].toString();
    }
  }
  return result;
  }
  bool isDigit(String s) {
  return s.codeUnitAt(0) >= '0'.codeUnitAt(0) && s.codeUnitAt(0) <= '9'.codeUnitAt(0);
}

bool isLowerCase(String s) {
  return s.codeUnitAt(0) >= 'a'.codeUnitAt(0) && s.codeUnitAt(0) <= 'z'.codeUnitAt(0);
}
}
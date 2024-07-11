class Solution {
  String reverseParentheses(String s) {
     List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    if (s[i] == ')') {
      List<String> temp = [];
      while (stack.isNotEmpty && stack.last != '(') {
        temp.add(stack.removeLast());
      }
      if (stack.isNotEmpty && stack.last == '(') {
        stack.removeLast();
      }
      stack.addAll(temp);
    } else {
      stack.add(s[i]);
    }
  }

  return stack.join('');
  }
}
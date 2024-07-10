class Solution {
  int minOperations(List<String> logs) {
    // Initialize a stack to keep track of folder navigation
  List<String> stack = [];

  // Process each log entry
  for (String log in logs) {
    if (log == '../') {
      if (stack.isNotEmpty) {
        stack.removeLast(); // Move to the parent folder
      }
    } else if (log != './') {
      stack.add(log); // Move to a child folder
    }
    // No action needed for "./" since it means remain in the same folder
  }

  // The size of the stack represents the depth of the current folder from the main folder
  return stack.length;
  }
}
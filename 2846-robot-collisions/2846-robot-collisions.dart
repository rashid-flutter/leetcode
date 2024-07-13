class Solution {
  List<int> survivedRobotsHealths(List<int> positions, List<int> healths, String directions) {
int n = positions.length;
  List<int> indices = List<int>.generate(n, (i) => i);
  
  // Sort indices based on positions
  indices.sort((a, b) => positions[a] - positions[b]);

  List<int> stack = [];
  List<int> remainingHealths = List<int>.from(healths);

  for (int index in indices) {
    int currentHealth = remainingHealths[index];
    String currentDirection = directions[index];
    
    if (currentDirection == 'R') {
      stack.add(index);
    } else {
      while (stack.isNotEmpty) {
        int lastIndex = stack.last;
        if (remainingHealths[lastIndex] > currentHealth) {
          remainingHealths[lastIndex] -= 1;
          currentHealth = 0;
          break;
        } else if (remainingHealths[lastIndex] < currentHealth) {
          currentHealth -= 1;
          remainingHealths[lastIndex] = 0;
          stack.removeLast();
        } else {
          remainingHealths[lastIndex] = 0;
          currentHealth = 0;
          stack.removeLast();
          break;
        }
      }
      remainingHealths[index] = currentHealth;
    }
  }

  // Collect the remaining healths of robots in the original order
  List<int> result = [];
  for (int i = 0; i < n; i++) {
    if (remainingHealths[i] > 0) {
      result.add(remainingHealths[i]);
    }
  }

  return result;
  }
}
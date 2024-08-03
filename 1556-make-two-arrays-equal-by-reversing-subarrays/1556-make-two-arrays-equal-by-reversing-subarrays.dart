class Solution {
  bool canBeEqual(List<int> target, List<int> arr) {
     if (target.length != arr.length) {
    return false;
  }

  // Sort both arrays
  target.sort();
  arr.sort();

  // Compare the sorted arrays
  for (int i = 0; i < target.length; i++) {
    if (target[i] != arr[i]) {
      return false;
    }
  }
  
  return true;
  }
}
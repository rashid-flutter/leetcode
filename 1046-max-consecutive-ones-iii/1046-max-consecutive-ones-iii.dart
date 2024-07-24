class Solution {
  int longestOnes(List<int> nums, int k) {
    int left = 0, right = 0, maxOnes = 0, zeros = 0;
  
  while (right < nums.length) {
    if (nums[right] == 0) zeros++;
    
    while (zeros > k) {
      if (nums[left] == 0) zeros--;
      left++;
    }
    
    maxOnes = max(maxOnes, right - left + 1);
    right++;
  }
  
  return maxOnes;
  }
}
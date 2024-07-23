class Solution {
  int minSubArrayLen(int target, List<int> nums) {
     int n = nums.length;
  int minLength = n + 1;
  int currentSum = 0;
  int start = 0;

  for (int end = 0; end < n; end++) {
    currentSum += nums[end];

    while (currentSum >= target) {
      minLength = (end - start + 1).clamp(1, minLength);
      currentSum -= nums[start];
      start++;
    }
  }

  return minLength == n + 1 ? 0 : minLength;

  }
}
class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int n = nums.length;

  // Calculate the sum of the first window
  double windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += nums[i];
  }

  double maxAverage = windowSum / k;

  // Slide the window through the array
  for (int i = k; i < n; i++) {
    windowSum += nums[i] - nums[i - k];
    double currentAverage = windowSum / k;
    if (currentAverage > maxAverage) {
      maxAverage = currentAverage;
    }
  }

  return maxAverage;
  }
}
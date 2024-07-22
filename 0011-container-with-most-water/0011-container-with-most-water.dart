class Solution {
  int maxArea(List<int> height) {
     int maxArea = 0;
  int left = 0;
  int right = height.length - 1;

  while (left < right) {
    int minHeight = height[left] < height[right] ? height[left] : height[right];
    int area = minHeight * (right - left);
    maxArea = maxArea < area ? area : maxArea;

    if (height[left] < height[right]) {
      left++;
    } else {
      right--;
    }
  }

  return maxArea;
  }
}
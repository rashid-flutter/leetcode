class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
  List<int> answer = List.filled(n, 1);

  // Calculate prefix products
  int prefixProduct = 1;
  for (int i = 0; i < n; i++) {
    answer[i] = prefixProduct;
    prefixProduct *= nums[i];
  }

  // Calculate suffix products and the final result
  int suffixProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    answer[i] *= suffixProduct;
    suffixProduct *= nums[i];
  }

  return answer;
  }
}
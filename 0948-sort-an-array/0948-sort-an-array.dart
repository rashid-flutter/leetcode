class Solution {
 void quickSort(List<int> nums) {
  if (nums.isEmpty) return;

  List<int> stack = [];
  stack.add(0);
  stack.add(nums.length - 1);

  while (stack.isNotEmpty) {
    int high = stack.removeLast();
    int low = stack.removeLast();

    int pi = partition(nums, low, high);

    if (pi - 1 > low) {
      stack.add(low);
      stack.add(pi - 1);
    }

    if (pi + 1 < high) {
      stack.add(pi + 1);
      stack.add(high);
    }
  }
}

int partition(List<int> nums, int low, int high) {
  int pivotIndex = medianOfThree(nums, low, high);
  swap(nums, pivotIndex, high);  // Move pivot to end
  int pivot = nums[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (nums[j] < pivot) {
      i++;
      swap(nums, i, j);
    }
  }
  swap(nums, i + 1, high);
  return i + 1;
}

int medianOfThree(List<int> nums, int low, int high) {
  int mid = low + (high - low) ~/ 2;

  if (nums[low] > nums[mid]) swap(nums, low, mid);
  if (nums[low] > nums[high]) swap(nums, low, high);
  if (nums[mid] > nums[high]) swap(nums, mid, high);

  return mid;
}
void swap(List<int> nums, int i, int j) {
  int temp = nums[i];
  nums[i] = nums[j];
  nums[j] = temp;
}

List<int> sortArray(List<int> nums) {
  quickSort(nums);
  return nums;
}
}
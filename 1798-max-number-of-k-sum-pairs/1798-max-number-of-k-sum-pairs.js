/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maxOperations = function(nums, k) {
     nums.sort((a, b) => a - b);
    let left = 0, right = nums.length - 1, count = 0;

    while (left < right) {
        if (nums[left] + nums[right] === k) {
            count++;
            left++;
            right--;
        } else if (nums[left] + nums[right] < k) {
            left++;
        } else {
            right--;
        }
    }

    return count;
};
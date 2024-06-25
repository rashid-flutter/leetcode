/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numberOfSubarrays = function(nums, k) {
     return atMostK(nums, k) - atMostK(nums, k - 1);
    
};
function atMostK(nums, k) {
    let count = 0;
    let left = 0;
    let oddCount = 0;

    for (let right = 0; right < nums.length; right++) {
        if (nums[right] % 2 === 1) {
            oddCount++;
        }

        while (oddCount > k) {
            if (nums[left] % 2 === 1) {
                oddCount--;
            }
            left++;
        }

        count += right - left + 1;
    }

    return count;
}
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var frequencySort = function(nums) {
     const freqMap = new Map();
    nums.forEach(num => {
        freqMap.set(num, (freqMap.get(num) || 0) + 1);
    });

    // Step 2: Convert the map to an array of entries
    const entries = [...freqMap.entries()];

    // Step 3: Sort the entries based on frequency and value
    entries.sort((a, b) => {
        if (a[1] === b[1]) {
            return b[0] - a[0]; // Sort by value in decreasing order
        } else {
            return a[1] - b[1]; // Sort by frequency in increasing order
        }
    });

    // Step 4: Flatten the sorted entries back into the result array
    const result = [];
    entries.forEach(([num, freq]) => {
        for (let i = 0; i < freq; i++) {
            result.push(num);
        }
    });

    return result;
};
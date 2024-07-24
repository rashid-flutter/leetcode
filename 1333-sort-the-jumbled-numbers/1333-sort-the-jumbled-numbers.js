/**
 * @param {number[]} mapping
 * @param {number[]} nums
 * @return {number[]}
 */
var sortJumbled = function(mapping, nums) {
    const mappedNums = nums.map(num => {
        const numStr = num.toString();
        const mappedStr = numStr.split('').map(digit => mapping[parseInt(digit)].toString()).join('');
        const mappedNum = parseInt(mappedStr);
        return { originalValue: num, mappedValue: mappedNum };
    });

    mappedNums.sort((a, b) => a.mappedValue - b.mappedValue);

    return mappedNums.map(mappedNum => mappedNum.originalValue);
};
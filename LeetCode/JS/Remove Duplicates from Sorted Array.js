//  https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/

/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
    if (nums.length == 0) { return 0 }
    let result = 1
    let leftPointer = 0
    let rightPointer = 1
    
    while (rightPointer < nums.length) {
        if (nums[leftPointer] == nums[rightPointer]) {
            rightPointer++
        } else {
            result++
            leftPointer++
            nums[leftPointer] = nums[rightPointer]
            rightPointer++
        }   
    }

    return result
};

var nums = [1,1,3,4,4,4,4,4,4,5,6,7]

console.log(removeDuplicates(nums))
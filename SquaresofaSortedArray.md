# Squares of a Sorted Array
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

Solution:


```Swift
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var sortedNums = nums
        for i in 0...nums.count-1 {
            sortedNums[i] = nums[i] * nums[i]
        }
        sortedNums.sort()
        return sortedNums
    }
}
```

https://leetcode.com/problems/squares-of-a-sorted-array/

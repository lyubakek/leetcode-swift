# Largest Number At Least Twice of Others

You are given an integer array nums where the largest integer is unique.

Determine whether the largest element in the array is at least twice as much as every other number in the array. If it is, return the index of the largest element, or return -1 otherwise.


Solution:

```Swift
class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var largestNum = 0
        var largestIndex = 0
        
        for i in 0...nums.count - 1 {
            if nums[i] > largestNum {
                largestNum = nums[i]
                largestIndex = i
            }
        }
        
        var largestHalf = largestNum / 2
        
        for i in 0...nums.count - 1 {
            if i != largestIndex && nums[i] > largestHalf {
                return -1
            }
        }
        return largestIndex
    }
}
```

https://leetcode.com/explore/learn/card/array-and-string/201/introduction-to-array/1147/

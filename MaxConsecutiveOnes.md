# Max Consecutive Ones

Given a binary array nums, return the maximum number of consecutive 1's in the array.

Solution:

```Swift
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var current = 0
        
        for i in 0...nums.count - 1 {
            if nums[i] == 1 {
                current += 1 
                if current > max {
                    max = current
                }
            } else {
                current = 0
            }
        } 
        return max
    }
}
```

https://leetcode.com/problems/max-consecutive-ones/

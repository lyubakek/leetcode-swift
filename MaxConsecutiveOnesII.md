# Max Consecutive Ones II

Given a binary array nums, return the maximum number of consecutive 1's in the array if you can flip at most one 0.


Solution:

```Swift
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var maxOnes = 1
        var currentOnes = 0
        var leftPointer = 0 
        var rightPointer = 0
        var currentZeros = 0
        
        for i in 0...nums.count - 1 {
            if nums[i] == 0 {
                currentZeros += 1
                rightPointer += 1
                currentOnes += 1
            } else if nums[i] == 1 {
                currentOnes += 1
                rightPointer += 1
            }
            
            if currentZeros > 1 {
                if nums[leftPointer] == 0 {
                    currentZeros -= 1
                }
                leftPointer += 1
                currentOnes -= 1
            }
            
            if currentOnes > maxOnes {
                maxOnes = currentOnes
            }
        }
        return maxOnes
    }
}
```

https://leetcode.com/problems/max-consecutive-ones-ii/

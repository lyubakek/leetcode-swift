# Sort Array By Parity

Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

Return any array that satisfies this condition.

Solution:

```Swift
class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        
        if nums.count == 1 {
            return nums
        }
        
        var numsCopy = nums
        var leftPointer = 0
        var length = numsCopy.count - 1
        
        while leftPointer < length {
            if numsCopy[leftPointer] % 2 == 0 {
                leftPointer += 1
            } else {
                var tmp = numsCopy[leftPointer]
                numsCopy[leftPointer] = numsCopy[length]
                numsCopy[length] = tmp
                length -= 1
            }
        }
        return numsCopy
    }
}
```

https://leetcode.com/problems/sort-array-by-parity/

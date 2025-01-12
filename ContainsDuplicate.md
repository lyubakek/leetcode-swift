# Contains Duplicate

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Solution in 2025:

```Swift
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var unique = Set<Int>()
        for i in 0...nums.count - 1 {
            if unique.contains(nums[i]) {
                return true
            } else {
                unique.insert(nums[i])
            }
        }
        return false
    }
}
```

Solution previous:

```Swift
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var unique: Set<Int> = []
        for num in nums {
            if unique.contains(num) {
                return true
            } else {
                unique.insert(num)
            }
        }
        return false
    }
}
```

https://leetcode.com/problems/contains-duplicate/

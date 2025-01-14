# Search Insert Position

Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.

Solution:

``` Swift
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var current = nums[0]
        for i in 0...nums.count - 1 {
            if target == nums[i] {
                return i
            } else if target > nums[i] {
                current = nums[i]
            } else if target < nums[i] && target > current {
                return i
            } else if target < nums[i] {
                return 0
            }
        }
        return nums.count
    }
}
```

https://leetcode.com/problems/search-insert-position/

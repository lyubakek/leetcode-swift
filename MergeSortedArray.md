# Merge Sorted Array

You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

Merge nums1 and nums2 into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

Solution:

```Swift
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var length = m + n - 1
        var indexN = n - 1
        var indexM = m - 1
        
        while indexN >= 0 && indexM >= 0 {
            if nums1[indexM] > nums2[indexN] {
                nums1[length] = nums1[indexM]
                indexM -= 1
            } else {                 
                nums1[length] = nums2[indexN]
                indexN -= 1
            } 
            length -= 1
        }
        
        while indexN >= 0 {
            nums1[length] = nums2[indexN]
            indexN -= 1
            length -= 1
        }
    }
}
```
Solution 2:

```Swift
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var indexRight = n - 1
        var indexLeft = m - 1
        
        while indexRight >= 0 {
            if indexRight < 0 {
                takeLeft()
            } else if indexLeft < 0 {
                takeRight()
            } else {
                if nums1[indexLeft] > nums2[indexRight] {
                    takeLeft()
                } else {
                    takeRight()
                }
            }
        }
        
        func takeLeft() {
            nums1[indexLeft + indexRight + 1] = nums1[indexLeft]
            indexLeft -= 1
        }
        
        func takeRight() {
            nums1[indexLeft + indexRight + 1] = nums2[indexRight]
            indexRight -= 1
        }
    }
}
```

https://leetcode.com/problems/merge-sorted-array/

# Duplicate Zeros

Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.

Solution:

```Swift
class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var length = arr.count - 1
        var i = 0
        
        while i < length {
            if arr[i] == 0 {
                var j = length
                while j > i {
                    arr[j] = arr[j - 1]
                    j -= 1
                }
                i += 1
            }
            i += 1
        }
    }
}
```

[https://leetcode.com/problems/height-checker/](https://leetcode.com/problems/duplicate-zeros/)

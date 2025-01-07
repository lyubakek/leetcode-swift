# Valid Mountain Array
Given an array of integers arr, return true if and only if it is a valid mountain array.

Recall that arr is a mountain array if and only if:

- arr.length >= 3
- There exists some i with 0 < i < arr.length - 1 such that:

  arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
  
  arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
![image](https://github.com/user-attachments/assets/bf486c45-eea0-4f78-8792-7a69006f0667)


Solution:

```Swift
class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        var length = arr.count - 1
        var top = 0
        
        while top < length && arr[top] < arr[top + 1] {
            top += 1
        }
        
        if top == 0 || top == length {
            return false
        }
        
        while top < length && arr[top] > arr[top + 1] {
            top += 1
        }
        
        return top == length
    }
}
```

https://leetcode.com/problems/valid-mountain-array/

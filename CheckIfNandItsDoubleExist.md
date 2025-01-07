# Check If N and Its Double Exist

Given an array arr of integers, check if there exist two indices i and j such that :

- i != j
- 0 <= i, j < arr.length
- arr[i] == 2 * arr[j]


Solution:

```Swift
class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var uniqueElements = Set<Int>()
        
        for i in 0...arr.count - 1 {
            if uniqueElements.contains(arr[i] * 2) {
                return true
            } else if arr[i] % 2 == 0 && uniqueElements.contains(arr[i] / 2) {
                return true
            } else {
                uniqueElements.insert(arr[i])
            }
        }
        return false
    }
}
```

https://leetcode.com/problems/check-if-n-and-its-double-exist/

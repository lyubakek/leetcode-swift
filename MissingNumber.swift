// Question link: https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        
        if sorted[sorted.count - 1] != sorted.count {
            return sorted.count
        }
        
        var index = 0
        while index == sorted[index] {
            index += 1
        }
        return index
    }
}

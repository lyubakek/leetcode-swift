// Question link: https://leetcode.com/problems/third-maximum-number/

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max = 0
        var numsCopy = Array(Set(nums))
        numsCopy.sort()

        if numsCopy.count <= 2 {
            max = numsCopy[numsCopy.count-1]
        } else {
           max = numsCopy[numsCopy.count-3]
        }
        return max
    }
}


// Runtime: 24 ms, faster than 99.31% of Swift online submissions for Third Maximum Number.

class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var numsCopy = Set(nums)
        
        if numsCopy.count < 3 {
            return numsCopy.max()!
        }
        
        if numsCopy.count == 3 {
            return numsCopy.min()!
        }
        
        for i in 0...1 {
            numsCopy.remove(numsCopy.max()!)
        }
        return numsCopy.max()!
    }
}

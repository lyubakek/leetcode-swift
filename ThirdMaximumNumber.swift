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

// Question link: https://leetcode.com/problems/move-zeroes/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {        
        var i = 0
        var length = nums.count - 1
        while i < length {
            if nums[i] == 0 {
                let j = i
                for k in j...length-1 {
                    nums[k] = nums[k+1]
                }
                nums[length] = 0
                i -= 1
                length -= 1
            }
            i += 1
        }
    }
}

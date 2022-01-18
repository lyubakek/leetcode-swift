// Question link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 || nums.count == 1 {
            return nums.count
        }
    
        var current = 1
        
        for i in 1...nums.count-1 {
            if nums[i-1] != nums[i] {
                nums[current] = nums[i]
                current += 1
            }
        }
        return current
    }
}

// Question link: https://leetcode.com/problems/remove-element/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        var first = 0
        var last = nums.count - 1
        
        while first <= last {
            if nums[first] == val {
                nums[first] = nums[last]
                nums.removeLast()
                last -= 1
            } else {
                first += 1
            }
        }
        return nums.count
    }
}


// another solution, without removing element

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var first = 0
        var last = nums.count
        
        while first < last {
            if nums[first] == val {
                nums[first] = nums[last - 1]
                last -= 1
            } else {
                first += 1
            }
        }
        return last
    }
}

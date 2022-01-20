// Question link: https://leetcode.com/problems/contains-duplicate/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var unique: Set<Int> = []
        for num in nums {
            if unique.contains(num) {
                return true
            } else {
                unique.insert(num)
            }
        }
        return false
    }
}

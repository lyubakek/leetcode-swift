// Question link: https://leetcode.com/problems/single-number/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var set: Set<Int> = []
        
        for i in nums {
            if set.contains(i) {
                set.remove(i)
            } else {
                set.insert(i)
            }
        }
        return set.first!
    }
}

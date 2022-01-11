// Question link: https://leetcode.com/problems/plus-one/


class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var result = digits
        let length = result.count
        
        for i in (0..<length).reversed() {
            if result[i] == 9 {
                result[i] = 0
            } else {
                result[i] = result[i] + 1
                return result
            }
        }
        if result.first == 0 {
            result.insert(1, at: 0)
        }
        return result
    }
}

// Question link: https://leetcode.com/problems/length-of-last-word/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var sCopy = s
        
        while sCopy.last == " " {
            sCopy.removeLast()
        }
        
        var result = 0
        
        for item in sCopy.reversed() {
            if item == " " {
                break
            }
            result += 1
        }
        return result
    }
}

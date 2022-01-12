// Question link: https://leetcode.com/problems/palindrome-number/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0  || (x % 10 == 0 && x != 0) {
            return false
        }
        var reversedNumber = 0
        var xCopy = x
        while xCopy > reversedNumber {
            reversedNumber = reversedNumber * 10 + xCopy % 10
            xCopy = xCopy / 10
        }
        return xCopy == reversedNumber || xCopy == reversedNumber / 10
    }
}

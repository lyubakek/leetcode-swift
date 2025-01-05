// Question link: https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var countEvenNumbers = 0
        var digits = 0
        for i in 0...nums.count - 1 {
            var currentNumber = nums[i]
            while currentNumber >= 1 {
                currentNumber = currentNumber / 10 
                digits += 1
            }
            if digits % 2 == 0 {
                countEvenNumbers += 1
            }
            digits = 0
        }
        return countEvenNumbers
    }
}

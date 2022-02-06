// Question link: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func romanToInt(_ s: String) -> Int {
        let arrayRoman: [String : Int] = ["I" : 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        
        var result = 0
        var carry = 0
        
        for i in s {
            let number = arrayRoman["\(i)"]!
            
            if number > carry {
                result = result + (number - 2 * carry)
            } else {
                result += number
            }
            carry = number
        }
        return result
    }
}


// Another solution

class Solution {
    func romanToInt(_ s: String) -> Int {
        
        let arrayRoman: [String : Int] = ["I" : 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        
        var result = 0
        var prev = 0
        var i = s.endIndex

        while i > s.startIndex {
            i = s.index(before: i)
            let current = arrayRoman["\(s[i])"] ?? 0
            if current < prev {
                result -= current
            } else {
                result += current
            }
            prev = current
        }
        return result
    }
}

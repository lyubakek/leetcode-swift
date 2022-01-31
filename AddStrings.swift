// Question link: https://leetcode.com/problems/add-strings/

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        
        var firstNum = Array(num1)
        var secondNum = Array(num2)
        var carry = 0
        var result: String = ""
        
        while !firstNum.isEmpty || !secondNum.isEmpty {
            let valueFirst = firstNum.isEmpty ? "0" : firstNum.removeLast()
            let valueSecond = secondNum.isEmpty ? "0" : secondNum.removeLast()
            let sum = Int(String(valueFirst))! + Int(String(valueSecond))! + carry
            
            result.append("\(sum%10)")
            carry = sum / 10
        }
        
        if carry != 0 {
            result.append("\(carry)")
        }
        return String(result.reversed())
    }
}

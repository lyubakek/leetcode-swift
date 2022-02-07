// Question link: https://leetcode.com/problems/integer-to-roman/

class Solution {
    func intToRoman(_ num: Int) -> String {
        
        let dictRoman: [Int : String] = [1 :"I", 5: "V", 10 : "X", 50 : "L", 100 : "C", 500 : "D", 1000 : "M", 4 : "IV", 9 : "IX", 40 : "XL", 90 : "XC", 400 : "CD", 900 : "CM"]
        let keyValue = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        
        var numCopy = num
        var result = ""
        
        for i in keyValue {
            let tmp = dictRoman[numCopy] ?? nil
            if tmp == nil {
                var order = numCopy / i
                while order > 0 {
                    result.append(dictRoman[i]!)
                    order -= 1
                    numCopy = numCopy % i
                }
            } else if tmp != nil {
                result.append(tmp!)
                numCopy = numCopy - i
            }
        }
        return result
    }
}

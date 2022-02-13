// Question link: https://leetcode.com/problems/find-the-difference/

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let sChar = Array(s)
        let tChar = Array(t)
        var sDict: [Character : Int] = [:]
        var tDict: [Character : Int] = [:]
        
        for i in sChar {
            var value = sDict[i] ?? 0
            value += 1
            sDict.updateValue(value, forKey: i)
        }
        for i in tChar {
            var value = tDict[i] ?? 0
            value += 1
            tDict.updateValue(value, forKey: i)
        }        
        for (key, value) in tDict {
            if value != sDict[key] {
                return key
            }
        }
        return ""
    }
}

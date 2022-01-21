// Question link: https://leetcode.com/problems/first-unique-character-in-a-string/

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dictionary = [Character: Int]()
        var index = 0
      
        for elem in s {
            let value = dictionary[elem]
            if value != nil || value == -1{
                dictionary[elem] = -1
            } else {
                dictionary[elem] = index
            }
            index += 1
        }
        
        for elem in s {
            if let value = dictionary[elem], value != -1 {
                return value
            }
        }
        return -1
    }
}

// Question link: https://leetcode.com/problems/valid-parentheses/

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        
        var items = [Character]()
        
        for element in s {
            if element == "(" || element == "[" || element == "{" {
                items.append(element)
            } else {
                if !items.isEmpty {
                    if element == ")" && items.last == "("  ||
                        element == "]" && items.last == "[" ||
                        element == "}" && items.last == "{" {
                        items.removeLast()
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        return items.isEmpty
    }
}

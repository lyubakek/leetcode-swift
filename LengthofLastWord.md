# Length of Last Word

Given a string s consisting of words and spaces, return the length of the last word in the string.

A word is a maximal substring consisting of non-space characters only.

Solution:

``` Swift
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        var i = s.count - 1
        var chars = Array(s)

        while i >= 0 && chars[i] == " " {
            i -= 1
        }

        while i >= 0 && chars[i] != " " {
            length += 1
            i -= 1
        }
        return length
    }
}
```

https://leetcode.com/problems/length-of-last-word/

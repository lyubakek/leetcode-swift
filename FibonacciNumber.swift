// Question link: https://leetcode.com/problems/fibonacci-number/

class Solution {
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        
        var result = 0
        
        result = fib(n - 1) + fib(n - 2)
        
        return result
    }
}

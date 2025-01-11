# Climbing Stairs

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?




Solution:

```Swift
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var currentStep = 0
        var steps = 1
        for i in 1...n {
            let nextStep = currentStep + steps
            currentStep = steps
            steps = nextStep
        }
        return steps
    }
}
```

https://leetcode.com/problems/height-checker/

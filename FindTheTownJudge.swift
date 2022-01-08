// Question link: https://leetcode.com/problems/find-the-town-judge/

class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {

        if trust.count < n - 1 {
            return -1
        }
        
        var people: [Int] = Array(repeating: 0, count: n)
        
        for pair in trust {
            let who = pair[0]
            people[who - 1] = -1
            
            let whom = pair[1]
            people[whom - 1] += 1
        }
        
        if let judge = people.firstIndex(of: n-1) {
            return judge + 1
        }
        return -1
    }
}

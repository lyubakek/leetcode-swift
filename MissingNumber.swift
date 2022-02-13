// Question link: https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        
        if sorted[sorted.count - 1] != sorted.count {
            return sorted.count
        }
        
        var index = 0
        while index == sorted[index] {
            index += 1
        }
        return index
    }
}

// solution using set

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let set: Set<Int> = Set(nums)
        
        for i in 0...set.count {
            if !set.contains(i) {
                return i
            }
        }
        return 0
    }
}

// faster solution using sum

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sumActual = nums.reduce(0, +)
        var sumExpected = 0
        
        for i in 0...nums.count {
            sumExpected += i
        }
        return sumExpected - sumActual
    }
}

// using Gauss formula

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sumActual = nums.reduce(0, +)
        let sumExpected = nums.count * (nums.count + 1) / 2
        return sumExpected - sumActual
    }
}

// one line solution

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        return (nums.count * (nums.count + 1) / 2) - nums.reduce(0, +)
    }
}

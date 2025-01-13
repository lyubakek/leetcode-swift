# Best Time To Buy And Sell Stock 

You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.



Solution in 2025:

```Swift
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        
        var minPrice = prices[0]
        var maxProfit = 0

        for i in 1...prices.count - 1 {
            var currentProfit = prices[i] - minPrice
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
            if currentProfit > maxProfit {
                maxProfit = currentProfit
            }
        }
        return maxProfit
    }
}
```







Previous Solutions:


// Question link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

``` Swift
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1 {
            return 0
        }
      
        var maxProfit = 0
        var minPrice = prices[0]
      
        for currentPrice in prices {
            let profit = currentPrice - minPrice
            if currentPrice < minPrice {
                minPrice = currentPrice
            } else if (profit > maxProfit) {
                maxProfit = profit
            }
        }
        return maxProfit
    }
}
```




// Question link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
``` Swift
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1 {
            return 0
        }
        
        var maxprofit = 0;
        
        for i in 1...prices.count - 1 {
            let currentPrice = prices[i]
            let previousPrice = prices[i-1]
            if (currentPrice > previousPrice) {
                maxprofit += currentPrice - previousPrice
            }
        }
        return maxprofit
    }
}
```

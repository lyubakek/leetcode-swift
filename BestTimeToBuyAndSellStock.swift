// Question link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

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

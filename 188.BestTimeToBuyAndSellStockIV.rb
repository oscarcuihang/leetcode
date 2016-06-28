# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete at most k transactions.

# Note:
# You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
    
    return helper(prices) if prices.size <= k
    
    hold = Array.new(k + 1, -prices[0])
    sell = Array.new(k + 1, 0)
    
    prices.each do |price|
        1.upto(k) do |kth|
          hold[kth] = [hold[kth], sell[kth - 1] - price].max
          sell[kth] = [sell[kth], hold[kth] + price].max
        end
    end
    
    sell[k]
end


def helper(prices) 
    n = prices.size
    return 0 if n < 2
    max = 0
    
    0.upto(n-2) do |i|
        max += (prices[i+1] - prices[i]) if (prices[i+1]-prices[i] )> 0
    end
    max
end
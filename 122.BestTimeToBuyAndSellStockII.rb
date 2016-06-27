# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like 
# (ie, buy one and sell one share of the stock multiple times). 
# However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    n = prices.size
    return 0 if n < 2
    max = 0
    
    0.upto(n-2) do |i|
        max += (prices[i+1] - prices[i]) if (prices[i+1]-prices[i] )> 0
    end
    max
end
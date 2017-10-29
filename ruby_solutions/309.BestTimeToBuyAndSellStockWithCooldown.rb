# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like 
# (ie, buy one and sell one share of the stock multiple times) with the following restrictions:

# You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
# After you sell your stock, you cannot buy stock on next day. (ie, cooldown 1 day)
# Example:

# prices = [1, 2, 3, 0, 2]
# maxProfit = 3
# transactions = [buy, sell, cooldown, buy, sell]

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    n = prices.size
    buy = Array.new
    sell = Array.new
    
    sell[0] = 0
    sell[1] = [0,prices[1] - prices[0]].max
    buy[0] = -prices[0]
    buy[1] = [-prices[0],-prices[1]].max
    
    for i in 2...n
    puts prices[i]
        sell[i] = [sell[i - 1], buy[i - 1] + prices[i]].max
        buy[i] = [buy[i - 1], sell[i - 2] - prices[i]].max
    end
end
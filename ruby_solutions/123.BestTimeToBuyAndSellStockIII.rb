# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete at most two transactions.

# Note:
# You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    n = prices.size
    return 0 if n < 2
    left = []
    
    min = prices[0]
    maxleft = 0
    1.upto(n-1) do |i|
        if prices[i] < min
            min = prices[i]
        else
            maxleft = [maxleft, prices[i]-min].max
        end
        left[i] = maxleft
    end
    
    maxprofit = left[n-1]
    max = prices[n-1]
    maxright = 0
    
    (n-2).downto(1) do |i|
        if prices[i] > max
            max = prices[i]
        else
            maxright = [maxright, max-prices[i]].max
        end
        maxprofit = [maxprofit, maxright+left[i]].max
    end
    
    maxprofit
    
end
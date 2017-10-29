# Given a positive integer n, break it into the sum of at least two positive integers and 
# maximize the product of those integers. Return the maximum product you can get.

# For example, given n = 2, return 1 (2 = 1 + 1); given n = 10, return 36 (10 = 3 + 3 + 4).

# Note: you may assume that n is not less than 2.

# Hint:

# There is a simple O(n) solution to this problem.
# You may check the breaking results of n ranging from 7 to 10 to discover the regularities.

# @param {Integer} n
# @return {Integer}

def integer_break(n)
    return n - 1 if n == 2 || n == 3
    res = 1
    while n > 4
        res *= 3
        n -= 3
    end
    res * n
end

# 2  = 1 + 1
# 3  = 2 + 1
# 4  = 2 + 4
# 5  = 3 + 2
# 6  = 3 + 3
# 7  = 3 + 4
# 8  = 3 + 3 + 2
# 9  = 3 + 3 + 3
# 10 = 3 + 3 + 4
# .....
